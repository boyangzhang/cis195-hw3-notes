//
//  NotesSecondViewController.m
//  Notes
//
//  Created by Dan Zhang on 10/13/12.
//  Copyright (c) 2012 Dan Zhang. All rights reserved.
//

#import "NotesSecondViewController.h"

@interface NotesSecondViewController ()
@property (weak, nonatomic) NotesLocationSingleton *allLocations;
@end

@implementation NotesSecondViewController

- (void)viewDidLoad
{
    //I'm positive there is a more efficient way of doing this rather than reloading
    //the points every single time, but I'm tired!! haha and i need to turn this in!
    [super viewDidLoad];
    self.allLocations = [NotesLocationSingleton sharedLocationArray];
    if(self.allLocations != nil){
        for(NotesTextFile *note in self.allLocations.locationsList) {
            MKPointAnnotation *annotationPoint = [[MKPointAnnotation alloc] init];
            annotationPoint.coordinate = note.location.coordinate;
            [self.mapView addAnnotation:annotationPoint];
        }
    }
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
