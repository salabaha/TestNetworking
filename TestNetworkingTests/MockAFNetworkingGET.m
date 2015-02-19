//
//  MockAFNetworkingGET.m
//  TestNetworkking
//
//  Created by salabaha on 2/1/15.
//  Copyright (c) 2015 salabaha. All rights reserved.
//

#import "MockAFNetworkingGET.h"

@implementation MockAFNetworkingGET

-(AFHTTPRequestOperation *) GET:(NSString *)URLString
                     parameters:(id)parameters
                        success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                        failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
    self.callsCount += 1;
    self.URLString   = URLString;
    self.parameters  = parameters;
    self.success     = success;
    self.failure     = failure;

    return self.fakeReturnValue;
}

@end
