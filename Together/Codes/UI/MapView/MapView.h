//
//  MapView.h
//  Together
//
//  Created by APPLE on 13-4-24.
//  Copyright (c) 2013年 GMET. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotationView.h>

@class MapView;
@class Annotation;
@class CustomAnnotationView;

@protocol MapViewDelegate <NSObject>

- (void)MapView:(MapView*)view location:(CLLocationCoordinate2D)aLocation;

@end

@interface MapView : UIView<CLLocationManagerDelegate>
{
    __weak IBOutlet MKMapView       *_iMapView;
    __weak id<MapViewDelegate>      _delegate;
    
    CLLocationManager               *_locationManager;
    BOOL                            *_isAdd;
    Annotation                      *_choosePosition;
}

@property (weak ,nonatomic) __weak id<MapViewDelegate>    delegate;

- (void)showAnimation;
- (IBAction)closeBtnDidPressed:(id)sender;
- (IBAction)getCurrentChoosePosition:(id)sender;
- (IBAction)currentLocation:(id)sender;

@end
