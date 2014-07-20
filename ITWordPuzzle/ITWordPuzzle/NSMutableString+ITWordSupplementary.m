//
//  NSString+ITWordSupplementary.m
//  ITWordPuzzle
//
//  Created by David Szep on 2014.07.20..
//  Copyright (c) 2014 David Szep. All rights reserved.
//

#import "NSMutableString+ITWordSupplementary.h"
#import "NSArray+ITRandomSelection.h"

@implementation NSMutableString (ITWordSupplementary)

#pragma mark - Supplementary

- (void)supplementWithNumberOfLetters:(NSUInteger)numberOfLetters fromAlphabet:(ITAlphabetLanguage)alphabetLanguage {
    NSArray *alphabet = [NSArray alphabetWithLanguage:alphabetLanguage];
    
    for (NSUInteger i = 0; i < numberOfLetters; i++) {
        [self appendString:[alphabet randomObject]];
    }
}

@end
