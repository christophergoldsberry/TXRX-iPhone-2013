//
//  TRFirstViewController.m
//  TODO
//
//  Created by quantum on 6/22/13.
//  Copyright (c) 2013 TXRX. All rights reserved.
//

#import "TRFirstViewController.h"
#import "TRTODOViewController.h"

@implementation TRFirstViewController

- (id)init {
    self = [self initWithNibName:@"TRFirstViewController" bundle:nil];
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)showTodoList {
    TRTODOViewController *vc = [[TRTODOViewController alloc] initWithNibName:@"TRTODOViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:true];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showTodoList];
}

- (IBAction)todoListTapped:(id)sender {
    [self showTodoList];
}

@end
