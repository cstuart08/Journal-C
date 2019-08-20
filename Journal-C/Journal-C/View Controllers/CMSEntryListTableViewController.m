//
//  CMSEntryListTableViewController.m
//  Journal-C
//
//  Created by Apps on 8/19/19.
//  Copyright © 2019 Apps. All rights reserved.
//

#import "CMSEntryListTableViewController.h"
#import "CMSEntryController.h"
#import "CMSEntryDetailViewController.h"

@interface CMSEntryListTableViewController ()

@end

@implementation CMSEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return CMSEntryController.shared.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EntryListCell" forIndexPath:indexPath];
    CMSEntry *entry = CMSEntryController.shared.entries[indexPath.row];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateStyle = NSDateFormatterMediumStyle;
    NSDate *date = [NSDate date];
    NSString *dateStr = [formatter stringFromDate:date];
    
    cell.textLabel.text = entry.title;
    
    cell.detailTextLabel.text = dateStr;
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        CMSEntry *toDelete = CMSEntryController.shared.entries[indexPath.row];
        [CMSEntryController.shared removeEntry:toDelete];
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

//MARK: - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"EditExistingEntry"]) {
        NSIndexPath *indexPathForEntry = [self.tableView indexPathForSelectedRow];
        CMSEntryDetailViewController *destVC = segue.destinationViewController;
        CMSEntry *existingEntry = CMSEntryController.shared.entries[indexPathForEntry.row];
        destVC.entryLandingPad = existingEntry;
    }
}

@end
