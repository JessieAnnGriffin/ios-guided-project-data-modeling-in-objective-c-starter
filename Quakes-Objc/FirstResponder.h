//
//  FirstResponder.h
//  Quakes-Objc
//
//  Created by Jessie Ann Griffin on 5/25/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstResponder : NSObject

@property (nonatomic, copy) NSString *name;
/*
 Setter:
 - (void)setName:(NSString *)aName;

 Getter
 - (NSString *)name;

 Instance variable (in the class's @interface
 NSString *_name;
 */


@end

NS_ASSUME_NONNULL_END
