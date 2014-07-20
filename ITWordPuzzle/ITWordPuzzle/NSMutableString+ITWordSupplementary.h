//
//  NSString+ITWordSupplementary.h
//  ITWordPuzzle
//
//  Created by David Szep on 2014.07.20..
//  Copyright (c) 2014 David Szep. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+ITAlphabet.h"

@interface NSMutableString (ITWordSupplementary)

/**
 Supplements the string with the given number of letters. Letters will be selected randomly from the given alphabet.
 
 @param numberOfLetters Number of letters, which supplements the string.
 @param alphabetLanguage Alphabet, whereof the letters will be selected.
 */
- (void)supplementWithNumberOfLetters:(NSUInteger)numberOfLetters fromAlphabet:(ITAlphabetLanguage)alphabetLanguage;

@end
