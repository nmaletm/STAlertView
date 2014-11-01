//
//  STViewController.m
//  STAlertView
//
//  Created by Nestor on 09/28/2014.
//  Copyright (c) 2014 Nestor. All rights reserved.
//

#import "STViewController.h"


@interface STViewController ()

@end

@implementation STViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}


- (IBAction)showNormalUIAlertView:(id)sender
{
    self.stAlertView = [[[STAlertView alloc] initWithTitle:@"Super alert view"
                                                message:@"I'm a native UIAlertView. Do you think I'm useful?"
                                      cancelButtonTitle:@"No, ofc"
                                       otherButtonTitle:@"Yes a little bit"
                      
                                      cancelButtonBlock:^{
                                          NSLog(@"Why do you think I'm not fancy :_( ");
                                      } otherButtonBlock:^{
                                          NSLog(@"Great! Feel free to contribute or contact me at twitter @NestorMalet!");
                                      }] show];
}


- (IBAction)showTextFieldUIAlertView:(id)sender
{
    self.stAlertView = [[STAlertView alloc] initWithTitle:@"Alert view with a textfield"
                                                message:@"I'm a native UIAlertView with a textfiled."
                                          textFieldHint:@"What do you think about me?"
                                         textFieldValue:nil
                                      cancelButtonTitle:@"Cancel"
                                       otherButtonTitle:@"Store"
                      
                                      cancelButtonBlock:^{
                                          NSLog(@"Please, give me some feedback!");
                                      } otherButtonBlock:^(NSString * result){
                                          NSLog(@" You have said %@, but I can't store it :( . If you want, you can send it to me at hello@nestor.cat or via twitter @NestorMalet!", result);
                                      }];
    
    //You can make any customization to the native UIAlertView
    self.stAlertView.alertView.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [[self.stAlertView.alertView textFieldAtIndex:1] setKeyboardType:UIKeyboardTypeNumbersAndPunctuation];

    [self.stAlertView show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
