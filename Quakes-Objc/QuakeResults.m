//
//  QuakeResults.m
//  Quakes-Objc
//
//  Created by Jessie Ann Griffin on 5/25/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "QuakeResults.h"
#import "Quake.h"

@implementation QuakeResults

- (instancetype)initWithQuakes:(NSArray<Quake *> *)quakes
{
    if (self = [super init]) {
        _quakes = quakes.copy;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSArray *quakeDicitonaries = [dictionary objectForKey:@"features"];
    if (![quakeDicitonaries isKindOfClass:[NSArray class]]) return nil;

    NSMutableArray *quakes = [[NSMutableArray alloc] initWithCapacity:quakeDicitonaries.count];

    for (NSDictionary *quakeDictionary in quakeDicitonaries) {
        if (![quakeDictionary isKindOfClass:[NSArray class]]) continue;

        Quake *quake = [[Quake alloc] initWithDictionary:quakeDictionary];
        if (quake) {
            [quakes addObject:quake];
        } else {
            // TODO: One of our "required" fields might be optionsl and we may need to debug this with real data
            NSLog(@"Unable to parse quake dictionary: %@", quakeDictionary);
        }
    }
    return [self initWithQuakes:quakes];
}


@end
