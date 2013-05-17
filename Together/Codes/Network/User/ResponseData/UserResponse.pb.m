// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "UserResponse.pb.h"

@implementation UserResponseRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [UserResponseRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    [UserDataRoot registerAllExtensions:registry];
    [MessageDataRoot registerAllExtensions:registry];
    extensionRegistry = [registry retain];
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface LoginResponse ()
@property (retain) NSString* sid;
@property (retain) User_Info* userInfo;
@end

@implementation LoginResponse

- (BOOL) hasSid {
  return !!hasSid_;
}
- (void) setHasSid:(BOOL) value {
  hasSid_ = !!value;
}
@synthesize sid;
- (BOOL) hasUserInfo {
  return !!hasUserInfo_;
}
- (void) setHasUserInfo:(BOOL) value {
  hasUserInfo_ = !!value;
}
@synthesize userInfo;
- (void) dealloc {
  self.sid = nil;
  self.userInfo = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.sid = @"";
    self.userInfo = [User_Info defaultInstance];
  }
  return self;
}
static LoginResponse* defaultLoginResponseInstance = nil;
+ (void) initialize {
  if (self == [LoginResponse class]) {
    defaultLoginResponseInstance = [[LoginResponse alloc] init];
  }
}
+ (LoginResponse*) defaultInstance {
  return defaultLoginResponseInstance;
}
- (LoginResponse*) defaultInstance {
  return defaultLoginResponseInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasSid) {
    [output writeString:1 value:self.sid];
  }
  if (self.hasUserInfo) {
    [output writeMessage:2 value:self.userInfo];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasSid) {
    size += computeStringSize(1, self.sid);
  }
  if (self.hasUserInfo) {
    size += computeMessageSize(2, self.userInfo);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (LoginResponse*) parseFromData:(NSData*) data {
  return (LoginResponse*)[[[LoginResponse builder] mergeFromData:data] build];
}
+ (LoginResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (LoginResponse*)[[[LoginResponse builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (LoginResponse*) parseFromInputStream:(NSInputStream*) input {
  return (LoginResponse*)[[[LoginResponse builder] mergeFromInputStream:input] build];
}
+ (LoginResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (LoginResponse*)[[[LoginResponse builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (LoginResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (LoginResponse*)[[[LoginResponse builder] mergeFromCodedInputStream:input] build];
}
+ (LoginResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (LoginResponse*)[[[LoginResponse builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (LoginResponse_Builder*) builder {
  return [[[LoginResponse_Builder alloc] init] autorelease];
}
+ (LoginResponse_Builder*) builderWithPrototype:(LoginResponse*) prototype {
  return [[LoginResponse builder] mergeFrom:prototype];
}
- (LoginResponse_Builder*) builder {
  return [LoginResponse builder];
}
@end

@interface LoginResponse_Builder()
@property (retain) LoginResponse* result;
@end

@implementation LoginResponse_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[LoginResponse alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (LoginResponse_Builder*) clear {
  self.result = [[[LoginResponse alloc] init] autorelease];
  return self;
}
- (LoginResponse_Builder*) clone {
  return [LoginResponse builderWithPrototype:result];
}
- (LoginResponse*) defaultInstance {
  return [LoginResponse defaultInstance];
}
- (LoginResponse*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (LoginResponse*) buildPartial {
  LoginResponse* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (LoginResponse_Builder*) mergeFrom:(LoginResponse*) other {
  if (other == [LoginResponse defaultInstance]) {
    return self;
  }
  if (other.hasSid) {
    [self setSid:other.sid];
  }
  if (other.hasUserInfo) {
    [self mergeUserInfo:other.userInfo];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (LoginResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (LoginResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setSid:[input readString]];
        break;
      }
      case 18: {
        User_Info_Builder* subBuilder = [User_Info builder];
        if (self.hasUserInfo) {
          [subBuilder mergeFrom:self.userInfo];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setUserInfo:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasSid {
  return result.hasSid;
}
- (NSString*) sid {
  return result.sid;
}
- (LoginResponse_Builder*) setSid:(NSString*) value {
  result.hasSid = YES;
  result.sid = value;
  return self;
}
- (LoginResponse_Builder*) clearSid {
  result.hasSid = NO;
  result.sid = @"";
  return self;
}
- (BOOL) hasUserInfo {
  return result.hasUserInfo;
}
- (User_Info*) userInfo {
  return result.userInfo;
}
- (LoginResponse_Builder*) setUserInfo:(User_Info*) value {
  result.hasUserInfo = YES;
  result.userInfo = value;
  return self;
}
- (LoginResponse_Builder*) setUserInfoBuilder:(User_Info_Builder*) builderForValue {
  return [self setUserInfo:[builderForValue build]];
}
- (LoginResponse_Builder*) mergeUserInfo:(User_Info*) value {
  if (result.hasUserInfo &&
      result.userInfo != [User_Info defaultInstance]) {
    result.userInfo =
      [[[User_Info builderWithPrototype:result.userInfo] mergeFrom:value] buildPartial];
  } else {
    result.userInfo = value;
  }
  result.hasUserInfo = YES;
  return self;
}
- (LoginResponse_Builder*) clearUserInfo {
  result.hasUserInfo = NO;
  result.userInfo = [User_Info defaultInstance];
  return self;
}
@end

@interface DetailResponse ()
@property BOOL isFollow;
@property (retain) User_Info* userInfo;
@end

@implementation DetailResponse

- (BOOL) hasIsFollow {
  return !!hasIsFollow_;
}
- (void) setHasIsFollow:(BOOL) value {
  hasIsFollow_ = !!value;
}
- (BOOL) isFollow {
  return !!isFollow_;
}
- (void) setIsFollow:(BOOL) value {
  isFollow_ = !!value;
}
- (BOOL) hasUserInfo {
  return !!hasUserInfo_;
}
- (void) setHasUserInfo:(BOOL) value {
  hasUserInfo_ = !!value;
}
@synthesize userInfo;
- (void) dealloc {
  self.userInfo = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.isFollow = NO;
    self.userInfo = [User_Info defaultInstance];
  }
  return self;
}
static DetailResponse* defaultDetailResponseInstance = nil;
+ (void) initialize {
  if (self == [DetailResponse class]) {
    defaultDetailResponseInstance = [[DetailResponse alloc] init];
  }
}
+ (DetailResponse*) defaultInstance {
  return defaultDetailResponseInstance;
}
- (DetailResponse*) defaultInstance {
  return defaultDetailResponseInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasIsFollow) {
    [output writeBool:1 value:self.isFollow];
  }
  if (self.hasUserInfo) {
    [output writeMessage:2 value:self.userInfo];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasIsFollow) {
    size += computeBoolSize(1, self.isFollow);
  }
  if (self.hasUserInfo) {
    size += computeMessageSize(2, self.userInfo);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (DetailResponse*) parseFromData:(NSData*) data {
  return (DetailResponse*)[[[DetailResponse builder] mergeFromData:data] build];
}
+ (DetailResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (DetailResponse*)[[[DetailResponse builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (DetailResponse*) parseFromInputStream:(NSInputStream*) input {
  return (DetailResponse*)[[[DetailResponse builder] mergeFromInputStream:input] build];
}
+ (DetailResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (DetailResponse*)[[[DetailResponse builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (DetailResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (DetailResponse*)[[[DetailResponse builder] mergeFromCodedInputStream:input] build];
}
+ (DetailResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (DetailResponse*)[[[DetailResponse builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (DetailResponse_Builder*) builder {
  return [[[DetailResponse_Builder alloc] init] autorelease];
}
+ (DetailResponse_Builder*) builderWithPrototype:(DetailResponse*) prototype {
  return [[DetailResponse builder] mergeFrom:prototype];
}
- (DetailResponse_Builder*) builder {
  return [DetailResponse builder];
}
@end

@interface DetailResponse_Builder()
@property (retain) DetailResponse* result;
@end

@implementation DetailResponse_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[DetailResponse alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (DetailResponse_Builder*) clear {
  self.result = [[[DetailResponse alloc] init] autorelease];
  return self;
}
- (DetailResponse_Builder*) clone {
  return [DetailResponse builderWithPrototype:result];
}
- (DetailResponse*) defaultInstance {
  return [DetailResponse defaultInstance];
}
- (DetailResponse*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (DetailResponse*) buildPartial {
  DetailResponse* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (DetailResponse_Builder*) mergeFrom:(DetailResponse*) other {
  if (other == [DetailResponse defaultInstance]) {
    return self;
  }
  if (other.hasIsFollow) {
    [self setIsFollow:other.isFollow];
  }
  if (other.hasUserInfo) {
    [self mergeUserInfo:other.userInfo];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (DetailResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (DetailResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setIsFollow:[input readBool]];
        break;
      }
      case 18: {
        User_Info_Builder* subBuilder = [User_Info builder];
        if (self.hasUserInfo) {
          [subBuilder mergeFrom:self.userInfo];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setUserInfo:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasIsFollow {
  return result.hasIsFollow;
}
- (BOOL) isFollow {
  return result.isFollow;
}
- (DetailResponse_Builder*) setIsFollow:(BOOL) value {
  result.hasIsFollow = YES;
  result.isFollow = value;
  return self;
}
- (DetailResponse_Builder*) clearIsFollow {
  result.hasIsFollow = NO;
  result.isFollow = NO;
  return self;
}
- (BOOL) hasUserInfo {
  return result.hasUserInfo;
}
- (User_Info*) userInfo {
  return result.userInfo;
}
- (DetailResponse_Builder*) setUserInfo:(User_Info*) value {
  result.hasUserInfo = YES;
  result.userInfo = value;
  return self;
}
- (DetailResponse_Builder*) setUserInfoBuilder:(User_Info_Builder*) builderForValue {
  return [self setUserInfo:[builderForValue build]];
}
- (DetailResponse_Builder*) mergeUserInfo:(User_Info*) value {
  if (result.hasUserInfo &&
      result.userInfo != [User_Info defaultInstance]) {
    result.userInfo =
      [[[User_Info builderWithPrototype:result.userInfo] mergeFrom:value] buildPartial];
  } else {
    result.userInfo = value;
  }
  result.hasUserInfo = YES;
  return self;
}
- (DetailResponse_Builder*) clearUserInfo {
  result.hasUserInfo = NO;
  result.userInfo = [User_Info defaultInstance];
  return self;
}
@end

@interface UsernameExistResponse ()
@property BOOL isExist;
@end

@implementation UsernameExistResponse

- (BOOL) hasIsExist {
  return !!hasIsExist_;
}
- (void) setHasIsExist:(BOOL) value {
  hasIsExist_ = !!value;
}
- (BOOL) isExist {
  return !!isExist_;
}
- (void) setIsExist:(BOOL) value {
  isExist_ = !!value;
}
- (void) dealloc {
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.isExist = NO;
  }
  return self;
}
static UsernameExistResponse* defaultUsernameExistResponseInstance = nil;
+ (void) initialize {
  if (self == [UsernameExistResponse class]) {
    defaultUsernameExistResponseInstance = [[UsernameExistResponse alloc] init];
  }
}
+ (UsernameExistResponse*) defaultInstance {
  return defaultUsernameExistResponseInstance;
}
- (UsernameExistResponse*) defaultInstance {
  return defaultUsernameExistResponseInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasIsExist) {
    [output writeBool:1 value:self.isExist];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasIsExist) {
    size += computeBoolSize(1, self.isExist);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (UsernameExistResponse*) parseFromData:(NSData*) data {
  return (UsernameExistResponse*)[[[UsernameExistResponse builder] mergeFromData:data] build];
}
+ (UsernameExistResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (UsernameExistResponse*)[[[UsernameExistResponse builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (UsernameExistResponse*) parseFromInputStream:(NSInputStream*) input {
  return (UsernameExistResponse*)[[[UsernameExistResponse builder] mergeFromInputStream:input] build];
}
+ (UsernameExistResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (UsernameExistResponse*)[[[UsernameExistResponse builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (UsernameExistResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (UsernameExistResponse*)[[[UsernameExistResponse builder] mergeFromCodedInputStream:input] build];
}
+ (UsernameExistResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (UsernameExistResponse*)[[[UsernameExistResponse builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (UsernameExistResponse_Builder*) builder {
  return [[[UsernameExistResponse_Builder alloc] init] autorelease];
}
+ (UsernameExistResponse_Builder*) builderWithPrototype:(UsernameExistResponse*) prototype {
  return [[UsernameExistResponse builder] mergeFrom:prototype];
}
- (UsernameExistResponse_Builder*) builder {
  return [UsernameExistResponse builder];
}
@end

@interface UsernameExistResponse_Builder()
@property (retain) UsernameExistResponse* result;
@end

@implementation UsernameExistResponse_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[UsernameExistResponse alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (UsernameExistResponse_Builder*) clear {
  self.result = [[[UsernameExistResponse alloc] init] autorelease];
  return self;
}
- (UsernameExistResponse_Builder*) clone {
  return [UsernameExistResponse builderWithPrototype:result];
}
- (UsernameExistResponse*) defaultInstance {
  return [UsernameExistResponse defaultInstance];
}
- (UsernameExistResponse*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (UsernameExistResponse*) buildPartial {
  UsernameExistResponse* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (UsernameExistResponse_Builder*) mergeFrom:(UsernameExistResponse*) other {
  if (other == [UsernameExistResponse defaultInstance]) {
    return self;
  }
  if (other.hasIsExist) {
    [self setIsExist:other.isExist];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (UsernameExistResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (UsernameExistResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setIsExist:[input readBool]];
        break;
      }
    }
  }
}
- (BOOL) hasIsExist {
  return result.hasIsExist;
}
- (BOOL) isExist {
  return result.isExist;
}
- (UsernameExistResponse_Builder*) setIsExist:(BOOL) value {
  result.hasIsExist = YES;
  result.isExist = value;
  return self;
}
- (UsernameExistResponse_Builder*) clearIsExist {
  result.hasIsExist = NO;
  result.isExist = NO;
  return self;
}
@end

@interface UserMessageResponse ()
@property (retain) User_Info* sender;
@property (retain) User_Info* recipient;
@property (retain) Message_Info* messageInfo;
@property int32_t messageCount;
@end

@implementation UserMessageResponse

- (BOOL) hasSender {
  return !!hasSender_;
}
- (void) setHasSender:(BOOL) value {
  hasSender_ = !!value;
}
@synthesize sender;
- (BOOL) hasRecipient {
  return !!hasRecipient_;
}
- (void) setHasRecipient:(BOOL) value {
  hasRecipient_ = !!value;
}
@synthesize recipient;
- (BOOL) hasMessageInfo {
  return !!hasMessageInfo_;
}
- (void) setHasMessageInfo:(BOOL) value {
  hasMessageInfo_ = !!value;
}
@synthesize messageInfo;
- (BOOL) hasMessageCount {
  return !!hasMessageCount_;
}
- (void) setHasMessageCount:(BOOL) value {
  hasMessageCount_ = !!value;
}
@synthesize messageCount;
- (void) dealloc {
  self.sender = nil;
  self.recipient = nil;
  self.messageInfo = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.sender = [User_Info defaultInstance];
    self.recipient = [User_Info defaultInstance];
    self.messageInfo = [Message_Info defaultInstance];
    self.messageCount = 0;
  }
  return self;
}
static UserMessageResponse* defaultUserMessageResponseInstance = nil;
+ (void) initialize {
  if (self == [UserMessageResponse class]) {
    defaultUserMessageResponseInstance = [[UserMessageResponse alloc] init];
  }
}
+ (UserMessageResponse*) defaultInstance {
  return defaultUserMessageResponseInstance;
}
- (UserMessageResponse*) defaultInstance {
  return defaultUserMessageResponseInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasSender) {
    [output writeMessage:1 value:self.sender];
  }
  if (self.hasRecipient) {
    [output writeMessage:2 value:self.recipient];
  }
  if (self.hasMessageInfo) {
    [output writeMessage:3 value:self.messageInfo];
  }
  if (self.hasMessageCount) {
    [output writeInt32:4 value:self.messageCount];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasSender) {
    size += computeMessageSize(1, self.sender);
  }
  if (self.hasRecipient) {
    size += computeMessageSize(2, self.recipient);
  }
  if (self.hasMessageInfo) {
    size += computeMessageSize(3, self.messageInfo);
  }
  if (self.hasMessageCount) {
    size += computeInt32Size(4, self.messageCount);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (UserMessageResponse*) parseFromData:(NSData*) data {
  return (UserMessageResponse*)[[[UserMessageResponse builder] mergeFromData:data] build];
}
+ (UserMessageResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (UserMessageResponse*)[[[UserMessageResponse builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (UserMessageResponse*) parseFromInputStream:(NSInputStream*) input {
  return (UserMessageResponse*)[[[UserMessageResponse builder] mergeFromInputStream:input] build];
}
+ (UserMessageResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (UserMessageResponse*)[[[UserMessageResponse builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (UserMessageResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (UserMessageResponse*)[[[UserMessageResponse builder] mergeFromCodedInputStream:input] build];
}
+ (UserMessageResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (UserMessageResponse*)[[[UserMessageResponse builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (UserMessageResponse_Builder*) builder {
  return [[[UserMessageResponse_Builder alloc] init] autorelease];
}
+ (UserMessageResponse_Builder*) builderWithPrototype:(UserMessageResponse*) prototype {
  return [[UserMessageResponse builder] mergeFrom:prototype];
}
- (UserMessageResponse_Builder*) builder {
  return [UserMessageResponse builder];
}
@end

@interface UserMessageResponse_Builder()
@property (retain) UserMessageResponse* result;
@end

@implementation UserMessageResponse_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[UserMessageResponse alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (UserMessageResponse_Builder*) clear {
  self.result = [[[UserMessageResponse alloc] init] autorelease];
  return self;
}
- (UserMessageResponse_Builder*) clone {
  return [UserMessageResponse builderWithPrototype:result];
}
- (UserMessageResponse*) defaultInstance {
  return [UserMessageResponse defaultInstance];
}
- (UserMessageResponse*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (UserMessageResponse*) buildPartial {
  UserMessageResponse* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (UserMessageResponse_Builder*) mergeFrom:(UserMessageResponse*) other {
  if (other == [UserMessageResponse defaultInstance]) {
    return self;
  }
  if (other.hasSender) {
    [self mergeSender:other.sender];
  }
  if (other.hasRecipient) {
    [self mergeRecipient:other.recipient];
  }
  if (other.hasMessageInfo) {
    [self mergeMessageInfo:other.messageInfo];
  }
  if (other.hasMessageCount) {
    [self setMessageCount:other.messageCount];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (UserMessageResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (UserMessageResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        User_Info_Builder* subBuilder = [User_Info builder];
        if (self.hasSender) {
          [subBuilder mergeFrom:self.sender];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setSender:[subBuilder buildPartial]];
        break;
      }
      case 18: {
        User_Info_Builder* subBuilder = [User_Info builder];
        if (self.hasRecipient) {
          [subBuilder mergeFrom:self.recipient];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setRecipient:[subBuilder buildPartial]];
        break;
      }
      case 26: {
        Message_Info_Builder* subBuilder = [Message_Info builder];
        if (self.hasMessageInfo) {
          [subBuilder mergeFrom:self.messageInfo];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setMessageInfo:[subBuilder buildPartial]];
        break;
      }
      case 32: {
        [self setMessageCount:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasSender {
  return result.hasSender;
}
- (User_Info*) sender {
  return result.sender;
}
- (UserMessageResponse_Builder*) setSender:(User_Info*) value {
  result.hasSender = YES;
  result.sender = value;
  return self;
}
- (UserMessageResponse_Builder*) setSenderBuilder:(User_Info_Builder*) builderForValue {
  return [self setSender:[builderForValue build]];
}
- (UserMessageResponse_Builder*) mergeSender:(User_Info*) value {
  if (result.hasSender &&
      result.sender != [User_Info defaultInstance]) {
    result.sender =
      [[[User_Info builderWithPrototype:result.sender] mergeFrom:value] buildPartial];
  } else {
    result.sender = value;
  }
  result.hasSender = YES;
  return self;
}
- (UserMessageResponse_Builder*) clearSender {
  result.hasSender = NO;
  result.sender = [User_Info defaultInstance];
  return self;
}
- (BOOL) hasRecipient {
  return result.hasRecipient;
}
- (User_Info*) recipient {
  return result.recipient;
}
- (UserMessageResponse_Builder*) setRecipient:(User_Info*) value {
  result.hasRecipient = YES;
  result.recipient = value;
  return self;
}
- (UserMessageResponse_Builder*) setRecipientBuilder:(User_Info_Builder*) builderForValue {
  return [self setRecipient:[builderForValue build]];
}
- (UserMessageResponse_Builder*) mergeRecipient:(User_Info*) value {
  if (result.hasRecipient &&
      result.recipient != [User_Info defaultInstance]) {
    result.recipient =
      [[[User_Info builderWithPrototype:result.recipient] mergeFrom:value] buildPartial];
  } else {
    result.recipient = value;
  }
  result.hasRecipient = YES;
  return self;
}
- (UserMessageResponse_Builder*) clearRecipient {
  result.hasRecipient = NO;
  result.recipient = [User_Info defaultInstance];
  return self;
}
- (BOOL) hasMessageInfo {
  return result.hasMessageInfo;
}
- (Message_Info*) messageInfo {
  return result.messageInfo;
}
- (UserMessageResponse_Builder*) setMessageInfo:(Message_Info*) value {
  result.hasMessageInfo = YES;
  result.messageInfo = value;
  return self;
}
- (UserMessageResponse_Builder*) setMessageInfoBuilder:(Message_Info_Builder*) builderForValue {
  return [self setMessageInfo:[builderForValue build]];
}
- (UserMessageResponse_Builder*) mergeMessageInfo:(Message_Info*) value {
  if (result.hasMessageInfo &&
      result.messageInfo != [Message_Info defaultInstance]) {
    result.messageInfo =
      [[[Message_Info builderWithPrototype:result.messageInfo] mergeFrom:value] buildPartial];
  } else {
    result.messageInfo = value;
  }
  result.hasMessageInfo = YES;
  return self;
}
- (UserMessageResponse_Builder*) clearMessageInfo {
  result.hasMessageInfo = NO;
  result.messageInfo = [Message_Info defaultInstance];
  return self;
}
- (BOOL) hasMessageCount {
  return result.hasMessageCount;
}
- (int32_t) messageCount {
  return result.messageCount;
}
- (UserMessageResponse_Builder*) setMessageCount:(int32_t) value {
  result.hasMessageCount = YES;
  result.messageCount = value;
  return self;
}
- (UserMessageResponse_Builder*) clearMessageCount {
  result.hasMessageCount = NO;
  result.messageCount = 0;
  return self;
}
@end

