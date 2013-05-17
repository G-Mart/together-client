// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "ProtocolBuffers.h"

#import "UserResponse.pb.h"
#import "UserListResponse.pb.h"
#import "RoomResponse.pb.h"
#import "Data.pb.h"

@class Address;
@class Address_Builder;
@class DetailResponse;
@class DetailResponse_Builder;
@class FollowListResponse;
@class FollowListResponse_Builder;
@class FollowedListResponse;
@class FollowedListResponse_Builder;
@class HTTPResponse;
@class HTTPResponse_Builder;
@class List;
@class List_Builder;
@class LoginResponse;
@class LoginResponse_Builder;
@class Message_Info;
@class Message_Info_Builder;
@class RoomInfo;
@class RoomInfoResponse;
@class RoomInfoResponse_Builder;
@class RoomInfo_Builder;
@class RoomPeopleListResponse;
@class RoomPeopleListResponse_Builder;
@class ShowRoomListResponse;
@class ShowRoomListResponse_Builder;
@class UserMessageResponse;
@class UserMessageResponse_Builder;
@class UserRoomListResponse;
@class UserRoomListResponse_Builder;
@class User_Info;
@class User_Info_Builder;
@class UsernameExistResponse;
@class UsernameExistResponse_Builder;

@interface ResponseRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

@interface HTTPResponse : PBGeneratedMessage {
@private
  BOOL hasSuccess_:1;
  BOOL hasCode_:1;
  BOOL hasMsg_:1;
  BOOL hasServerTime_:1;
  BOOL hasLoginResponse_:1;
  BOOL hasDetailResponse_:1;
  BOOL hasExistResponse_:1;
  BOOL hasRoomListResponse_:1;
  BOOL hasRoomPeopleListResponse_:1;
  BOOL hasRoomInfoResponse_:1;
  BOOL hasFollowListResponse_:1;
  BOOL hasFollowedListResponse_:1;
  BOOL hasUserRoomListResponse_:1;
  BOOL hasUserMessageListResponse_:1;
  BOOL success_:1;
  int32_t code;
  NSString* msg;
  NSString* serverTime;
  LoginResponse* loginResponse;
  DetailResponse* detailResponse;
  UsernameExistResponse* existResponse;
  ShowRoomListResponse* roomListResponse;
  RoomPeopleListResponse* roomPeopleListResponse;
  RoomInfoResponse* roomInfoResponse;
  FollowListResponse* followListResponse;
  FollowedListResponse* followedListResponse;
  UserRoomListResponse* userRoomListResponse;
  List* userMessageListResponse;
}
- (BOOL) hasCode;
- (BOOL) hasSuccess;
- (BOOL) hasMsg;
- (BOOL) hasServerTime;
- (BOOL) hasLoginResponse;
- (BOOL) hasDetailResponse;
- (BOOL) hasExistResponse;
- (BOOL) hasRoomListResponse;
- (BOOL) hasRoomPeopleListResponse;
- (BOOL) hasRoomInfoResponse;
- (BOOL) hasFollowListResponse;
- (BOOL) hasFollowedListResponse;
- (BOOL) hasUserRoomListResponse;
- (BOOL) hasUserMessageListResponse;
@property (readonly) int32_t code;
- (BOOL) success;
@property (readonly, retain) NSString* msg;
@property (readonly, retain) NSString* serverTime;
@property (readonly, retain) LoginResponse* loginResponse;
@property (readonly, retain) DetailResponse* detailResponse;
@property (readonly, retain) UsernameExistResponse* existResponse;
@property (readonly, retain) ShowRoomListResponse* roomListResponse;
@property (readonly, retain) RoomPeopleListResponse* roomPeopleListResponse;
@property (readonly, retain) RoomInfoResponse* roomInfoResponse;
@property (readonly, retain) FollowListResponse* followListResponse;
@property (readonly, retain) FollowedListResponse* followedListResponse;
@property (readonly, retain) UserRoomListResponse* userRoomListResponse;
@property (readonly, retain) List* userMessageListResponse;

