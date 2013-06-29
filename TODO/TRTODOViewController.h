//
//  TRTODOViewController.h
//  TODO
//
//  Created by quantum on 6/22/13.
//  Copyright (c) 2013 TXRX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRNewTaskViewController.h"

@interface TRTODOViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, TRNewTaskDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray *tasks;

@end
