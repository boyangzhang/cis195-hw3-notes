//
//  NotesSecondViewController.h
//  Notes
//
//  Created by Dan Zhang on 10/13/12.
//  Copyright (c) 2012 Dan Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "NotesLocationSingleton.h"
#import "NotesTextFile.h"

@interface NotesSecondViewController : UIViewController
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