+ (HTTPResponse*) defaultInstance;
- (HTTPResponse*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (HTTPResponse_Builder*) builder;
+ (HTTPResponse_Builder*) builder;
+ (HTTPResponse_Builder*) builderWithPrototype:(HTTPResponse*) prototype;

+ (HTTPResponse*) parseFromData:(NSData*) data;
+ (HTTPResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (HTTPResponse*) parseFromInputStream:(NSInputStream*) input;
+ (HTTPResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (HTTPResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (HTTPResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface HTTPResponse_Builder : PBGeneratedMessage_Builder {
@private
  HTTPResponse* result;
}

- (HTTPResponse*) defaultInstance;

- (HTTPResponse_Builder*) clear;
- (HTTPResponse_Builder*) clone;

- (HTTPResponse*) build;
- (HTTPResponse*) buildPartial;

- (HTTPResponse_Builder*) mergeFrom:(HTTPResponse*) other;
- (HTTPResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (HTTPResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasCode;
- (int32_t) code;
- (HTTPResponse_Builder*) setCode:(int32_t) value;
- (HTTPResponse_Builder*) clearCode;

- (BOOL) hasSuccess;
- (BOOL) success;
- (HTTPResponse_Builder*) setSuccess:(BOOL) value;
- (HTTPResponse_Builder*) clearSuccess;

- (BOOL) hasMsg;
- (NSString*) msg;
- (HTTPResponse_Builder*) setMsg:(NSString*) value;
- (HTTPResponse_Builder*) clearMsg;

- (BOOL) hasServerTime;
- (NSString*) serverTime;
- (HTTPResponse_Builder*) setServerTime:(NSString*) value;
- (HTTPResponse_Builder*) clearServerTime;

- (BOOL) hasLoginResponse;
- (LoginResponse*) loginResponse;
- (HTTPResponse_Builder*) setLoginResponse:(LoginResponse*) value;
- (HTTPResponse_Builder*) setLoginResponseBuilder:(LoginResponse_Builder*) builderForValue;
- (HTTPResponse_Builder*) mergeLoginResponse:(LoginResponse*) value;
- (HTTPResponse_Builder*) clearLoginResponse;

- (BOOL) hasDetailResponse;
- (DetailResponse*) detailResponse;
- (HTTPResponse_Builder*) setDetailResponse:(DetailResponse*) value;
- (HTTPResponse_Builder*) setDetailResponseBuilder:(DetailResponse_Builder*) builderForValue;
- (HTTPResponse_Builder*) mergeDetailResponse:(DetailResponse*) value;
- (HTTPResponse_Builder*) clearDetailResponse;

- (BOOL) hasExistResponse;
- (UsernameExistResponse*) existResponse;
- (HTTPResponse_Builder*) setExistResponse:(UsernameExistResponse*) value;
- (HTTPResponse_Builder*) setExistResponseBuilder:(UsernameExistResponse_Builder*) builderForValue;
- (HTTPResponse_Builder*) mergeExistResponse:(UsernameExistResponse*) value;
- (HTTPResponse_Builder*) clearExistResponse;

- (BOOL) hasRoomListResponse;
- (ShowRoomListResponse*) roomListResponse;
- (HTTPResponse_Builder*) setRoomListResponse:(ShowRoomListResponse*) value;
- (HTTPResponse_Builder*) setRoomListResponseBuilder:(ShowRoomListResponse_Builder*) builderForValue;
- (HTTPResponse_Builder*) mergeRoomListResponse:(ShowRoomListResponse*) value;
- (HTTPResponse_Builder*) clearRoomListResponse;

- (BOOL) hasRoomPeopleListResponse;
- (RoomPeopleListResponse*) roomPeopleListResponse;
- (HTTPResponse_Builder*) setRoomPeopleListResponse:(RoomPeopleListResponse*) value;
- (HTTPResponse_Builder*) setRoomPeopleListResponseBuilder:(RoomPeopleListResponse_Builder*) builderForValue;
- (HTTPResponse_Builder*) mergeRoomPeopleListResponse:(RoomPeopleListResponse*) value;
- (HTTPResponse_Builder*) clearRoomPeopleListResponse;

- (BOOL) hasRoomInfoResponse;
- (RoomInfoResponse*) roomInfoResponse;
- (HTTPResponse_Builder*) setRoomInfoResponse:(RoomInfoResponse*) value;
- (HTTPResponse_Builder*) setRoomInfoResponseBuilder:(RoomInfoResponse_Builder*) builderForValue;
- (HTTPResponse_Builder*) mergeRoomInfoResponse:(RoomInfoResponse*) value;
- (HTTPResponse_Builder*) clearRoomInfoResponse;

- (BOOL) hasFollowListResponse;
- (FollowListResponse*) followListResponse;
- (HTTPResponse_Builder*) setFollowListResponse:(FollowListResponse*) value;
- (HTTPResponse_Builder*) setFollowListResponseBuilder:(FollowListResponse_Builder*) builderForValue;
- (HTTPResponse_Builder*) mergeFollowListResponse:(FollowListResponse*) value;
- (HTTPResponse_Builder*) clearFollowListResponse;

- (BOOL) hasFollowedListResponse;
- (FollowedListResponse*) followedListResponse;
- (HTTPResponse_Builder*) setFollowedListResponse:(FollowedListResponse*) value;
- (HTTPResponse_Builder*) setFollowedListResponseBuilder:(FollowedListResponse_Builder*) builderForValue;
- (HTTPResponse_Builder*) mergeFollowedListResponse:(FollowedListResponse*) value;
- (HTTPResponse_Builder*) clearFollowedListResponse;

- (BOOL) hasUserRoomListResponse;
- (UserRoomListResponse*) userRoomListResponse;
- (HTTPResponse_Builder*) setUserRoomListResponse:(UserRoomListResponse*) value;
- (HTTPResponse_Builder*) setUserRoomListResponseBuilder:(UserRoomListResponse_Builder*) builderForValue;
- (HTTPResponse_Builder*) mergeUserRoomListResponse:(UserRoomListResponse*) value;
- (HTTPResponse_Builder*) clearUserRoomListResponse;

- (BOOL) hasUserMessageListResponse;
- (List*) userMessageListResponse;
- (HTTPResponse_Builder*) setUserMessageListResponse:(List*) value;
- (HTTPResponse_Builder*) setUserMessageListResponseBuilder:(List_Builder*) builderForValue;
- (HTTPResponse_Builder*) mergeUserMessageListResponse:(List*) value;
- (HTTPResponse_Builder*) clearUserMessageListResponse;
@end

