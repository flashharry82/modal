//
//  ViewController.m
//  modal
//
//  Created by Alan Stirling on 20/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize defaultButton;
@synthesize flipButton;
@synthesize dissolveButton;
@synthesize curlButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDefaultButton:nil];
    [self setFlipButton:nil];
    [self setDissolveButton:nil];
    [self setCurlButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)showDefault:(id)sender {
    secondViewController *secondView = [secondViewController new];
    [self presentModalViewController:secondView animated:YES];
}

- (IBAction)showFlip:(id)sender {
    secondViewController *secondView = [secondViewController new];
    [secondView setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentModalViewController:secondView animated:YES];
}

- (IBAction)showDissolve:(id)sender {
    secondViewController *secondView = [secondViewController new];
    [secondView setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentModalViewController:secondView animated:YES];
}

- (IBAction)showCurl:(id)sender {
    secondViewController *secondView = [secondViewController new];
    [secondView setModalTransitionStyle:UIModalTransitionStylePartialCurl];
    [self presentModalViewController:secondView animated:YES];
}

@end
