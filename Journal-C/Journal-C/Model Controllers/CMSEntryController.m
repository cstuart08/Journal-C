//
//  CMSEntryController.m
//  Journal-C
//
//  Created by Apps on 8/19/19.
//  Copyright © 2019 Apps. All rights reserved.
//

#import "CMSEntryController.h"

@implementation CMSEntryController

// MARK: Shared Instance
+ (CMSEntryController *) shared {
    static CMSEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [CMSEntryController new];
    });
    return shared;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        _entries = [[NSMutableArray alloc] init];
    }
    return self;
}

// MARK: Methods

// adding
-(void)addEntry:(NSString *)title bodyText:(NSString *)bodyText {
    CMSEntry *newEntry = [[CMSEntry alloc] initWithTile:title bodyText:bodyText];
    [self.entries addObject:newEntry];
}

// removing
-(void)removeEntry:(CMSEntry *)entry {
    NSInteger toRemove = [CMSEntryController.shared.entries indexOfObject:entry];
    [self.entries removeObjectAtIndex:toRemove];
}

// updating
- (void)updateEntry:(CMSEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText {
    entry.title = title;
    entry.bodyText = bodyText;
}

// saving
@end
