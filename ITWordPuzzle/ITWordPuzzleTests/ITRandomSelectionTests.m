//
//  ITRandomSelectionTests.m
//  ITWordPuzzle
//
//  Created by David Szep on 2014.07.20..
//  Copyright (c) 2014 David Szep. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSArray+ITRandomSelection.h"

@interface ITRandomSelectionTests : XCTestCase

@end

@implementation ITRandomSelectionTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

#pragma mark - Random selection test cases

- (void)testArrayContainsTheRandomObject {
    NSArray *objects = @[@"a", @"b", @"c"];
    NSString *selectedObject = [objects randomObject];
    
    XCTAssertTrue([objects containsObject:selectedObject], @"The array: %@ should include the selected object: %@", objects, selectedObject);
}

- (void)testEmptyArray {
    NSArray *objects = @[];
    NSString *selectedObject = [objects randomObject];
    
    XCTAssertNil(selectedObject, @"The selected object: %@ from the empty array must be nil!", selectedObject);
}

- (void)testUninitializedArray {
    NSArray *objects;
    NSString *selectedObject = [objects randomObject];
    
    XCTAssertNil(selectedObject, @"The selected object: %@ from the uninitialized array must be nil!", selectedObject);
}

@end
