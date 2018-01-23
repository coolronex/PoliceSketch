//
//  PoliceSketchData.m
//  PoliceSketch
//
//  Created by Aaron Chong on 1/22/18.
//  Copyright © 2018 Sam Meech-Ward. All rights reserved.
//

#import "PoliceSketchData.h"

@implementation PoliceSketchData

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        _eyesImages = @[[UIImage imageNamed:@"eyes_1.jpg"],
                        [UIImage imageNamed:@"eyes_2.jpg"],
                        [UIImage imageNamed:@"eyes_3.jpg"],
                        [UIImage imageNamed:@"eyes_4.jpg"],
                        [UIImage imageNamed:@"eyes_5.jpg"]];
        
        _noseImages = @[[UIImage imageNamed:@"nose_1.jpg"],
                        [UIImage imageNamed:@"nose_2.jpg"],
                        [UIImage imageNamed:@"nose_3.jpg"],
                        [UIImage imageNamed:@"nose_4.jpg"],
                        [UIImage imageNamed:@"nose_5.jpg"]];
        
        _mouthImages = @[[UIImage imageNamed:@"mouth_1.jpg"],
                         [UIImage imageNamed:@"mouth_2.jpg"],
                         [UIImage imageNamed:@"mouth_3.jpg"],
                         [UIImage imageNamed:@"mouth_4.jpg"],
                         [UIImage imageNamed:@"mouth_5.jpg"]];
        
        _currentEyeImage = 0;
        _currentNoseImage = 0;
        _currentMouthImage = 0;
        
    }
    return self;
}

//EYE IMAGES

- (UIImage *) nextEyeImage {
    
    self.currentEyeImage++;
    if (self.currentEyeImage >= [self.eyesImages count]) {
        self.currentEyeImage = 0;
    }
    
    UIImage *eyeImage = [self.eyesImages objectAtIndex:self.currentEyeImage];
    return eyeImage;

    }
        

- (UIImage *) previousEyeImage {
    
    if (self.currentEyeImage == 0) {
        self.currentEyeImage = [self.eyesImages count] - 1;
        
    } else {
        
        self.currentEyeImage--;
    }

    UIImage *eyeImage = [self.eyesImages objectAtIndex:self.currentEyeImage];
    return eyeImage;
    
}

// NOSE IMAGES

- (UIImage *) nextNoseImage {

    self.currentNoseImage++;
    if (self.currentNoseImage >= [self.noseImages count]) {
        self.currentNoseImage = 0;
    }
    
    UIImage *noseImage = [self.noseImages objectAtIndex:self.currentNoseImage];
    return noseImage;
}

- (UIImage *) previousNoseImage {

    if (self.currentNoseImage == 0) {
        self.currentNoseImage = [self.noseImages count] - 1;
        
    } else {
        
        self.currentNoseImage--;
    }
    
    UIImage *noseImage = [self.noseImages objectAtIndex:self.currentNoseImage];
    return noseImage;


}

// MOUTH IMAGES

- (UIImage *) nextMouthImage {

    self.currentMouthImage++;
    if (self.currentMouthImage >= [self.mouthImages count]) {
        self.currentMouthImage = 0;
    }
    
    UIImage *mouthImage = [self.mouthImages objectAtIndex:self.currentMouthImage];
    return mouthImage;
}


- (UIImage *) previousMouthImage {

    if (self.currentMouthImage == 0) {
        self.currentMouthImage = [self.mouthImages count] - 1;
        
    } else {
        
        self.currentMouthImage--;
    }
    
    UIImage *mouthImage = [self.mouthImages objectAtIndex:self.currentMouthImage];
    return mouthImage;
}

@end
