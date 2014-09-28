//
//  STAlertView.m
//  STAlertView
//
//  Created by Nestor on 09/28/2014.
//  Copyright (c) 2014 Nestor. All rights reserved.
//

#import "STAlertView.h"

@implementation STAlertView

- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0 && self.cancelButtonBlock)
        self.cancelButtonBlock();
    else if (buttonIndex == 1 && self.otherButtonBlock)
        self.otherButtonBlock();
    
}

- (void) alertViewCancel:(UIAlertView *)alertView
{
    if (self.cancelButtonBlock)
        self.cancelButtonBlock();
}

- (id) initWithTitle:(NSString*)title message:(NSString*)message
     cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles
     cancelButtonBlock:(STAlertViewBlock)theCancelButtonBlock otherButtonBlock:(STAlertViewBlock)theOtherButtonBlock
{

    self.cancelButtonBlock = [theCancelButtonBlock copy];
    self.otherButtonBlock = [theOtherButtonBlock copy];
    
    [[[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil] show];
    
    return self;
}


@end