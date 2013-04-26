//
//  RoomConfig.h
//  Together
//
//  Created by Gnef_jp on 13-4-24.
//  Copyright (c) 2013年 GMET. All rights reserved.
//

#ifndef Together_RoomConfig_h
#define Together_RoomConfig_h

typedef enum
{
    RoomType_BRPG   = 0, // 桌游（board role-playing games）
    
    RoomType_Max    = 1,
} RoomType;


typedef enum
{
    RoomState_Waiting   = 0,
    RoomState_Playing   = 1,
    RoomState_Ended     = 2,
    
    RoomState_Max       = 3,
} RoomState;

#endif
