//
//  ViewController.m
//  OBJC1-wk4
//
//  Created by Shae Klusman on 4/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize infoLabel;
@synthesize username;
@synthesize PrintLabel;

- (void)viewDidLoad
{
    // Login.tintcolor = [UIColor redColor];
   // onClick.backgroundcolor = [UIColor redColor];     [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setUsername:nil];
    [self setPrintLabel:nil];
    [self setInfoLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)onClick:(id)sender {
    if (username.text != nil){
        NSString *message1 = [[NSString alloc] initWithFormat:@" User: %@ has logged in.", username.text];
        PrintLabel.text = message1 ;
    }
    
}

- (IBAction)HiddenBtn:(id)sender {
    [username resignFirstResponder];
  
}

-(void)displayAlertWithString:(NSString *)StringIN{
    UIAlertView *alert = [[UIAlertView alloc] 
                          initWithTitle:@"Date" 
                          message:StringIN 
                          delegate:nil 
                          cancelButtonTitle:@"Ok Fine!" 
                          otherButtonTitles:nil];
    [alert show];
}

- (IBAction)ShowDateBtn:(id)sender {
         NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    if (dateFormatter != nil) {
        //[dateFormatter setDateStyle:NSDateFormatterFullStyle];
        [dateFormatter setDateFormat:@"MMMM dd, yyyy    hh:mm:ss a    zzzz"];
    }
    NSString *DateNow = [dateFormatter stringFromDate:date];
    [self displayAlertWithString:DateNow]; 
}

- (IBAction)infoBtn:(id)sender {
    NSString *myInfo = @"This application was written by Shae Klusman.";
    infoLabel.text = myInfo;
}
@end
