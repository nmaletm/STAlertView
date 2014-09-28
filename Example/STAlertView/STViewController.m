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
    
    
    self.alertView = [[STAlertView alloc] initWithTitle:@"Super alert view" message:@"I'm a native UIAlertView. Do you think I'm useful?"
             cancelButtonTitle:@"No, ofc" otherButtonTitles:@"Yes a little bit"
             cancelButtonBlock:^{
                 NSLog(@"Why do you think I'm not fancy :_( ");
             } otherButtonBlock:^{
                 NSLog(@"Great! Feel free to contribute or contact me @NestorMalet!");
             }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
