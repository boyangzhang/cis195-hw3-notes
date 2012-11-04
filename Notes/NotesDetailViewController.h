//
//  NotesDetailViewController.h
//  Temp
//
//  Created by Dan Zhang on 10/13/12.
//  Copyright (c) 2012 Dan Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NotesTextFile.h"

@interface NotesDetailViewController : UIViewController
@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UITextView *noteField;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
