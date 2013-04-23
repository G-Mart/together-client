//
//  UserCenterView.h
//  Together
//
//  Created by APPLE on 13-4-22.
//  Copyright (c) 2013年 GMET. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GMETRecorder.h"
#import "AvataActioSheet.h"
#import "ChangeAvatar.h"
#import "AvatarCutView.h"

@interface UserCenterView : UIView<UIActionSheetDelegate,ChangeAvatarDelegate,AvatarCutViewDelegate>
{
    GMETRecorder        *_recorder;
    AVAudioPlayer       *_player;
    ChangeAvatar        *_avatar;
    __weak IBOutlet UIImageView *_iAvatarImage;
    
}

- (IBAction)recordBtnDidPressed:(id)sender;
- (IBAction)stopRecordBtnDidPressed:(id)sender;
- (IBAction)changeAvataBtnDidPressed:(id)sender;

@end
