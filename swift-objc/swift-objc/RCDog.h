//
//  RCDog.h
//  swift-objc
//
//  Created by art on 2014.07.1.
//  Copyright (c) 2014 rimbaudcode. All rights reserved.
//

@import Foundation.NSObject;
@import Foundation.NSString;

@interface RCDog : NSObject

@property NSString *name;

- (instancetype)initWithName:(NSString *)aName;
- (NSString *)greet;

@end
