//
//  NotesLocationSingleton.h
//  Notes
//
//  Created by Dan Zhang on 10/16/12.
//  Copyright (c) 2012 Dan Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NotesLocationSingleton : NSObject
@property (nonatomic, strong) NSMutableArray *locationsList;
+ (NotesLocationSingleton *) sharedLocationArray;
@end
