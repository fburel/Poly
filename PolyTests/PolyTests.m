//
//  PolyTests.m
//  PolyTests
//
//  Created by Florian BUREL on 05/01/2015.
//  Copyright (c) 2015 Florian Burel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Polygone.h"

@interface PolyTests : XCTestCase

@end

@implementation PolyTests

- (void)setUp {
    [super setUp];
    

    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testExample
{
    int a = 2;
    int b = 2;
    XCTAssert(a == b); // fail si a != b
}

/// Un polygone ne peut pas avoir moins de 3 coté
- (void) test_PolygoneEdgesStayAbove3
{
    Polygone * p = [[Polygone alloc]init];
    
    int initialNumber = 10;
    int offLimitValue = 2;
    
    [p setEdges:initialNumber];
    [p setEdges:offLimitValue];
    
    XCTAssert([p edges] == initialNumber);
}


/// Un polygone ne peut pas avoir plus de 12 cotés
- (void) test_PolygoneEdgesStayBellow12
{
    Polygone * p = [Polygone new];
    
    int initialNumber = 10;
    int offLimitValue = 13;
    
    [p setEdges:initialNumber];
    [p setEdges:offLimitValue];
    
    XCTAssert([p edges] == initialNumber);
}

/// Par defaut un polygone a 5 cotés
- (void) test_PolygoneIsCreatedWith5Edges
{
    Polygone * p = [[Polygone alloc]init];
    
    XCTAssert([p edges] == 5);
}




@end
