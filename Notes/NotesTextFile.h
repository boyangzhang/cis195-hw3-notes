//
//  NotesTextFile.h
//  Notes
//
//  Created by Dan Zhang on 10/16/12.
//  Copyright (c) 2012 Dan Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface NotesTextFile : NSObject

@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) CLLocationManager *locationManager;
@property (nonatomic, strong) CLLocation *location;
@end
