//
//  NSArray+ITAlphabet.h
//  ITWordPuzzle
//
//  Created by David Szep on 2014.07.20..
//  Copyright (c) 2014 David Szep. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    ITAlphabetLanguageEnglish,
    ITAlphabetLanguageHungarian
} ITAlphabetLanguage;

@interface NSArray (ITAlphabet)

/// Creates and returns an array that contains the letters from alphabet of the given language.
+ (instancetype)alphabetWithLanguage:(ITAlphabetLanguage)language;
/// Initializes a newly allocated array that contains the letters from alphabet of the given language.
- (instancetype)initAlphabetWithLanguage:(ITAlphabetLanguage)language;

@end
