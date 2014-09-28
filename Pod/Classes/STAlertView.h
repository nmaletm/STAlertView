//
//  STAlertView.h
//  STAlertView
//
//  Created by Nestor on 09/28/2014.
//  Copyright (c) 2014 Nestor. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^STAlertViewBlock)();

@interface STAlertView : NSObject <UIAlertViewDelegate>

@property(nonatomic, copy) STAlertViewBlock cancelButtonBlock;
@property(nonatomic, copy) STAlertViewBlock otherButtonBlock;

- (id) initWithTitle:(NSString*)title message:(NSString*)message
     cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles
     cancelButtonBlock:(STAlertViewBlock)cancelButtonBlock otherButtonBlock:(STAlertViewBlock)otherButtonBlock;


@end