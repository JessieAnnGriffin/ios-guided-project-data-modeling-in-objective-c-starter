//
//  FirstResponder.m
//  Quakes-Objc
//
//  Created by Jessie Ann Griffin on 5/25/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "FirstResponder.h"

@implementation FirstResponder

@synthesize name = _name; // the equals sign here is not assigning but specifying that _name is connected to the name property

- (void)setName:(NSString *)name
{
    // willSet
    _name = name.copy; // same as [name copy];
    // didSet

}

- (NSString *)name
{
    return _name;
}

@end
