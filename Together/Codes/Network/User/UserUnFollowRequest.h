//
//  UserUnFollowRequest.h
//  Together
//
//  Created by APPLE on 13-5-9.
//  Copyright (c) 2013年 GMET. All rights reserved.
//

#import "NetUserRequest.h"

@interface UserUnFollowRequest : NetUserRequest
{
    NSString        *_unFollowId;
}

@property (nonatomic, retain) NSString        *unFollowId;

@end

