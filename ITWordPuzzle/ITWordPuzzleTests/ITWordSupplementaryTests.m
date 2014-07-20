//
//  ITWordSupplementaryTests.m
//  ITWordPuzzle
//
//  Created by David Szep on 2014.07.20..
//  Copyright (c) 2014 David Szep. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSMutableString+ITWordSupplementary.h"

const NSUInteger SUPPLEMENT_LENGTH = 5;
const NSUInteger SUPPLEMENT_LENGTH_BIG_NUM = 98;
const NSUInteger SUPPLEMENT_LENGTH_NULL = 0;

@interface ITWordSupplementaryTests : XCTestCase

@property (nonatomic, strong) NSString *originalWord;
@property (nonatomic, strong) NSMutableString *supplementedWord;

@end

@implementation ITWordSupplementaryTests

- (void)setUp
{
    [super setUp];
    
    self.originalWord = @"Test";
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

#pragma mark - Supplementary test cases in English

- (void)testSuppplementWordInEnglish {
    self.supplementedWord = [NSMutableString stringWithString:self.originalWord];
    [self.supplementedWord supplementWithNumberOfLetters:SUPPLEMENT_LENGTH fromAlphabet:ITAlphabetLanguageEnglish];

    XCTAssertTrue((self.originalWord.length + SUPPLEMENT_LENGTH) == self.supplementedWord.length, @"Length of the new word: %@ should be %d more, than the original one: %@", self.supplementedWord, SUPPLEMENT_LENGTH, self.originalWord);
}

- (void)testSuppplementWordWithBigNumInEnglish {
    self.supplementedWord = [NSMutableString stringWithString:self.originalWord];
    [self.supplementedWord supplementWithNumberOfLetters:SUPPLEMENT_LENGTH_BIG_NUM fromAlphabet:ITAlphabetLanguageEnglish];

    
    XCTAssertTrue((self.originalWord.length + SUPPLEMENT_LENGTH_BIG_NUM) == self.supplementedWord.length, @"Length of the new word: %@ should be %d more, than the original one: %@", self.supplementedWord, SUPPLEMENT_LENGTH_BIG_NUM, self.originalWord);
}

- (void)testSuppplementWordWithNullInEnglish {
    self.supplementedWord = [NSMutableString stringWithString:self.originalWord];
    [self.supplementedWord supplementWithNumberOfLetters:SUPPLEMENT_LENGTH_NULL fromAlphabet:ITAlphabetLanguageEnglish];
    
    XCTAssertTrue((self.originalWord.length + SUPPLEMENT_LENGTH_NULL) == self.supplementedWord.length, @"Length of the new word: %@ should be %d more, than the original one: %@", self.supplementedWord, SUPPLEMENT_LENGTH_NULL, self.originalWord);
}

#pragma mark - Supplementary test cases in English

- (void)testSuppplementWordInHungarian {
    self.supplementedWord = [NSMutableString stringWithString:self.originalWord];
    [self.supplementedWord supplementWithNumberOfLetters:SUPPLEMENT_LENGTH fromAlphabet:ITAlphabetLanguageHungarian];

    XCTAssertTrue((self.originalWord.length + SUPPLEMENT_LENGTH) == self.supplementedWord.length, @"Length of the new word: %@ should be %d more, than the original one: %@", self.supplementedWord, SUPPLEMENT_LENGTH, self.originalWord);
}

- (void)testSuppplementWordWithBigNumInHungarian {
    self.supplementedWord = [NSMutableString stringWithString:self.originalWord];
    [self.supplementedWord supplementWithNumberOfLetters:SUPPLEMENT_LENGTH_BIG_NUM fromAlphabet:ITAlphabetLanguageHungarian];

    XCTAssertTrue((self.originalWord.length + SUPPLEMENT_LENGTH_BIG_NUM) == self.supplementedWord.length, @"Length of the new word: %@ should be %d more, than the original one: %@", self.supplementedWord, SUPPLEMENT_LENGTH_BIG_NUM, self.originalWord);
}

- (void)testSuppplementWordWithNullInHungarian {
    self.supplementedWord = [NSMutableString stringWithString:self.originalWord];
    [self.supplementedWord supplementWithNumberOfLetters:SUPPLEMENT_LENGTH_NULL fromAlphabet:ITAlphabetLanguageHungarian];
    
    XCTAssertTrue((self.originalWord.length + SUPPLEMENT_LENGTH_NULL) == self.supplementedWord.length, @"Length of the new word: %@ should be %d more, than the original one: %@", self.supplementedWord, SUPPLEMENT_LENGTH_NULL, self.originalWord);
}

@end
