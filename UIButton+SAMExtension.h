//
//  UIButton+SAMExtension.h
//  LianZi
//
//  Created by samMini on 16/8/23.
//  Copyright © 2016年 com.cvtt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (SAMExtension)

/**
 *  重复点击的间隔
 */
@property (nonatomic, assign) NSTimeInterval sam_acceptEventInterval;



@property (nonatomic, assign) NSTimeInterval sam_acceptEventTime;



@end
