//
//  NotesDetailViewController.m
//  Temp
//
//  Created by Dan Zhang on 10/13/12.
//  Copyright (c) 2012 Dan Zhang. All rights reserved.
//

#import "NotesDetailViewController.h"

@interface NotesDetailViewController ()
- (void)configureView;

@end

@implementation NotesDetailViewController

@synthesize detailItem = _detailItem;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (IBAction)savePressed:(UIBarButtonItem *)sender {
    NotesTextFile *temp = self.detailItem;
    temp.text = self.noteField.text;
    self.detailItem = temp;
    [self.noteField resignFirstResponder];
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem date] description];
        self.noteField.text = [self.detailItem text];
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
