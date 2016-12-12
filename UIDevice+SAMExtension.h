//
//  UIDevice+SAMExtension.h
//  LianZi
//
//  Created by samMini on 16/7/17.
//  Copyright © 2016年 com.cvtt. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, SAM_UIDeviceType) {
    SAM_UIDeviceType_4x = 1,
    SAM_UIDeviceType_5x,
    SAM_UIDeviceType_6x,
    SAM_UIDeviceType_6plus
};


@interface UIDevice (SAMExtension)

@property (nonatomic, assign , readonly) SAM_UIDeviceType deviceType;


@end
