//
//  CMSEntryDetailViewController.h
//  Journal-C
//
//  Created by Apps on 8/19/19.
//  Copyright © 2019 Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CMSEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface CMSEntryDetailViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *entryTitleTectField;
@property (weak, nonatomic) IBOutlet UITextView *entryBodyTextView;


@property (nonatomic, strong) CMSEntry *entryLandingPad;

- (IBAction)saveButtonTapped:(id)sender;
- (IBAction)clearButtonTapped:(id)sender;


- (void)updateViewWithEntry:(CMSEntry *)entry;

@end

NS_ASSUME_NONNULL_END
