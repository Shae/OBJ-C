//
//  ViewController.m
//  OBJC1-Wk2
//
//  Created by Shae Klusman on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor blackColor];
    
    
    ////////////TITLE///////////////
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 40)];
    if (bookTitle != nil) {
        bookTitle.text = @"SIR FARTSALOT";
        bookTitle.textColor = [UIColor blueColor];
        bookTitle.backgroundColor = [UIColor greenColor];
        bookTitle.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview: bookTitle];
    ////////////////////////////////
    
    //////////AUTHOR LABEL////////////
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 70, 100, 20)];
    if (authorLabel != nil) {
        authorLabel.text = @"Author: ";
        authorLabel.textColor = [UIColor yellowColor];
        authorLabel.backgroundColor = [UIColor redColor];
        authorLabel.textAlignment = UITextAlignmentRight;
    }
    [self.view addSubview: authorLabel];
    ////////////////////////////////
    
    ////////////AUTHOR///////////////
    bookAuthor = [[UILabel alloc] initWithFrame:CGRectMake(110, 70, 140, 20)];
    if (bookAuthor != nil) {
        bookAuthor.text = @" Kevin Bolger";
        bookAuthor.textColor = [UIColor redColor];
        bookAuthor.backgroundColor = [UIColor yellowColor];
        bookAuthor.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview: bookAuthor];
    ////////////////////////////////
    
    
    ////////PUBLISHED LABEL//////////
    pubLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 110, 100, 20)];
    if (pubLabel != nil) {
        pubLabel.text = @"Published: ";
        pubLabel.textColor = [UIColor greenColor];
        pubLabel.backgroundColor = [UIColor purpleColor];
        pubLabel.textAlignment = UITextAlignmentRight;
    }
    [self.view addSubview: pubLabel];
    ////////////////////////////////
    
    
    ////////////PUBLISHED/////////////
    pubDate = [[UILabel alloc] initWithFrame:CGRectMake(110, 110, 140, 20)];
    if (pubDate != nil) {
        pubDate.text = @" 2008";
        pubDate.textColor = [UIColor purpleColor];
        pubDate.backgroundColor = [UIColor greenColor];
        pubDate.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview: pubDate];
    ////////////////////////////////
    
    ////////SUMMARY LABEL//////////
    sumLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, 100, 20)];
    if (sumLabel != nil) {
        sumLabel.text = @" Summary: ";
        sumLabel.textColor = [UIColor orangeColor];
        sumLabel.backgroundColor = [UIColor whiteColor];
        sumLabel.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview: sumLabel];
    ////////////////////////////////
    
    ////////////SUMMARY/////////////
    bookSum = [[UILabel alloc] initWithFrame:CGRectMake(10, 170, 300, 140)];
    if (bookSum != nil) {
        bookSum.text = @"The Kingdom of Armpit is in trouble!  A frightful BOOGER is on the loose, and it's sliming everyone who gets in its way!  Help Sir Fartsalot save the Kingdom, but beware...  the BOOGER could be right under your nose!";
        bookSum.textColor = [UIColor whiteColor];
        bookSum.backgroundColor = [UIColor orangeColor];
        bookSum.textAlignment = UITextAlignmentCenter;
        bookSum.numberOfLines = 7;
    }
    [self.view addSubview: bookSum];
    ////////////////////////////////
    
    
    
    ////////LIST LABEL//////////
    listLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 330, 150, 20)];
    if (listLabel != nil) {
        listLabel.text = @" List of Items: ";
        listLabel.textColor = [UIColor redColor];
        listLabel.backgroundColor = [UIColor purpleColor];
        listLabel.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview: listLabel];

    NSArray *itemsArray = [[NSArray alloc] initWithObjects:@"Boogers", @"Scoundrels", @"Phlegm", @"Trolls", @"Princesses", nil];
    NSMutableArray *mutArray = [[NSMutableArray alloc] initWithArray:itemsArray];
    
    
    ////////////LIST/////////////
    list = [[UILabel alloc] initWithFrame:CGRectMake(10, 350, 300, 50)];
    
    if (list != nil) {
        list.text = [NSString stringWithFormat:@"%@, %@, %@, %@ and %@", [mutArray objectAtIndex:0], [mutArray objectAtIndex:1], [mutArray objectAtIndex:2], [mutArray objectAtIndex:3], [mutArray objectAtIndex:4] ];
        list.textColor = [UIColor purpleColor];
        list.backgroundColor = [UIColor redColor];
        list.textAlignment = UITextAlignmentCenter;
        list.numberOfLines = 5;
    }    
    [self.view addSubview: list];
    ////////////////////////////////
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
