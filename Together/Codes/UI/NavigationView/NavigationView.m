//
//  NavigationView.m
//  Together
//
//  Created by Gnef_jp on 13-4-22.
//  Copyright (c) 2013年 GMET. All rights reserved.
//

#import "NavigationView.h"

#define kHomeModul_BtnTag   1000
#define kMatchModul_BtnTag  1001
#define kMineModul_BtnTag   1002

@implementation NavigationView

- (void) awakeFromNib
{
    
}


- (IBAction)showNavigationBtnPressed:(id)sender
{
    [_delegate NavigationViewShowBtnPressed:self];
}

- (IBAction)modulBtnPressed:(id)sender {
}


@end