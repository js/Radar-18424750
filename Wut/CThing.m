//
//  CThing.m
//  Wut
//
//  Created by Sørensen, Johan on 23.09.14.
//  Copyright (c) 2014 Johan Sørensen. All rights reserved.
//

#import "CThing.h"
#import <AFNetworking/AFNetworking.h>

@implementation CThing

- (AFHTTPSessionManager *)manager {
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:@"http://apple.com"]];
    return manager;
}

- (NSString *)name {
    return @"bob";
}
@end
