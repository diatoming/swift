//
//  RCDog.m
//  swift-objc
//
//  Created by art on 2014.07.1.
//  Copyright (c) 2014 rimbaudcode. All rights reserved.
//

#import "RCDog.h"

@implementation RCDog

@synthesize name;

- (instancetype)initWithName:(NSString *)aName
{
    if ((self = [super init])) {
        self.name = [aName capitalizedString];
    }
    return self;
}

- (NSString *)greet
{
    return [NSString stringWithFormat:@"Hello, I'm %@.", self.name];
}

@end

