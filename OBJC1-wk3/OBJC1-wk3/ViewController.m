//
//  ViewController.m
//  OBJC1-wk3
//
//  Created by Shae Klusman on 4/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
//


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    red = 30;
    blue = 32;
    addTotal = [self ADD:red with:blue];
    Total = [[NSNumber alloc] initWithInt:addTotal];
    message = [NSString stringWithFormat:@"The numbers %d and %d added together is ", red, blue];
    TotalString = [Total stringValue];
    alertString = [self APPEND:message with:TotalString]; 
    String1 = @"My 1st String. ";
    String2 = @"My 2nd String. ";
    myNewString = [self APPEND:String1 with:String2];
    
    
    
    [self displayAlertWithString:alertString];  
    [self displayAlertWithString:myNewString];
    [self COMPARE:red with:blue];   
    
    [super viewDidLoad];
}



-(int)ADD:(int)numberX with:(int)numberY{
    return numberX + numberY;
}


-(BOOL)COMPARE:(int)numberX with:(int)numberY{
    
    sameYES = [NSString stringWithFormat:@"Are the numbers %d and %d the same? YES", red, blue ];
    sameNO = [NSString stringWithFormat:@"Are the numbers %d and %d the same? NO", red, blue ];      
    if (numberX == numberY) {
         compValue = @"YES";        
        [self displayAlertWithString:sameYES];
       
    }else{
        compValue = @"NO";        
        [self displayAlertWithString:sameNO]; 
        
    }
    return 0;
   
}


-(NSString *)APPEND:(NSString*)str1 with:(NSString*)str2{
    NSMutableString *appendedString = [NSMutableString stringWithString:str1];
    NSString *string = [appendedString stringByAppendingString:str2];
    return string;
}


-(void)displayAlertWithString:(NSString *)StringIN{
    UIAlertView *alert = [[UIAlertView alloc] 
      initWithTitle:@"-Attention-" 
      message:StringIN 
      delegate:nil 
      cancelButtonTitle:@"Ok Fine!" 
      otherButtonTitles:nil];
    [alert show];
}




- (void)viewDidUnload
{
    [super viewDidUnload];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
