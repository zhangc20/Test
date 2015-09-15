//
//  LotteryEntry.m
//  lottery
//
//  Created by baidu on 15/7/1.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

-(void)prepareRondomNumbers{
    firstNumber = ((int)random()%100)+1;
    secondNumber=((int)random()%100)+1;
}
-(void)setEntryDate:(NSDate *)date{
    enrtyDate = date;
}
-(NSDate *) entryDate{
    return enrtyDate;
}
-(int)firstNumber{
    return firstNumber;
}
-(int)secondNumber{
    return secondNumber;
}
-(NSString *)description{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterMediumStyle];
    NSString *result;
    result = [[NSString alloc] initWithFormat:@"%@=%d and %d",
                    [df stringFromDate:enrtyDate],
                    firstNumber,secondNumber ];
    return result;
}
@end
