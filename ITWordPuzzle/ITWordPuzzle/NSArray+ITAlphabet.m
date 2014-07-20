//
//  NSArray+ITAlphabet.m
//  ITWordPuzzle
//
//  Created by David Szep on 2014.07.20..
//  Copyright (c) 2014 David Szep. All rights reserved.
//

#import "NSArray+ITAlphabet.h"

@implementation NSArray (ITAlphabet)

#pragma mark - Convenience initializer

+ (instancetype)alphabetWithLanguage:(ITAlphabetLanguage)language {
    return [[self alloc] initAlphabetWithLanguage:language];
}

#pragma mark - Designated initializer

- (instancetype)initAlphabetWithLanguage:(ITAlphabetLanguage)language {
    switch (language) {
        case ITAlphabetLanguageHungarian:
            return [self hungarianAlphabet];
        case ITAlphabetLanguageEnglish:
        default:
            return [self englishAlphabet];
            break;
    }
}

#pragma mark - Supported alphabets

- (instancetype)englishAlphabet {
    return @[@"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m",
             @"n", @"o", @"p", @"q", @"r", @"s", @"t", @"u", @"v", @"w", @"x", @"y", @"z"];
}

// Can not include the compound letters.
- (instancetype)hungarianAlphabet {
    return @[@"a", @"á", @"b", @"c", @"d", @"e", @"é", @"f", @"g",
             @"h", @"i", @"í", @"j", @"k", @"l", @"m", @"n", @"o",
             @"ó", @"ö", @"ő", @"p", @"q", @"r", @"s", @"t", @"u",
             @"ú", @"ü", @"ű", @"v", @"w", @"x", @"y", @"z"];
}

#pragma mark - Description

- (NSString *)description {
    return [self componentsJoinedByString:@", "];
}

@end