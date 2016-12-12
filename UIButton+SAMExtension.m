//
//  UIButton+SAMExtension.m
//  LianZi
//
//  Created by samMini on 16/8/23.
//  Copyright © 2016年 com.cvtt. All rights reserved.
//

#import "UIButton+SAMExtension.h"
#import "NSObject+SAMExtension.h"
#import <objc/runtime.h>


static const void * kUIControl_acceptEventInterval = &kUIControl_acceptEventInterval;

static const void * kUIControl_acceptEventTime = &kUIControl_acceptEventTime;


@implementation UIButton (SAMExtension)

+ (void)load
{
    SEL sendAction = @selector(sendAction:to:forEvent:);
    SEL my_sendAction = @selector(my_sendAction:to:forEvent:);
    [self swizzleInstanceSelecterWithOriginalSEL:sendAction mySEL:my_sendAction];
    
}


- (NSTimeInterval)sam_acceptEventInterval
{
//    return 0.25;
    return  [objc_getAssociatedObject(self, kUIControl_acceptEventInterval) doubleValue];
}

- (void)setSam_acceptEventInterval:(NSTimeInterval)sam_acceptEventInterval
{
    objc_setAssociatedObject(self, kUIControl_acceptEventInterval, @(sam_acceptEventInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (NSTimeInterval)sam_acceptEventTime
{
    return  [objc_getAssociatedObject(self, kUIControl_acceptEventTime) doubleValue];
}

- (void)setSam_acceptEventTime:(NSTimeInterval)sam_acceptEventTime
{
    objc_setAssociatedObject(self, kUIControl_acceptEventTime, @(sam_acceptEventTime), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)my_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    if ([NSDate date].timeIntervalSince1970 - self.sam_acceptEventTime < self.sam_acceptEventInterval) {
        return;
    }
    
    if (self.sam_acceptEventInterval > 0) {
        self.sam_acceptEventTime = [NSDate date].timeIntervalSince1970;
    }
    
    [self my_sendAction:action to:target forEvent:event];
}


@end



