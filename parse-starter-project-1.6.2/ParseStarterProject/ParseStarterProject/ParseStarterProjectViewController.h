//
//  ParseStarterProjectViewController.h
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface ParseStarterProjectViewController : UIViewController

// Text Fields
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *locField;

// Symptom Buttons
@property (weak, nonatomic) IBOutlet UIButton *bleedButton;
@property BOOL isBleeding;

@property (weak, nonatomic) IBOutlet UIButton *abButton;
@property BOOL hasAbPain;

@property (weak, nonatomic) IBOutlet UIButton *headButton;
@property BOOL hasHeadache;

@property (weak, nonatomic) IBOutlet UIButton *breatheButton;
@property BOOL troubleBreathe;

@property (weak, nonatomic) IBOutlet UIButton *feverButton;
@property BOOL hasFever;

@property (weak, nonatomic) IBOutlet UIButton *bladderButton;
@property BOOL hasBladProbs;


@property (weak, nonatomic) IBOutlet UIButton *doneButton;

@end
