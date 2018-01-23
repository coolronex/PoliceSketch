//
//  PoliceSketchData.h
//  PoliceSketch
//
//  Created by Aaron Chong on 1/22/18.
//  Copyright © 2018 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PoliceSketchData : NSObject

@property (nonatomic) NSArray *eyesImages;
@property (nonatomic) NSArray *noseImages;
@property (nonatomic) NSArray *mouthImages;

@property (nonatomic) NSInteger currentEyeImage;
@property (nonatomic) NSInteger currentNoseImage;
@property (nonatomic) NSInteger currentMouthImage;


- (UIImage *) nextEyeImage;
- (UIImage *) previousEyeImage;

- (UIImage *) nextNoseImage;
- (UIImage *) previousNoseImage;

- (UIImage *) nextMouthImage;
- (UIImage *) previousMouthImage;

@end
