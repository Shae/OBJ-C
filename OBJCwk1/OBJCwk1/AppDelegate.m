//
//  AppDelegate.m
//  OBJCwk1
//
//  Created by Shae Klusman on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
    
    float myFloat = 67.890f;
    int myInt = (int)myFloat;  // Casting my Float to an Int
    BOOL myBool = YES;  // Learned off Lynda.com that Boolean in OBJ-C is now suppose to be in all CAPS and with a YES or NO
    float a = 0.1;
    int b = 1;
    char score = 'A';
    
    
    
    ///// Hello Line /////
    NSLog(@"Good afternoon Mrs. Jones;");
    NSLog(@"The following information is for my Objective-C Week 1 assignment.  I hope you like it.");
    NSLog(@"This is the story of what I have learned this week.  It may be dry but I wanted you to truly understand how excited I am about this class and this subject!");
    NSLog(@"--------------------------------------------------------------------------------------");
    NSLog(@"So, I actually started out studying for this class on Friday, before we ever got our assignments.  I watched the full \"iOS SDK Essentials\" course on Lynda.com and a few other iOS videos over the weekend along with reading the first 9 Chapters of the Objective-C Programming book already.");
  
    
    
    
    ///// Float Cast /////
   // NSLog(@" ------float cast to Int------");
    NSLog(@" I learned how to take a FLOAT ( %f ) and turn it into a INT, like this( %d )!", myFloat, myInt);
    
    
    
    
    ///// Boolean "if / else if / else" check /////
   // NSLog(@" ------Boolean if/else if/else check.------");
    if (myBool == YES)
    {
        NSLog(@"YES, I even learned how to write a boolean, \"IF / ELSE IF / ELSE\", checks also!");
    }
    else if ( myBool == NO)
    {
        NSLog(@"NO, I did not learn how to write a boolean check properly");
    }
    else
    {
        NSLog(@"I really must have messed this boolean check up!");
    }
    
    if((myBool == YES) || (myBool == NO))
    {
        NSLog(@"But throwing an \"OR\" COMPARISON into a Boolean was kind of boring, but I had to use it." );
    }
    
    
    ///// For Loop ////
    //NSLog(@"------For Loop Test------");
    NSLog(@"I also learned how to write an Objective-C \"FOR LOOP\" from your videos!  So I decided to build a loop using the INT CAST from my FLOAT earlier in this story to try and make it tricky.");
    for ( int x = myInt; x <= 75; x++)
    {
        NSLog(@"%d of 75", x );
    }
    
    
    
    
    ///// Nested loop /////
    //NSLog(@"------Nested Loop Example------");
    NSLog(@"And then I decided to take it one more step and really challenge myself.  I built a FOR LOOP, with a NESTED FOR LOOP and added a few, IF / ELSE IF checks, along the way.  Oh, and of course I had to use up a COMPARISON.");
    
    for ( int z = myInt; z >= 55; z--)
    {
        
         NSLog(@"My Loop is at %d while counting down to 55.", z);
        
        ///// Nested for Loop /////
        for ( int w = 1 ; w <= 3; w++)
        {
            NSLog(@" Nested Loop, %d", w);
        }
        
        
        ///// Nested "if/else if" //////
        if ( z == 60 )
        {
            NSLog(@"-->Nested IF...  5");
        }
        else if (z == 59)
        {
            NSLog(@"-->Nested IF...   4");
        }
        else if (z == 58)
        {
            NSLog(@"-->Nested IF...  3");
        }
        else if (z == 57)
        {
            NSLog(@"-->Nested IF...   2");
        }
        else if (z == 56)
        {
            NSLog(@"-->Nested IF...   1");
        }
        else if (z == 55)
        {
            NSLog(@"-->Nested IF...  DONE");
        }
        
        if ((z == 60) || ( z == 55)) // OR COMPARISON
        {
            NSLog(@"LOOKY!  An  \"OR\" COMPARISON out of nowhere!  Sneaky...");
        }
       
        
    }
    
    
    
    
    ///// While Loop //////
    
    NSLog(@"By this time I was on cloud-nine and so extremely surprised that I could actually write this so quickly and that I could actually read it, so I decided to try and hold my breath while I wrote my next code!" );
    NSLog(@" *huuuphhh * ");
   // NSLog(@"------While Loop------");
    NSLog(@"And WHILE I was holding my breath I counted count up from 1:");
    while (b < 6)
    {
        NSLog(@" %d", b  );
        b++;
    }  
    
    
    
    
    ///// Do While Loop //////
    NSLog(@"I didn't quite make the whole \"holding my breath thing\" on the last code and get it tested, but I was close. So to punish myself I decided to try and write a DO WHILE LOOP using a FLOATING POINT INT, filtered to only 2 numbers after the decimal point AND throw in a COMPARISON along the way.  ooooh skillz!");
   // NSLog(@"------Do While Loop------");
    
    do {
        NSLog(@"Do While (less then 1). Example: %0.2f.", a  );
        
        if (( a > 0.35) && ( a < 0.55))
        {
            NSLog(@"--->\"&&\" FLOAT COMPARISON (If Greater than 0.35, AND Less than 0.55)");        
        } 
        
        a += 0.08;
           
        } while (a < 1);   
    
    
    NSLog(@"All-in-all, I am very pleased with my progress so far here at Full Sail, and I might not be as \"Code Stupid\" as I first believed. But, i do suck at coming up with stories on the fly after cramming so much into my head so quickly!  All I see are App ideas and code strings.  Yummmm...  code strings!");
    NSLog(@"Man I hope I get an \"%c\" on this project!", score);
    NSLog(@"Thank you for your time and I look forward to working with you more this month.");
    

    
    
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
    
    

    
    
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
