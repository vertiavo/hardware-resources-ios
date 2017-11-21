//
//  ViewController.h
//  HardwareResources
//
//  Created by Marecki on 18/11/2017.
//  Copyright © 2017 Marecki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *shakeLabel;
@property (nonatomic, weak) IBOutlet UILabel *gestureLabel;

- (IBAction)tapGesture:(UITapGestureRecognizer *)sender;

- (IBAction)pinchGesture:(UIPinchGestureRecognizer *)sender;

- (IBAction)swipeGesture:(UISwipeGestureRecognizer *)sender;

- (IBAction)longPressGesture:(UILongPressGestureRecognizer *)sender;

@end

