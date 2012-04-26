//
//  ViewController.h
//  OBJC1-wk4
//
//  Created by Shae Klusman on 4/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UILabel *PrintLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
//- (IBAction)login:(id)sender;
//- (IBAction)HiddenBtn:(id)sender;
//- (IBAction)ShowDateBtn:(id)sender;
//- (IBAction)infoBtn:(id)sender;
- (void)displayAlertWithString:(NSString*)StringIN;
- (void)onClick:(UIButton*)button;



@end
