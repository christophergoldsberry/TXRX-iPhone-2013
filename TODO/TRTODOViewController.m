//
//  TRTODOViewController.m
//  TODO
//
//  Created by quantum on 6/22/13.
//  Copyright (c) 2013 TXRX. All rights reserved.
//

#import "TRTODOViewController.h"

@implementation TRTODOViewController

- (id)init {
    self = [self initWithNibName:@"TRTODOViewController" bundle:nil];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tasks = [NSMutableArray array];
    
    for (int i = 0; i < 5; i++) {
        NSString *task = [NSString stringWithFormat:@"Task %d", i];
        [self.tasks addObject:task];
    }
    
    [self.tableView reloadData];
    
    UIBarButtonItem *newButton = [[UIBarButtonItem alloc] initWithTitle:@"New" style:UIBarButtonItemStyleDone target:self action:@selector(newTapped)];
    self.navigationItem.rightBarButtonItem = newButton;
}

- (void)newTapped {
    TRNewTaskViewController *vc = [[TRNewTaskViewController alloc] initWithNibName:@"TRNewTaskViewController" bundle:nil];
    vc.delegate = self;
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nc animated:true completion:^{}];
}

#pragma mark UITableViewDelegate

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return true;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tasks removeObjectAtIndex:indexPath.row];
    [self.tableView reloadData];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tasks.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *taskIdentifier = @"TaskIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:taskIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:taskIdentifier];
    }
    NSString *task = self.tasks[indexPath.row];
    cell.textLabel.text = task;
    
    return cell;
}

#pragma TRNewTaskDelegate

- (void)taskAdded:(NSString *)newTask {
    [self dismissViewControllerAnimated:true completion:^{}];
    [self.tasks addObject:newTask];
    [self.tableView reloadData];
}

- (void)taskAddingCancelled {
    [self dismissViewControllerAnimated:true completion:^{}];
}


@end
