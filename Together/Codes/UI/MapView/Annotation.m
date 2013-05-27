//
//  Annotation.m
//  CustomAnnotation
//
//  Created by akshay on 8/14/12.
//  Copyright (c) 2012 raw engineering, inc. All rights reserved.
//

#import "Annotation.h"

@implementation Annotation

@synthesize coordinate;
@synthesize title;
@synthesize subtitle;
@synthesize locationType;
@synthesize roomInfo;


- (id)initWithLocation:(CLLocationCoordinate2D)coord {
    self = [super init];
    if (self) {
        coordinate = coord;
    }
    return self;
}

- (id)initWithRoomInfo:(NetRoomItem*)aRoomInfo
{
    self = [super init];
    if (self)
    {
        self.roomInfo = aRoomInfo;
        coordinate = self.roomInfo.address.location.coordinate;
    }
    return self;
}

- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate {
    coordinate = newCoordinate; 
}

@end