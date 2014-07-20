//
//  NSArray+ITRandomSelection.m
//  ITWordPuzzle
//
//  Created by David Szep on 2014.07.20..
//  Copyright (c) 2014 David Szep. All rights reserved.
//

#import "NSArray+ITRandomSelection.h"

@implementation NSArray (ITRandomSelection)

- (id)randomObject {
    return (self.count) ? [self objectAtIndex:arc4random_uniform(self.count)] : nil;
}

@end
