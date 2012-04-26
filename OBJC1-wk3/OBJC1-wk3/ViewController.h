//
//  ViewController.h
//  OBJC1-wk3
//
//  Created by Shae Klusman on 4/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController{
    
    int addTotal;
    int red;
    int blue;
    NSString *String1;
    NSString *String2;
    NSNumber *Total;
    NSString *message;
    NSString *TotalString;
    NSString *alertString;
    NSString *sameYES;
    NSString *sameNO;
    NSString *myNewString;
    NSString *compValue;
    NSString *compString;
}

- (int) ADD:(int)numberX with:(int)numberY;
- (BOOL) COMPARE:(int)numberX with:(int)numberY;
- (NSString*) APPEND:(NSString*)str1 with:(NSString*)str2;
- (void) displayAlertWithString:(NSString*)StringIN;

@end
