//
//  NSString+WQExtension.m
//  LianZi
//
//  Created by 王先强 on 16/7/5.
//  Copyright © 2016年 com.cvtt. All rights reserved.
//

#import "NSString+WQExtension.h"

@implementation NSString (WQExtension)

- (NSString *)URLEncodedString
{
    NSString *encodedString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                                                                    (CFStringRef)self,
                                                                                                    (CFStringRef)@"!$&'()*+,-./:;=?@_~%#[]",
                                                                                                    NULL,
                                                                                                    kCFStringEncodingUTF8));
    return encodedString;
}

@end
