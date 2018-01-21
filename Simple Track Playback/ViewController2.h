//
//  ViewController2.h
//  Simple Track Playback
//
//  Created by Gestina on 1/20/18.
//  Copyright © 2018 Your Company. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <SpotifyAudioPlayback/SpotifyAudioPlayback.h>




@interface ViewController2 : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *longitude;
@property (weak, nonatomic) IBOutlet UILabel *latitude;
@property (weak, nonatomic) IBOutlet UILabel *altitude;
@property (weak, nonatomic) IBOutlet UILabel *speed;
- (IBAction)getCurrentLocation:(id)sender;


@end


