//
//  appTableViewController.m
//  Paul Dippold
//
//  Created by Paul Dippold on 4/13/14.
//  Copyright (c) 2014 Paul Dippold. All rights reserved.
//

#import "appTableViewController.h"

@interface appTableViewController ()

@end

@implementation appTableViewController
#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    if ( IDIOM == IPAD ) {
        self.navigationController.view.backgroundColor =
        [UIColor colorWithPatternImage:[UIImage imageNamed:@"back2.JPG"]];
        self.tableView.backgroundColor = [UIColor clearColor];
    } else {
        self.navigationController.view.backgroundColor =
        [UIColor colorWithPatternImage:[UIImage imageNamed:@"back.JPG"]];
        self.tableView.backgroundColor = [UIColor clearColor];
    }
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

    
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor clearColor];
    cell.contentView.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
