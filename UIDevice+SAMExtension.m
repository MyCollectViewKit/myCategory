//
//  UIDevice+SAMExtension.m
//  LianZi
//
//  Created by samMini on 16/7/17.
//  Copyright © 2016年 com.cvtt. All rights reserved.
//

#import "UIDevice+SAMExtension.h"

@implementation UIDevice (SAMExtension)

static CGFloat iphone4x_width = 320.f;
static CGFloat iphone4x_height = 480.f;

static CGFloat iphone5x_width = 320.f;
static CGFloat iphone5x_height = 568.f;

static CGFloat iphone6x_width = 375.f;
static CGFloat iphone6x_height = 667.f;

static CGFloat iphone6plus_width = 414.f;
static CGFloat iphone6plus_height = 736.f;


- (SAM_UIDeviceType)deviceType
{
    
#warning todo
    
    CGRect rect = [UIScreen mainScreen].bounds;
    CGSize size = rect.size;
    CGFloat width = size.width;
    CGFloat height = size.height;
    
    if (width == iphone4x_width && height == iphone4x_height) {
        return SAM_UIDeviceType_4x;
    }
    
    if (width == iphone5x_width && height == iphone5x_height) {
        return SAM_UIDeviceType_5x;
    }
    
    if (width == iphone6x_width && height == iphone6x_height) {
        return SAM_UIDeviceType_6x;
    }
    
    if (width == iphone6plus_width && height == iphone6plus_height) {
        return SAM_UIDeviceType_6plus;
    }
    
    return 0;
}

@end
