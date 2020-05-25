//
//  QuakeResults.h
//  Quakes-Objc
//
//  Created by Jessie Ann Griffin on 5/25/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Quake;

NS_ASSUME_NONNULL_BEGIN

@interface QuakeResults : NSObject

- (instancetype)initWithQuakes:(NSArray<Quake *> *)quakes NS_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, readonly, copy) NSArray<Quake *> *quakes;

@end

NS_ASSUME_NONNULL_END
