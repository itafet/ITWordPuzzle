//
//  ITRandomLetterSelection.m
//  ITWordPuzzle
//
//  Created by David Szep on 2014.07.20..
//  Copyright (c) 2014 David Szep. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSMutableString+ITRandomLetterSelection.h"

@interface ITRandomLetterSelection : XCTestCase

@property (nonatomic, strong) NSMutableString *word;

@end

@implementation ITRandomLetterSelection

- (void)setUp
{
    [super setUp];

    self.word = [NSMutableString stringWithString:@"Test"];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

#pragma mark - Random letter selections test cases

- (void)testRandomLetterSelection {
    NSString *selectedLetter = [self.word randomLetter];
    
    NSCharacterSet *cset = [NSCharacterSet characterSetWithCharactersInString:selectedLetter];
    NSRange range = [self.word rangeOfCharacterFromSet:cset];
    
    XCTAssertTrue(range.location != NSNotFound, @"The word: %@ shoul be contains the selected letter: %@", self.word, selectedLetter);
}

- (void)testRandomLetterSelectionWithEmptyString {
    self.word = [NSMutableString stringWithString:@""];
    NSString *selectedLetter = [self.word randomLetter];
    
    XCTAssertTrue([selectedLetter isEqualToString:@""], @"The selected letter should be an empty string!");
}

- (void)testRandomLetterSelectionWithUninitializedString {
    self.word = nil;
    NSString *selectedLetter = [self.word randomLetter];
    
    XCTAssertTrue(selectedLetter == nil, @"The selected letter should be nil!");
}

#pragma mark - Random letter selections with deletion test cases

- (void)testRandomLetterSelectionWithDeletion {
    NSUInteger wordOriginalLength = self.word.length;
    NSString *selectedAndDeletedLetter = [self.word randomLetterWithDeletion];
    
    NSCharacterSet *cset = [NSCharacterSet characterSetWithCharactersInString:selectedAndDeletedLetter];
    NSRange range = [self.word rangeOfCharacterFromSet:cset];
    
    XCTAssertTrue(range.location == NSNotFound, @"The word: %@ should be not contains the selected and deleted letter: %@", self.word, selectedAndDeletedLetter);
    XCTAssertTrue(wordOriginalLength != self.word.length, @"The length: %d of the original word should be not equal to length: %d of the new word, after the letter is selected and deleted!", wordOriginalLength, self.word.length);
}

- (void)testRandomLetterSelectionWithDeletionWithEmptyString {
    self.word = [NSMutableString stringWithString:@""];
    NSString *selectedAndDeletedLetter = [self.word randomLetterWithDeletion];
    
    XCTAssertTrue([selectedAndDeletedLetter isEqualToString:@""], @"The selected letter should be an empty string!");
}

- (void)testRandomLetterSelectionWithDeletionWithUninitializedString {
    self.word = nil;
    NSString *selectedLetter = [self.word randomLetterWithDeletion];
    
    XCTAssertTrue(selectedLetter == nil, @"The selected letter should be nil!");
}

@end
