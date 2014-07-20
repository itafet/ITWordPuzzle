//
//  ITAlphabetTests.m
//  ITWordPuzzle
//
//  Created by David Szep on 2014.07.20..
//  Copyright (c) 2014 David Szep. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSArray+ITAlphabet.h"

@interface ITAlphabetTests : XCTestCase

@end

@implementation ITAlphabetTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

#pragma mark - Designated initializer test cases

- (void)testDesignatedInitializerWithEnglishLanguage {
    ITAlphabetLanguage language = ITAlphabetLanguageEnglish;
    NSArray *alphabet = [[NSArray alloc] initAlphabetWithLanguage:language];
    XCTAssertNotNil(alphabet, @"Alphabet designated initialization with %d language failed!", language);
}

- (void)testDesignatedInitializerWithHungarianLanguage {
    ITAlphabetLanguage language = ITAlphabetLanguageHungarian;
    NSArray *alphabet = [[NSArray alloc] initAlphabetWithLanguage:language];
    XCTAssertNotNil(alphabet, @"Alphabet designated initialization with %d language failed!", language);
}

- (void)testDesignatedInitializerWithUnspecifiedLanguage {
    ITAlphabetLanguage language = 122;
    NSArray *alphabet = [[NSArray alloc] initAlphabetWithLanguage:language];
    XCTAssertNotNil(alphabet, @"Alphabet designated initialization with %d language failed!", language);
}

#pragma mark - Convenience initializer test cases

- (void)testConvenienceInitializerWithEnglishLanguage {
    ITAlphabetLanguage language = ITAlphabetLanguageEnglish;
    NSArray *alphabet = [NSArray alphabetWithLanguage:language];
    XCTAssertNotNil(alphabet, @"Alphabet convenience initialization with %d language failed!", language);
}

- (void)testConvenienceInitializerWithHungarianLanguage {
    ITAlphabetLanguage language = ITAlphabetLanguageHungarian;
    NSArray *alphabet = [NSArray alphabetWithLanguage:language];
    XCTAssertNotNil(alphabet, @"Alphabet convenience initialization with %d language failed!", language);
}

- (void)testConvenienceInitializerWithUnspecifiedLanguage {
    ITAlphabetLanguage language = 122;
    NSArray *alphabet = [[NSArray alloc] initAlphabetWithLanguage:language];
    XCTAssertNotNil(alphabet, @"Alphabet designated initialization with %d language failed!", language);
}

#pragma mark - Equality test cases

- (void)testEnglishAlphabetEquality {
    NSArray *englishAlphabet = @[@"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m",
                                 @"n", @"o", @"p", @"q", @"r", @"s", @"t", @"u", @"v", @"w", @"x", @"y", @"z"];
    NSArray *alphabet = [NSArray alphabetWithLanguage:ITAlphabetLanguageEnglish];
    XCTAssertTrue([englishAlphabet isEqualToArray:alphabet], @"Alphabets are not equal %@ %@", englishAlphabet, alphabet);
}

- (void)testHungarianAlphabetEquality {
    NSArray *hungarianAlphabet = @[@"a", @"á", @"b", @"c", @"cs", @"d", @"dz", @"dzs", @"e", @"é", @"f",
                                   @"g", @"gy", @"h", @"i", @"í", @"j", @"k", @"l", @"m", @"n", @"ny",
                                   @"o", @"ó", @"ö", @"ő", @"p", @"q", @"r", @"s", @"sz", @"t", @"ty",
                                   @"u", @"ú", @"ü", @"ű", @"v", @"w", @"x", @"y", @"z", @"zs"];
    NSArray *alphabet = [NSArray alphabetWithLanguage:ITAlphabetLanguageHungarian];
    XCTAssertTrue([hungarianAlphabet isEqualToArray:alphabet], @"Alphabets are not equal %@ %@", hungarianAlphabet, alphabet);
}

#pragma mark - Dissimilarity test cases

- (void)testEnglishAlphabetDissimilarity {
    NSArray *specifiedAlphabet = @[@"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m", @"n", @"o", @"p"];
    NSArray *alphabet = [NSArray alphabetWithLanguage:ITAlphabetLanguageEnglish];
    XCTAssertFalse([specifiedAlphabet isEqualToArray:alphabet], @"Alphabets are not equal %@ %@", specifiedAlphabet, alphabet);
}

- (void)testHungarianAlphabetDissimilarity {
    NSArray *specifiedAlphabet = @[@"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m", @"n", @"o", @"p"];
    NSArray *alphabet = [NSArray alphabetWithLanguage:ITAlphabetLanguageHungarian];
    XCTAssertFalse([specifiedAlphabet isEqualToArray:alphabet], @"Alphabets are not equal %@ %@", specifiedAlphabet, alphabet);
}

@end
