//
//  CThing.h
//  Wut
//
//  Created by Sørensen, Johan on 23.09.14.
//  Copyright (c) 2014 Johan Sørensen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface CThing : NSObject
- (AFHTTPSessionManager *)manager;
- (NSString *)name;
@end
