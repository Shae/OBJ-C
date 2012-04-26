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
    
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginBtn != nil)
    {
        loginBtn.frame = CGRectMake(220.0f, 70.0f, 80.0f, 40.0f);
        loginBtn.tintColor = [UIColor yellowColor];
        [loginBtn setTitle: @"Login" forState:UIControlStateNormal];
        loginBtn.tag = 0;
        [loginBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginBtn];
    }
    
    
    UIButton *dateBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateBtn != nil)
    {
        dateBtn.frame = CGRectMake(20.0f, 260.0f, 80.0f, 40.0f);
        dateBtn.tintColor = [UIColor yellowColor];
        [dateBtn setTitle: @"Get Date" forState:UIControlStateNormal];
        dateBtn.tag = 1;
        [dateBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateBtn];
    }
    
    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if (infoBtn != nil)
    {
        infoBtn.frame = CGRectMake(240.0f, 400.0f, 80.0f, 40.0f);
        infoBtn.tintColor = [UIColor yellowColor];
        [infoBtn setTitle: nil forState:UIControlStateNormal];
        infoBtn.tag = 2;
        [infoBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoBtn];
    }
    
    

    
	// Do any additional setup after loading the view, typically from a nib.
}




-(void)onClick:(UIButton*)button {
    if (button.tag == 0){
        
        if (username.text.length >= 1){
            NSString *message1 = [[NSString alloc] initWithFormat:@" User: %@ has logged in.", username.text];
            PrintLabel.text = message1 ;
            [username resignFirstResponder];
        }else {

            PrintLabel.text = @"Please enter Login ID" ;
            [username resignFirstResponder];
        }
    }else if(button.tag == 1){
        NSDate *date = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil) {
            //[dateFormatter setDateStyle:NSDateFormatterFullStyle];  // Doesn't work!!!!
            [dateFormatter setDateFormat:@"EEEE, MMMM dd, yyyy hh:mm:ss a  zzzz"];
        }
        NSString *DateNow = [dateFormatter stringFromDate:date];
        [self displayAlertWithString:DateNow]; 
        
    }else if(button.tag == 2){
        NSString *myInfo = @"This application was written by Shae Klusman.";
        infoLabel.text = myInfo;
        
    }
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
/*
- (IBAction)login:(id)sender {
    if (username.text != nil){
        NSString *message1 = [[NSString alloc] initWithFormat:@" User: %@ has logged in.", username.text];
        PrintLabel.text = message1 ;
    }
    
}
*/
- (IBAction)HiddenBtn:(id)sender {
    [username resignFirstResponder];
  
}




- (void)displayAlertWithString:(NSString *)StringIN{
    UIAlertView *alert = [[UIAlertView alloc] 
                          initWithTitle:@"Date" 
                          message:StringIN 
                          delegate:nil 
                          cancelButtonTitle:@"Ok Fine!" 
                          otherButtonTitles:nil];
    [alert show];
}
 

/*
- (IBAction)ShowDateBtn:(id)sender {
         NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    if (dateFormatter != nil) {
        //[dateFormatter setDateStyle:NSDateFormatterFullStyle];  // Doesn't work!!!!
        [dateFormatter setDateFormat:@"MMMM dd, yyyy    hh:mm:ss a    zzzz"];
    }
    NSString *DateNow = [dateFormatter stringFromDate:date];
    [self displayAlertWithString:DateNow]; 
}

- (IBAction)infoBtn:(id)sender {
    NSString *myInfo = @"This application was written by Shae Klusman.";
    infoLabel.text = myInfo;
}*/
@end
