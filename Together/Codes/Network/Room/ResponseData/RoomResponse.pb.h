// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "ProtocolBuffers.h"

#import "Data.pb.h"
#import "RoomData.pb.h"

@class Address;
@class Address_Builder;
@class List;
@class List_Builder;
@class RoomInfo;
@class RoomInfo_Builder;
@class RoomPeopleListResponse;
@class RoomPeopleListResponse_Builder;
@class ShowRoomListResponse;
@class ShowRoomListResponse_Builder;
@class User_Info;
@class User_Info_Builder;

@interface RoomResponseRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

@interface ShowRoomListResponse : PBGeneratedMessage {
@private
  BOOL hasRoomList_:1;
  List* roomList;
}
- (BOOL) hasRoomList;
@property (readonly, retain) List* roomList;

+ (ShowRoomListResponse*) defaultInstance;
- (ShowRoomListResponse*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (ShowRoomListResponse_Builder*) builder;
+ (ShowRoomListResponse_Builder*) builder;
+ (ShowRoomListResponse_Builder*) builderWithPrototype:(ShowRoomListResponse*) prototype;

+ (ShowRoomListResponse*) parseFromData:(NSData*) data;
+ (ShowRoomListResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ShowRoomListResponse*) parseFromInputStream:(NSInputStream*) input;
+ (ShowRoomListResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ShowRoomListResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (ShowRoomListResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface ShowRoomListResponse_Builder : PBGeneratedMessage_Builder {
@private
  ShowRoomListResponse* result;
}

- (ShowRoomListResponse*) defaultInstance;

- (ShowRoomListResponse_Builder*) clear;
- (ShowRoomListResponse_Builder*) clone;

- (ShowRoomListResponse*) build;
- (ShowRoomListResponse*) buildPartial;

- (ShowRoomListResponse_Builder*) mergeFrom:(ShowRoomListResponse*) other;
- (ShowRoomListResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (ShowRoomListResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasRoomList;
- (List*) roomList;
- (ShowRoomListResponse_Builder*) setRoomList:(List*) value;
- (ShowRoomListResponse_Builder*) setRoomListBuilder:(List_Builder*) builderForValue;
- (ShowRoomListResponse_Builder*) mergeRoomList:(List*) value;
- (ShowRoomListResponse_Builder*) clearRoomList;
@end

@interface RoomPeopleListResponse : PBGeneratedMessage {
@private
  BOOL hasPeopleList_:1;
  List* peopleList;
}
- (BOOL) hasPeopleList;
@property (readonly, retain) List* peopleList;

+ (RoomPeopleListResponse*) defaultInstance;
- (RoomPeopleListResponse*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (RoomPeopleListResponse_Builder*) builder;
+ (RoomPeopleListResponse_Builder*) builder;
+ (RoomPeopleListResponse_Builder*) builderWithPrototype:(RoomPeopleListResponse*) prototype;

+ (RoomPeopleListResponse*) parseFromData:(NSData*) data;
+ (RoomPeopleListResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (RoomPeopleListResponse*) parseFromInputStream:(NSInputStream*) input;
+ (RoomPeopleListResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (RoomPeopleListResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (RoomPeopleListResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface RoomPeopleListResponse_Builder : PBGeneratedMessage_Builder {
@private
  RoomPeopleListResponse* result;
}

- (RoomPeopleListResponse*) defaultInstance;

- (RoomPeopleListResponse_Builder*) clear;
- (RoomPeopleListResponse_Builder*) clone;

- (RoomPeopleListResponse*) build;
- (RoomPeopleListResponse*) buildPartial;

- (RoomPeopleListResponse_Builder*) mergeFrom:(RoomPeopleListResponse*) other;
- (RoomPeopleListResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (RoomPeopleListResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasPeopleList;
- (List*) peopleList;
- (RoomPeopleListResponse_Builder*) setPeopleList:(List*) value;
- (RoomPeopleListResponse_Builder*) setPeopleListBuilder:(List_Builder*) builderForValue;
- (RoomPeopleListResponse_Builder*) mergePeopleList:(List*) value;
- (RoomPeopleListResponse_Builder*) clearPeopleList;
@end

