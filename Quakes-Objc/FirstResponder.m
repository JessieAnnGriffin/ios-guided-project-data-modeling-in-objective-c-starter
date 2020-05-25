//
//  FirstResponder.m
//  Quakes-Objc
//
//  Created by Jessie Ann Griffin on 5/25/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "FirstResponder.h"

@implementation FirstResponder

- (void)setName:(NSString *)name
{
    // willSet
    _name = name.copy; // same as [name copy];
    // didSet
    
}

@end
