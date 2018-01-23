//
//  ViewController.m
//  PoliceSketch
//
//  Created by Sam Meech-Ward on 2017-10-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "LHLViewController.h"
#import "PoliceSketchData.h"

@interface LHLViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *eyeImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;

@property (strong, nonatomic) PoliceSketchData *policeSketchData; //property of another class to be used & set to PoliceSketchData instance

- (IBAction)previousEyeImageButton;
- (IBAction)nextEyeImageButton;
- (IBAction)previousNoseImageButton;
- (IBAction)nextNoseImageButton;
- (IBAction)previousMouthImageButton;
- (IBAction)nextMouthImageButton;

@end

@implementation LHLViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // IMPORTANT!!!! in order for instance to be excessed outside of the scope, you need to make a property of PoliceSketchData
    
    self.policeSketchData = [[PoliceSketchData alloc] init];
    
    //code to set up initial image when loading
    UIImage *image = self.policeSketchData.eyesImages[0];
    self.eyeImageView.image = image;
    self.noseImageView.image = self.policeSketchData.noseImages[0];

}

- (IBAction)previousEyeImageButton {

    self.eyeImageView.image = [self.policeSketchData previousEyeImage];
}

- (IBAction)nextEyeImageButton {
    
    self.eyeImageView.image = [self.policeSketchData nextEyeImage];
}

- (IBAction)previousNoseImageButton {
    
    self.noseImageView.image = [self.policeSketchData previousNoseImage];
}

- (IBAction)nextNoseImageButton {
    
    self.noseImageView.image = [self.policeSketchData nextNoseImage];
}

- (IBAction)previousMouthImageButton {
    
    self.mouthImageView.image = [self.policeSketchData previousMouthImage];
}

- (IBAction)nextMouthImageButton {
    
    self.mouthImageView.image = [self.policeSketchData nextMouthImage];
}



@end
