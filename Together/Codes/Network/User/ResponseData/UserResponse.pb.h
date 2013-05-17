// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "ProtocolBuffers.h"

#import "UserData.pb.h"
#import "MessageData.pb.h"

@class DetailResponse;
@class DetailResponse_Builder;
@class LoginResponse;
@class LoginResponse_Builder;
@class Message_Info;
@class Message_Info_Builder;
@class UserMessageResponse;
@class UserMessageResponse_Builder;
@class User_Info;
@class User_Info_Builder;
@class UsernameExistResponse;
@class UsernameExistResponse_Builder;

@interface UserResponseRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

@interface LoginResponse : PBGeneratedMessage {
@private
  BOOL hasSid_:1;
  BOOL hasUserInfo_:1;
  NSString* sid;
  User_Info* userInfo;
}
- (BOOL) hasSid;
- (BOOL) hasUserInfo;
@property (readonly, retain) NSString* sid;
@property (readonly, retain) User_Info* userInfo;

+ (LoginResponse*) defaultInstance;
- (LoginResponse*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (LoginResponse_Builder*) builder;
+ (LoginResponse_Builder*) builder;
+ (LoginResponse_Builder*) builderWithPrototype:(LoginResponse*) prototype;

+ (LoginResponse*) parseFromData:(NSData*) data;
+ (LoginResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (LoginResponse*) parseFromInputStream:(NSInputStream*) input;
+ (LoginResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (LoginResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (LoginResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface LoginResponse_Builder : PBGeneratedMessage_Builder {
@private
  LoginResponse* result;
}

- (LoginResponse*) defaultInstance;

- (LoginResponse_Builder*) clear;
- (LoginResponse_Builder*) clone;

- (LoginResponse*) build;
- (LoginResponse*) buildPartial;

- (LoginResponse_Builder*) mergeFrom:(LoginResponse*) other;
- (LoginResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (LoginResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasSid;
- (NSString*) sid;
- (LoginResponse_Builder*) setSid:(NSString*) value;
- (LoginResponse_Builder*) clearSid;

- (BOOL) hasUserInfo;
- (User_Info*) userInfo;
- (LoginResponse_Builder*) setUserInfo:(User_Info*) value;
- (LoginResponse_Builder*) setUserInfoBuilder:(User_Info_Builder*) builderForValue;
- (LoginResponse_Builder*) mergeUserInfo:(User_Info*) value;
- (LoginResponse_Builder*) clearUserInfo;
@end

@interface DetailResponse : PBGeneratedMessage {
@private
  BOOL hasIsFollow_:1;
  BOOL hasUserInfo_:1;
  BOOL isFollow_:1;
  User_Info* userInfo;
}
- (BOOL) hasIsFollow;
- (BOOL) hasUserInfo;
- (BOOL) isFollow;
@property (readonly, retain) User_Info* userInfo;

+ (DetailResponse*) defaultInstance;
- (DetailResponse*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (DetailResponse_Builder*) builder;
+ (DetailResponse_Builder*) builder;
+ (DetailResponse_Builder*) builderWithPrototype:(DetailResponse*) prototype;

+ (DetailResponse*) parseFromData:(NSData*) data;
+ (DetailResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (DetailResponse*) parseFromInputStream:(NSInputStream*) input;
+ (DetailResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (DetailResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (DetailResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface DetailResponse_Builder : PBGeneratedMessage_Builder {
@private
  DetailResponse* result;
}

- (DetailResponse*) defaultInstance;

- (DetailResponse_Builder*) clear;
- (DetailResponse_Builder*) clone;

- (DetailResponse*) build;
- (DetailResponse*) buildPartial;

- (DetailResponse_Builder*) mergeFrom:(DetailResponse*) other;
- (DetailResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (DetailResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasIsFollow;
- (BOOL) isFollow;
- (DetailResponse_Builder*) setIsFollow:(BOOL) value;
- (DetailResponse_Builder*) clearIsFollow;

- (BOOL) hasUserInfo;
- (User_Info*) userInfo;
- (DetailResponse_Builder*) setUserInfo:(User_Info*) value;
- (DetailResponse_Builder*) setUserInfoBuilder:(User_Info_Builder*) builderForValue;
- (DetailResponse_Builder*) mergeUserInfo:(User_Info*) value;
- (DetailResponse_Builder*) clearUserInfo;
@end

@interface UsernameExistResponse : PBGeneratedMessage {
@private
  BOOL hasIsExist_:1;
  BOOL isExist_:1;
}
- (BOOL) hasIsExist;
- (BOOL) isExist;

+ (UsernameExistResponse*) defaultInstance;
- (UsernameExistResponse*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (UsernameExistResponse_Builder*) builder;
+ (UsernameExistResponse_Builder*) builder;
+ (UsernameExistResponse_Builder*) builderWithPrototype:(UsernameExistResponse*) prototype;

+ (UsernameExistResponse*) parseFromData:(NSData*) data;
+ (UsernameExistResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (UsernameExistResponse*) parseFromInputStream:(NSInputStream*) input;
+ (UsernameExistResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (UsernameExistResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (UsernameExistResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface UsernameExistResponse_Builder : PBGeneratedMessage_Builder {
@private
  UsernameExistResponse* result;
}

- (UsernameExistResponse*) defaultInstance;

- (UsernameExistResponse_Builder*) clear;
- (UsernameExistResponse_Builder*) clone;

- (UsernameExistResponse*) build;
- (UsernameExistResponse*) buildPartial;

- (UsernameExistResponse_Builder*) mergeFrom:(UsernameExistResponse*) other;
- (UsernameExistResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (UsernameExistResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasIsExist;
- (BOOL) isExist;
- (UsernameExistResponse_Builder*) setIsExist:(BOOL) value;
- (UsernameExistResponse_Builder*) clearIsExist;
@end

@interface UserMessageResponse : PBGeneratedMessage {
@private
  BOOL hasMessageCount_:1;
  BOOL hasSender_:1;
  BOOL hasRecipient_:1;
  BOOL hasMessageInfo_:1;
  int32_t messageCount;
  User_Info* sender;
  User_Info* recipient;
  Message_Info* messageInfo;
}
- (BOOL) hasSender;
- (BOOL) hasRecipient;
- (BOOL) hasMessageInfo;
- (BOOL) hasMessageCount;
@property (readonly, retain) User_Info* sender;
@property (readonly, retain) User_Info* recipient;
@property (readonly, retain) Message_Info* messageInfo;
@property (readonly) int32_t messageCount;

+ (UserMessageResponse*) defaultInstance;
- (UserMessageResponse*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (UserMessageResponse_Builder*) builder;
+ (UserMessageResponse_Builder*) builder;
+ (UserMessageResponse_Builder*) builderWithPrototype:(UserMessageResponse*) prototype;

+ (UserMessageResponse*) parseFromData:(NSData*) data;
+ (UserMessageResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (UserMessageResponse*) parseFromInputStream:(NSInputStream*) input;
+ (UserMessageResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (UserMessageResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (UserMessageResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface UserMessageResponse_Builder : PBGeneratedMessage_Builder {
@private
  UserMessageResponse* result;
}

- (UserMessageResponse*) defaultInstance;

- (UserMessageResponse_Builder*) clear;
- (UserMessageResponse_Builder*) clone;

- (UserMessageResponse*) build;
- (UserMessageResponse*) buildPartial;

- (UserMessageResponse_Builder*) mergeFrom:(UserMessageResponse*) other;
- (UserMessageResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (UserMessageResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasSender;
- (User_Info*) sender;
- (UserMessageResponse_Builder*) setSender:(User_Info*) value;
- (UserMessageResponse_Builder*) setSenderBuilder:(User_Info_Builder*) builderForValue;
- (UserMessageResponse_Builder*) mergeSender:(User_Info*) value;
- (UserMessageResponse_Builder*) clearSender;

- (BOOL) hasRecipient;
- (User_Info*) recipient;
- (UserMessageResponse_Builder*) setRecipient:(User_Info*) value;
- (UserMessageResponse_Builder*) setRecipientBuilder:(User_Info_Builder*) builderForValue;
- (UserMessageResponse_Builder*) mergeRecipient:(User_Info*) value;
- (UserMessageResponse_Builder*) clearRecipient;

- (BOOL) hasMessageInfo;
- (Message_Info*) messageInfo;
- (UserMessageResponse_Builder*) setMessageInfo:(Message_Info*) value;
- (UserMessageResponse_Builder*) setMessageInfoBuilder:(Message_Info_Builder*) builderForValue;
- (UserMessageResponse_Builder*) mergeMessageInfo:(Message_Info*) value;
- (UserMessageResponse_Builder*) clearMessageInfo;

- (BOOL) hasMessageCount;
- (int32_t) messageCount;
- (UserMessageResponse_Builder*) setMessageCount:(int32_t) value;
- (UserMessageResponse_Builder*) clearMessageCount;
@end

