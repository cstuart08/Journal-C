//
//  CMSEntry.m
//  Journal-C
//
//  Created by Apps on 8/19/19.
//  Copyright © 2019 Apps. All rights reserved.
//

#import "CMSEntry.h"

@implementation CMSEntry

-(instancetype)initWithTile:(NSString *)title bodyText:(NSString *)bodyText {
    
    self = [super init];
    
    if (self) {
        _title = [title copy];
        _bodyText = [bodyText copy];
        _timeStamp = [_timeStamp copy];
    }
    return self;
}

@end
