//
//  NSMutableString+ITRandomLetterSelection.m
//  ITWordPuzzle
//
//  Created by David Szep on 2014.07.20..
//  Copyright (c) 2014 David Szep. All rights reserved.
//

#import "NSMutableString+ITRandomLetterSelection.h"

@implementation NSMutableString (ITRandomLetterSelection)

#pragma mark - Random letter selections

- (NSString *)randomLetterWithDeletion {
    if (self.length) {
        NSUInteger randomIndex = arc4random_uniform(self.length);
        NSString *randomLetter = [self letterAtIndex:randomIndex];
        [self deleteCharactersInRange:NSMakeRange(randomIndex, 1)];
        
        return randomLetter;
    }
    return @"";
}

- (NSString *)randomLetter {
    return (self.length) ? [self letterAtIndex:arc4random_uniform(self.length)] : @"";
}

#pragma mark - Utils

- (NSString *)letterAtIndex:(NSUInteger)index {
    return [NSString stringWithFormat:@"%c", [self characterAtIndex:index]];
}

@end
