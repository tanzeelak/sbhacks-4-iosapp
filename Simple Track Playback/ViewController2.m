//
//  ViewController2.m
//  Simple Track Playback
//
//  Created by Gestina on 1/20/18.
//  Copyright © 2018 Your Company. All rights reserved.
//

#import "Config.h"
#import "ViewController2.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController2 () <CLLocationManagerDelegate>


@property (nonatomic, strong) CLLocationManager *locationManager;




@end

@implementation ViewController2
 CLLocationManager *locationManager;
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    locationManager = [[CLLocationManager alloc] init];}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    UIAlertView *errorAlert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"There was an error retrieving your location" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [errorAlert show];
    NSLog(@"Error: %@",error.description);
}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *crnLoc = [locations lastObject];
    _latitude.text = [NSString stringWithFormat:@"%.8f",crnLoc.coordinate.latitude]; 
    _longitude.text = [NSString stringWithFormat:@"%.8f",crnLoc.coordinate.longitude];
    _altitude.text = [NSString stringWithFormat:@"%.0f m",crnLoc.altitude];
    _speed.text = [NSString stringWithFormat:@"%.1f m/s", crnLoc.speed];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}



@end
