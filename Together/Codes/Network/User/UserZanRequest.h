//
//  UserZanRequest.h
//  Together
//
//  Created by APPLE on 13-5-9.
//  Copyright (c) 2013年 GMET. All rights reserved.
//

#import "NetUserRequest.h"

@interface UserZanRequest : NetUserRequest
{
    NSString        *_zanUserId;
}

@property (nonatomic,retain) NSString        *zanUserId;

@end
