//
//  LotteryEntry.h
//  lottery
//
//  Created by baidu on 15/7/1.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject{
    NSDate *enrtyDate;
    int firstNumber;
    int secondNumber;
}
-(void)prepareRondomNumbers;
-(void)setEntryDate:(NSDate *)date;
-(NSDate *) entryDate;
-(int)firstNumber;
-(int)secondNumber;
@end
