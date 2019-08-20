//
//  CMSEntryController.h
//  Journal-C
//
//  Created by Apps on 8/19/19.
//  Copyright © 2019 Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CMSEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface CMSEntryController : NSObject

// S.O.T & Shared Instance
@property (nonatomic, strong) NSMutableArray *entries;
+ (CMSEntryController *) shared;

-(void)addEntry:(NSString *)title bodyText:(NSString *)bodyText;
-(void)removeEntry:(CMSEntry *)entry;
-(void)updateEntry:(CMSEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
