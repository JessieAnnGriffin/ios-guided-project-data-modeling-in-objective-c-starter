//
//  Quake.h
//  Quakes-Objc
//
//  Created by Jessie Ann Griffin on 5/25/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Quake : NSObject

- (instancetype)initWithMagnitude:(double)magnitude
                            place:(NSString *)place
                             time:(NSDate *)time
                         latitude:(double)latitude
                        longitude:(double)longitude
                            type:(NSString *)type
                            alert:(NSString *)alert NS_DESIGNATED_INITIALIZER;

- (nullable instancetype)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, readonly) double magnitude;
@property (nonatomic, readonly, copy) NSString *place;
@property (nonatomic, readonly) NSDate *time;
@property (nonatomic, readonly) double latitude;
@property (nonatomic, readonly) double longitude;

@property (nonatomic, readonly, copy) NSString *type;
@property (nonatomic, readonly, copy) NSString *alert;

@end

NS_ASSUME_NONNULL_END
