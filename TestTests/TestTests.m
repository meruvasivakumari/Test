//
//  TestTests.m
//  TestTests
//
//  Created by Meruva, Sivakumari (ASPL) on 22/11/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface TestTests : XCTestCase

@end

@implementation TestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCheckEvenNumber {
    ViewController *vc = [ViewController new];
    XCTAssertTrue([vc checkEvenNumber:5]);
    
}
- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
