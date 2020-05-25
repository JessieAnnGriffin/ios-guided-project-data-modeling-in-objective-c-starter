//
//  ViewController.m
//  Quakes-Objc
//
//  Created by Paul Solt on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "LSILog.h"
#import "FirstResponder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"Hey Quakes");

    FirstResponder *firstResponder = [[FirstResponder alloc] init];
    NSLog(@"firstResponder: %@", firstResponder);
    NSLog(@"firstResponder.name: %@", firstResponder.name);

    firstResponder.name = @"Jessie";
    NSLog(@"firstResponder.name: %@", firstResponder.name);

}


@end
