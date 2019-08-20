//
//  CMSEntry.h
//  Journal-C
//
//  Created by Apps on 8/19/19.
//  Copyright © 2019 Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMSEntry : NSObject

// Properties

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *bodyText;
@property (nonatomic, copy) NSDate *timeStamp;

-(instancetype) initWithTile:(NSString *)title bodyText:(NSString *)bodyText;

-(NSMutableDictionary *) dictionaryCopy;

-(instancetype) initWithDictionary:(NSMutableDictionary<NSString *, id>*)dictionary;

@end

NS_ASSUME_NONNULL_END
