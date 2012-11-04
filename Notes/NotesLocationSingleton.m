//
//  NotesLocationSingleton.m
//  Notes
//
//  Created by Dan Zhang on 10/16/12.
//  Copyright (c) 2012 Dan Zhang. All rights reserved.
//

#import "NotesLocationSingleton.h"


@implementation NotesLocationSingleton

static NotesLocationSingleton *sharedLocationArray = nil;

+ (NotesLocationSingleton *) sharedLocationArray {
    
    @synchronized(self) {
        if (sharedLocationArray == nil) {
            sharedLocationArray = [[NotesLocationSingleton alloc] init];
        }
        
        if(sharedLocationArray.locationsList == nil) {
            sharedLocationArray.locationsList = [[NSMutableArray alloc] init];
        }
    }
    return sharedLocationArray;
}

@end
