//
//  RoomCreateRequest.m
//  Together
//
//  Created by Gnef_jp on 13-4-24.
//  Copyright (c) 2013年 GMET. All rights reserved.
//
#import "AppSetting.h"

#import "RoomCreateRequest.h"

@implementation RoomCreateRequest


#ifdef kIsSimulatedData
- (NSString *) requestUrl
{
    return @"http://127.0.0.1/ROOM/CreateRoom";
}
#endif


- (id) init
{
    self = [super init];
    if (self)
    {
        self.requestType = NetRoomRequestType_CreateRoom;
        
        self.address = [[NetAddressItem alloc] init];
    }
    return self;
}


- (NSString *) _formatBeginTime
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:_beginTime];
    
    [dateFormatter setDateFormat:@"yyyyMMddHHmmss"];
    return [dateFormatter stringFromDate:date];
}


- (ASIHTTPRequest *) _httpRequest
{
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setValue:self.actionCode forKey:@"action"];
    
    [dict setValue:_sid forKey:@"sid"];
    [dict setValue:_ownerID forKey:@"userId"];
    [dict setValue:_ownerNickname forKey:@"nickName"];
    
    [dict setValue:_roomTitle forKey:@"title"];
    [dict setValue:[NSString stringWithInt:_roomType] forKey:@"type"];
    
    [dict setValue:[self _formatBeginTime] forKey:@"beginTime"];
    
    [dict setValue:[NSString stringWithInt:_personNumLimit] forKey:@"limitPersonNum"];
    [dict setValue:[NSString stringWithInt:_genderType] forKey:@"genderType"];
    
    [dict setValue:[NSString stringWithDouble:_address.location.coordinate.longitude]
            forKey:@"longitude"];
    [dict setValue:[NSString stringWithDouble:_address.location.coordinate.latitude]
            forKey:@"latitude"];
    [dict setValue:_address.detailAddr forKey:@"detailAddr"];
    [dict setValue:_address.addrRemark forKey:@"addrRemark"];
    
    _previewID = ([_previewID length] < 1) ? [NSString stringWithInt:_roomType] : _previewID;
    [dict setValue:_previewID forKey:@"picId"];
    [dict setValue:_recordID forKey:@"recordId"];
    
    NSString *urlStr = [NSString stringWithFormat:@"%@?%@",
                        self.requestUrl, [NSString urlArgsStringFromDictionary:dict]];
    NSURL* url = [NSURL URLWithString:urlStr];
    ASIHTTPRequest* request = [ASIHTTPRequest requestWithURL:url];
     
    return request;
}


- (void) _requestFinished
{
    NSDate *serverDate = [self.responseData.serverTime stringToDateWithFormat:@"yyyyMMddHHmmss"];
    [AppSetting defaultSetting].serverCurrentTime = [NSString stringWithFormat:@"%.0lf",
                                                     [serverDate timeIntervalSince1970]];
    
    [self.delegate NetRoomRequestSuccess:self];
}

@end

























