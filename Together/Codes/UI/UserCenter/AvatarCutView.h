//
//  AvatarCutView.h
//  Together
//
//  Created by APPLE on 13-4-23.
//  Copyright (c) 2013年 GMET. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KICropImageView.h"

@protocol AvatarCutViewDelegate <NSObject>

- (void)avataImageDidReceive:(UIImage*)img;

@end

@interface AvatarCutView : UIView
{
    KICropImageView         *_cropImageView;
    __weak id<AvatarCutViewDelegate>   _delegate;
}

@property (nonatomic,weak) id<AvatarCutViewDelegate>   delegate;

@end
