//
//  TSTableViewController.m
//  tableViewCellDelaysContentTouches
//
//  Created by Nicholas Hodapp on 1/31/14.
//  Copyright (c) 2014 Nicholas Hodapp. All rights reserved.
//

#import "TSTableViewController.h"
#import "UITableViewCell+TS_delaysContentTouches.h"

@interface TSTableViewController ()

@end

@implementation TSTableViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.delaysContentTouches = NO;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // using static cells from storyboard...
    UITableViewCell* cell = [super tableView: tableView cellForRowAtIndexPath: indexPath];
    
    cell.ts_delaysContentTouches = NO;
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}



@end
