//
// Created by salabaha on 2/1/15.
// Copyright (c) 2015 salabaha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MockAFNetworkingGET.h"
#import "ResourceFetcher.h"

@interface ResourceFatcherTests : XCTestCase

@end

@implementation ResourceFatcherTests

-(void)testFetcheResource_ShouldCallGET
{
    id mockGET = [[MockAFNetworkingGET alloc] init];
    ResourceFetcher *rs = [[ResourceFetcher alloc] initWithGETManager:mockGET];
    [rs fetchResources];

    XCTAssertEqual(1, [mockGET callsCount]);
}


-(void)testFetcheResource_Success_JSON_HasName
{
    MockAFNetworkingGET *mockGET = [MockAFNetworkingGET new];
    ResourceFetcher *rs = [[ResourceFetcher alloc] initWithGETManager:(id)mockGET];
    [rs fetchResources];

    mockGET.success(nil, [@"{\"name\":\"Roman Salabay\"}" dataUsingEncoding:NSUTF8StringEncoding]);
    
    XCTAssertEqualObjects(@"Roman Salabay", rs.name);
    
}
@end