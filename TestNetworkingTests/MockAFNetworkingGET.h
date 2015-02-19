//
//  MockAFNetworkingGET.h
//  TestNetworkking
//
//  Created by salabaha on 2/1/15.
//  Copyright (c) 2015 salabaha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

@interface MockAFNetworkingGET : NSObject

@property (nonatomic) int callsCount;

@property (nonatomic, strong) AFHTTPRequestOperation *fakeReturnValue;
@property (nonatomic, strong) NSDictionary *parameters;
@property (nonatomic, copy) NSString *URLString;
@property (nonatomic, copy) void (^success)(AFHTTPRequestOperation *operation, id responseObject);
@property (nonatomic, copy) void (^failure)(AFHTTPRequestOperation *operation, NSError *error);

-(AFHTTPRequestOperation *) GET:(NSString *)URLString
                     parameters:(id)parameters
                        success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                        failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;
@end
