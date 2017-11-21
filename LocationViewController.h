//
//  LocationViewController.h
//  HardwareResources
//
//  Created by Marecki on 20/11/2017.
//  Copyright © 2017 Marecki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationViewController : UIViewController <CLLocationManagerDelegate>

@property (nonatomic, weak) IBOutlet UILabel *latitude;
@property (nonatomic, weak) IBOutlet UILabel *longitude;
@property (nonatomic, weak) IBOutlet UILabel *address;

- (IBAction)setCurrentLocation:(id)sender;

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error;

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(nonnull CLLocation *)newLocation fromLocation:(nonnull CLLocation *)oldLocation;

@end
