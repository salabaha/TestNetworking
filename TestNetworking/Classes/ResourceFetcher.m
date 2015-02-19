//
//  ResourceFetcher.m
//  TestNetworkking
//
//  Created by salabaha on 2/1/15.
//  Copyright (c) 2015 salabaha. All rights reserved.
//

#import "ResourceFetcher.h"
#import <AFNetworking/AFHTTPRequestOperationManager.h>

@interface ResourceFetcher()

@property (nonatomic, strong) AFHTTPRequestOperationManager *manager;

@end

@implementation ResourceFetcher

-(instancetype)initWithGETManager:(AFHTTPRequestOperationManager *)manager
{
    if (self = [super init]) {
        _manager = manager;
    }
    return self;
}

-(void)fetchResources
{
    __weak typeof(self) wself = self;
    
    [self.manager GET:@"http:/example.com/resources.json"
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, NSData *responseObject) {
             
             typeof(self) sself = wself;
             
             NSError *error;
             
             NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject
                                                                         options:NSJSONReadingAllowFragments
                                                                           error:&error];
             if (dict) {
                 sself.name = dict[@"name"];
             }
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             
         }];
}

@end
