//
//  ViewController.m
//  Flaire
//
//  Created by Zuhayeer Musa on 7/11/15.
//  Copyright (c) 2015 Zuhayeer Musa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.spinnyThing.lineWidth = 25.0;
    self.spinnyThing.fillOnTouch = NO;
    self.spinnyThing.borderWidth = 0.0;
    self.spinnyThing.tintColor = [UIColor colorWithRed:0.82 green:0.11 blue:0.31 alpha:1.0];
    NSNumber *percentCharged = [NSNumber numberWithInt:68];
    
    CGFloat test = 0.68;
    
    [self.spinnyThing setProgress:test animated:YES];
    
    NSString *timeText = [NSString stringWithFormat:@"%@%%", [percentCharged stringValue]];
    self.percentageMarker.text = timeText;
    
    //outerRing
    
    self.outerRing.lineWidth = 25.0;
    self.outerRing.fillOnTouch = NO;
    self.outerRing.borderWidth = 0.0;
    self.outerRing.tintColor = [UIColor colorWithRed:0.22 green:0.06 blue:0.25 alpha:1.0];
    
    CGFloat testOuter = 0.70;
    
    [self.outerRing setProgress:testOuter animated:YES];
    
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(batteryLevelChanged:)
                                                 name:UIDeviceBatteryLevelDidChangeNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(batteryStateChanged:)
                                                 name:UIDeviceBatteryStateDidChangeNotification object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Battery notifications

- (void)updateBatteryLevel
{
    float batteryLevel = [UIDevice currentDevice].batteryLevel;
    NSLog(@"Battery Level %f", batteryLevel);
    if (batteryLevel < 0.0) {
        // -1.0 means battery state is UIDeviceBatteryStateUnknown
    } else {
        
    }
}

- (void)updateBatteryState
{
    UIDeviceBatteryState currentState = [UIDevice currentDevice].batteryState;
    if (currentState == UIDeviceBatteryStateCharging) {
        NSLog(@"Charging");
    }
}

- (void)batteryLevelChanged:(NSNotification *)notification
{
    [self updateBatteryLevel];
}

- (void)batteryStateChanged:(NSNotification *)notification
{
    [self updateBatteryLevel];
    [self updateBatteryState];
}

@end
