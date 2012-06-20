//
//  ViewController.h
//  modal
//
//  Created by Alan Stirling on 20/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *defaultButton;
@property (strong, nonatomic) IBOutlet UIButton *flipButton;
@property (strong, nonatomic) IBOutlet UIButton *dissolveButton;
@property (strong, nonatomic) IBOutlet UIButton *curlButton;

- (IBAction)showDefault:(id)sender;
- (IBAction)showFlip:(id)sender;
- (IBAction)showDissolve:(id)sender;
- (IBAction)showCurl:(id)sender;


@end
