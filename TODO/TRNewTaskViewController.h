//
//  TRNewTaskViewController.h
//  TODO
//
//  Created by quantum on 6/22/13.
//  Copyright (c) 2013 TXRX. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TRNewTaskDelegate <NSObject>

- (void)taskAdded:(NSString *)newTask;
- (void)taskAddingCancelled;

@end

@interface TRNewTaskViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) id <TRNewTaskDelegate> delegate;

@end
