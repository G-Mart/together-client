//
//  UserCenterView.h
//  Together
//
//  Created by APPLE on 13-4-22.
//  Copyright (c) 2013年 GMET. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "PicChange.h"
#import "MapView.h"
#import "UserLoginRequest.h"
#import "UserRegisterRequest.h"
#import "UserFollowRequest.h"
#import "UserEditUserInfoView.h"

@class GMETRecorder;
@class GEMTUserInfo;

typedef enum 
{
    followRelation_follow,
    followRelation_unFollow,
    followRelation_Own
}eFollowRelation;

@interface UserCenterView : UIView<PicChangeDelegate,MapViewDelegate,NetUserRequestDelegate,UserEditUserInfoViewDelegate>
{
    __weak IBOutlet UIImageView     *_iAvatarImage;
    GMETRecorder                    *_recorder;
    AVAudioPlayer                   *_player;
    PicChange                       *_avatar;
    GEMTUserInfo                    *_userInfo;
    eFollowRelation                 _eType;
    
    __weak IBOutlet UILabel         *_iSexLb;
    __weak IBOutlet UILabel         *_iAgeLb;
    __weak IBOutlet UILabel         *_iNickName;
    __weak IBOutlet UILabel         *_iPraiseLb;
    __weak IBOutlet UILabel         *_iSignLb;
    
    __weak IBOutlet UIButton        *_iEditBtn;
    __weak IBOutlet UIButton        *_iZanBtn;
    
}

@property (strong , nonatomic) GEMTUserInfo         *userInfo;


//请求目录
- (void)viewUserInfoWithUserId:(NSString*)aUserId;
- (IBAction)closeBtnDidPressed:(id)sender;


- (void)changeUserInfo:(GEMTUserInfo*)aUserInfo;
- (IBAction)viewOtherInfo:(id)sender;
- (IBAction)followOther:(id)sender;
- (IBAction)pariseOthers:(id)sender;
- (IBAction)unfollow:(id)sender;

- (IBAction)modifyInfo:(id)sender;
- (IBAction)showMapViewBtnDidpressed:(id)sender;
- (IBAction)recordBtnDidPressed:(id)sender;
- (IBAction)stopRecordBtnDidPressed:(id)sender;
- (IBAction)changeAvataBtnDidPressed:(id)sender;
- (IBAction)loginBtnDidPressed:(id)sender;
- (IBAction)editInfoBtnDidPressed:(id)sender;

@end
