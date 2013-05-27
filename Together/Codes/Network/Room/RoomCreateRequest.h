//
//  RoomCreateRequest.h
//  Together
//
//  Created by Gnef_jp on 13-4-24.
//  Copyright (c) 2013年 GMET. All rights reserved.
//

#import "NetRoomList.h"
#import "NetRoomRequest.h"

@interface RoomCreateRequest : NetRoomRequest

@property (copy,   nonatomic) NSString          *roomTitle;
@property (assign, nonatomic) RoomType          roomType;

@property (strong, nonatomic) NetAddressItem    *address;

@property (assign, nonatomic) NSInteger         personNumLimit;
@property (assign, nonatomic) UserGenderType    genderType;

@property (copy,   nonatomic) NSString          *beginTime;

@property (copy,   nonatomic) NSString          *recordID;
@property (copy,   nonatomic) NSString          *previewID;

@property (copy,   nonatomic) NSString          *sid;
@property (copy,   nonatomic) NSString          *ownerID;
@property (copy,   nonatomic) NSString          *ownerNickname;

@end
