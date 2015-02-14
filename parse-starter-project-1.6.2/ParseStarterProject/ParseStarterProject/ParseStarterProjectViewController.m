//
//  ParseStarterProjectViewController.m
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

#import "ParseStarterProjectViewController.h"

#import <Parse/Parse.h>

@implementation ParseStarterProjectViewController

#pragma mark -
#pragma mark UIViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    NSLog(@"VC view did load");
    [super viewDidLoad];
    _isBleeding = NO;
    _hasAbPain = NO;
    _hasHeadache = NO;
    _troubleBreathe = NO;
    _hasFever = NO;
    _hasBladProbs = NO;
    
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];

    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

// Flipping button state
- (IBAction)bleedButton:(id)sender {
    if (_isBleeding == NO) {
        _isBleeding = YES;
        _bleedButton.backgroundColor = [UIColor colorWithRed:(157/255.0) green:(255.0/255.0) blue:(215/255.0) alpha:1];
    }
    else if (_isBleeding == YES){
        _isBleeding = NO;
        _bleedButton.backgroundColor = [UIColor whiteColor];
    }
}

- (IBAction)abButton:(id)sender {
    if (_hasAbPain == NO) {
        _hasAbPain = YES;
        _abButton.backgroundColor = [UIColor colorWithRed:(157/255.0) green:(255.0/255.0) blue:(215/255.0) alpha:1];
    }
    else if (_hasAbPain == YES){
        _hasAbPain = NO;
        _abButton.backgroundColor = [UIColor whiteColor];
    }
    
}

- (IBAction)headButton:(id)sender {
    if (_hasHeadache == NO) {
        _hasHeadache = YES;
        _headButton.backgroundColor = [UIColor colorWithRed:(157/255.0) green:(255.0/255.0) blue:(215/255.0) alpha:1];
    }
    else if (_hasHeadache == YES){
        _hasHeadache = NO;
        _headButton.backgroundColor = [UIColor whiteColor];
    }
    
}

- (IBAction)breatheButton:(id)sender {
    if (_troubleBreathe == NO) {
        _troubleBreathe = YES;
        _breatheButton.backgroundColor = [UIColor colorWithRed:(157/255.0) green:(255.0/255.0) blue:(215/255.0) alpha:1];
    }
    else if (_troubleBreathe == YES){
        _troubleBreathe = NO;
        _breatheButton.backgroundColor = [UIColor whiteColor];
    }
}

- (IBAction)feverButton:(id)sender {
    if (_hasFever == NO) {
        _hasFever = YES;
        _feverButton.backgroundColor = [UIColor colorWithRed:(157/255.0) green:(255.0/255.0) blue:(215/255.0) alpha:1];
    }
    else if (_hasFever == YES){
        _hasFever = NO;
        _feverButton.backgroundColor = [UIColor whiteColor];
    }
}

- (IBAction)bladderButton:(id)sender {
    if (_hasBladProbs == NO) {
        _hasBladProbs = YES;
        _bladderButton.backgroundColor = [UIColor colorWithRed:(157/255.0) green:(255.0/255.0) blue:(215/255.0) alpha:1];
    }
    else if (_hasBladProbs == YES){
        _hasBladProbs = NO;
        _bladderButton.backgroundColor = [UIColor whiteColor];
    }
}


- (IBAction)doneButton:(id)sender {
    NSString *momName = _nameField.text;
    NSString *momLoc  = _locField.text;
    
    // Casting bool to string
    NSString *momIsBleeding;
    
    if(_isBleeding == YES){
        momIsBleeding = @"YES";
    }
    if(_isBleeding == NO){
        momIsBleeding = @"NO";
    }
    
    NSString *momHasAbPain;
    
    if(_hasAbPain == YES){
        momHasAbPain = @"YES";
    }
    if(_hasAbPain == NO){
        momHasAbPain = @"NO";
    }
    
    NSString *momHasHeadache;
    if(_hasHeadache == YES){
        momHasHeadache = @"YES";
    }
    if(_hasHeadache == NO){
        momHasHeadache = @"NO";
    }
    
    NSString *momTroubleBreathe;
    if(_troubleBreathe == YES){
        momTroubleBreathe = @"YES";
    }
    if(_troubleBreathe == NO){
        momTroubleBreathe = @"NO";
    }

    NSString *momHasFever;
    if(_hasFever == YES){
        momHasFever = @"YES";
    }
    if(_hasFever == NO){
        momHasFever = @"NO";
    }
    
    NSString *momHasBladProbs;
    if(_hasBladProbs == YES){
        momHasBladProbs = @"YES";
    }
    if(_hasBladProbs == NO){
        momHasBladProbs = @"NO";
    }
    
    // Uploading data to Parse
    PFObject *momStats = [PFObject objectWithClassName:@"momStats"];
    momStats[@"Name"] = momName;
    momStats[@"Location"] = momLoc;
    momStats[@"isBleeding"] = momIsBleeding;
    momStats[@"hasAbPain"] = momHasAbPain;
    momStats[@"hasHeadache"] = momHasHeadache;
    momStats[@"troubleBreathing"] = momTroubleBreathe;
    momStats[@"hasFever"] = momHasFever;
    momStats[@"hasBladderProblem"] = momHasBladProbs;
    [momStats saveInBackground];
    
    
    // Reset all buttons to initial state
    _isBleeding = NO;
    _bleedButton.backgroundColor = [UIColor whiteColor];
    _hasAbPain = NO;
    _abButton.backgroundColor = [UIColor whiteColor];
    _hasHeadache = NO;
    _headButton.backgroundColor = [UIColor whiteColor];
    _troubleBreathe = NO;
    _breatheButton.backgroundColor = [UIColor whiteColor];
    _hasFever = NO;
    _feverButton.backgroundColor = [UIColor whiteColor];
    _hasBladProbs = NO;
    _bladderButton.backgroundColor = [UIColor whiteColor];
 
    
    // Reset text fields
    _nameField.text = @"";
    _locField.text = @"";
}

@end
