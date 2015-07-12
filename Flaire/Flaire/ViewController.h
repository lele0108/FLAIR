//
//  ViewController.h
//  Flaire
//
//  Created by Zuhayeer Musa on 7/11/15.
//  Copyright (c) 2015 Zuhayeer Musa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UAProgressView.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UAProgressView *spinnyThing;
@property (strong, nonatomic) IBOutlet UILabel *percentageMarker;
@property (strong, nonatomic) IBOutlet UAProgressView *outerRing;


@end

