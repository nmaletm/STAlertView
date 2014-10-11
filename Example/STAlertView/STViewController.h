//
//  STViewController.h
//  STAlertView
//
//  Created by Nestor on 09/28/2014.
//  Copyright (c) 2014 Nestor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <STAlertView/STAlertView.h>

@interface STViewController : UIViewController


@property (nonatomic, strong) STAlertView *stAlertView;


- (IBAction)showNormalUIAlertView:(id)sender;
- (IBAction)showTextFieldUIAlertView:(id)sender;

@end
