//
//  CMSEntryDetailViewController.m
//  Journal-C
//
//  Created by Apps on 8/19/19.
//  Copyright © 2019 Apps. All rights reserved.
//

#import "CMSEntryDetailViewController.h"
#import "CMSEntryController.h"
#import "CMSEntryListTableViewController.h"

@interface CMSEntryDetailViewController ()

@end

@implementation CMSEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _entryTitleTectField.delegate = self;
    if (self.entryLandingPad) {
        [self updateViewWithEntry:self.entryLandingPad];
    }
}

- (void)updateViewWithEntry:(CMSEntry *)entry {
    _entryTitleTectField.text = _entryLandingPad.title;
    _entryBodyTextView.text = _entryLandingPad.bodyText;
}


- (IBAction)saveButtonTapped:(id)sender {
    
    NSString *entryTitle = _entryTitleTectField.text;
    NSString * bodyText = _entryBodyTextView.text;
    
    if (self.entryLandingPad) {
        [CMSEntryController.shared updateEntry:self.entryLandingPad title:entryTitle bodyText:bodyText];
    } else {
        [CMSEntryController.shared addEntry:_entryTitleTectField.text bodyText:_entryBodyTextView.text];
    }
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)clearButtonTapped:(id)sender {
    _entryTitleTectField.text = @"";
    _entryBodyTextView.text = @"";
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
