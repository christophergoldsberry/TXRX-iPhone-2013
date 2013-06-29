//
//  TRNewTaskViewController.m
//  TODO
//
//  Created by quantum on 6/22/13.
//  Copyright (c) 2013 TXRX. All rights reserved.
//

#import "TRNewTaskViewController.h"

@implementation TRNewTaskViewController

- (id)init {
    self = [self initWithNibName:@"TRNewTaskViewController" bundle:nil];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleDone target:self action:@selector(saveTapped)];
    
    self.navigationItem.rightBarButtonItem = saveButton;
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStyleDone target:self action:@selector(cancelTapped)];
    
    self.navigationItem.leftBarButtonItem = cancelButton;
}

- (void)saveTapped {
    [self.delegate taskAdded:self.textField.text];
}

- (void)cancelTapped {
    [self.delegate taskAddingCancelled];
}





@end
