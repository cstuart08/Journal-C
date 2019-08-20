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

-(NSMutableDictionary *)dictionaryCopy {
    
    // var dictionary: [String:Any] = [:]
    NSMutableDictionary <NSString *, id> *dictionary = [[NSMutableDictionary alloc] init];
    dictionary[@"titleKey"] = self.title;
    dictionary[@"bodyText"] = self.bodyText;
    dictionary[@"timeStamp"] = self.timeStamp;
    
    return dictionary;
}

-(instancetype)initWithDictionary:(NSMutableDictionary<NSString *,id> *)dictionary {
    
    self = [super init];
    
    if (self) {
        _title = dictionary[@"titleKey"];
        _bodyText = dictionary[@"bodyText"];
        _timeStamp = dictionary[@"timeStamp"];
    }
    return self;
}

@end
