//
//  ViewController.m
//  HardwareResources
//
//  Created by Marecki on 18/11/2017.
//  Copyright © 2017 Marecki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)canBecomeFirstResponder {
    return YES;
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}


- (void)viewWillDisappear:(BOOL)animated {
    [self resignFirstResponder];
    [super viewWillDisappear:animated];
}


- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        self.shakeLabel.textColor = [UIColor blueColor];
        self.shakeLabel.text = NSLocalizedString(@"Shaky shaky", nil);
    }
}


- (IBAction)tapGesture:(UITapGestureRecognizer *)sender {
    self.gestureLabel.text = NSLocalizedString(@"Made tap gesture!", nil);
}


- (IBAction)pinchGesture:(UIPinchGestureRecognizer *)sender {
    self.gestureLabel.text = NSLocalizedString(@"Made pinch gesture!", nil);
}


- (IBAction)swipeGesture:(UISwipeGestureRecognizer *)sender {
    self.gestureLabel.text = NSLocalizedString(@"Made swipe gesture!", nil);
}


- (IBAction)longPressGesture:(UILongPressGestureRecognizer *)sender {
    self.gestureLabel.text = NSLocalizedString(@"Made long press gesture!", nil);
}


@end
