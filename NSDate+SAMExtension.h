//
//  NSDate+SAMExtension.h


#import <Foundation/Foundation.h>

@interface NSDate (SAMExtension)



/**
 *  时间戳
 */
@property (nonatomic , copy , readonly) NSString *timeStamp ;

/*
 *  是否是今年
 */
@property (nonatomic , assign , readonly) BOOL isThisYear;

/**
 *  是否是下一年
 */
@property (nonatomic , assign , readonly) BOOL isNextyear;

/**
 *  是否是去年
 */
@property (nonatomic , assign , readonly) BOOL isLastyear;

/*
 *  是否是今天
 */
@property (nonatomic , assign , readonly) BOOL isToday;

/*
 *  是否是昨天
 */
@property (nonatomic , assign , readonly) BOOL isYesterday;

/**
 *  时间成分
 */
@property (nonatomic , copy , readonly) NSDateComponents *components ;


/** 日期字符串 yyyyMMddhhMMss */
@property (nonatomic , copy , readonly) NSString *yyyyMMddhhMMssString ;


/** 日期字符串 yyyyMMdd */
@property (nonatomic , copy , readonly) NSString *yyyyMMddString ;

/**
 *  日期字符串 yyyy年MM月dd日
 */
@property (nonatomic , copy , readonly) NSString *yyyy年MM月dd日 ;




@end
