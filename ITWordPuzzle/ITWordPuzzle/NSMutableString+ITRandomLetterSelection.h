//
//  NSMutableString+ITRandomLetterSelection.h
//  ITWordPuzzle
//
//  Created by David Szep on 2014.07.20..
//  Copyright (c) 2014 David Szep. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableString (ITRandomLetterSelection)

/// Selects and deletes a random letter from the string, then returns it.
- (NSString *)randomLetterWithDeletion;
/// Selects and returns a random letter from the string.
- (NSString *)randomLetter;

@end
