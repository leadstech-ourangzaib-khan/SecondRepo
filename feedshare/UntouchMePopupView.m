//
//  feedscreen_second.m
//  feedshare
//
//  Created by Ourangzaib khan on 2/21/14.
//  Copyright (c) 2014 Ourangzaib khan. All rights reserved.
//

#import "UntouchMePopupView.h"

@implementation UntouchMePopupView
@synthesize image=_image;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    UIImage *imagee = [UIImage imageNamed:@"Untitled-1.png"];
    
    //    const float colorMasking[6]={1,255,2,300,222,100};
    //    imagee = [UIImage imageWithCGImage: CGImageCreateWithMaskingColors(imagee.CGImage, colorMasking)];
    
    self.image.image=imagee;
    self.image.alpha=0.2;

    if (self) {
        // Initialization code
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
