//
//  ResourceFetcher.h
//  TestNetworkking
//
//  Created by salabaha on 2/1/15.
//  Copyright (c) 2015 salabaha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AFHTTPRequestOperationManager;

@interface ResourceFetcher : NSObject

@property (nonatomic, copy) NSString *name;

-(instancetype)initWithGETManager:(AFHTTPRequestOperationManager *)manager;

-(void)fetchResources;

@end
