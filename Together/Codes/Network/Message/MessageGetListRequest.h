//
//  MessageGetListRequest.h
//  Together
//
//  Created by Gnef_jp on 13-5-20.
//  Copyright (c) 2013年 GMET. All rights reserved.
//

#import "NetMessageRequest.h"

@interface MessageGetListRequest : NetMessageRequest

@property (copy, nonatomic) NSString *recipinetID;

@end