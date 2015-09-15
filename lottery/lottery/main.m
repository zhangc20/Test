//
//  main.m
//  lottery
//
//  Created by baidu on 15/7/1.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSDate *now = [[NSDate alloc] init];
        NSCalendar *cal = [[NSCalendar alloc] init];
        NSDateComponents *weekComponents = [[NSDateComponents alloc] init];
        srandom((unsigned)time(NULL));
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        int i;
        for(i=0;i<10;i++){
            [weekComponents setWeekday:i];
            NSDate *iWeeksFromNow;
            iWeeksFromNow = [cal dateByAddingComponents:weekComponents
                                                 toDate:now
                                                options:0];
            LotteryEntry *newEntry = [[LotteryEntry alloc] init];
            [newEntry prepareRondomNumbers];
            [newEntry setEntryDate:iWeeksFromNow];
            [array addObject:newEntry];
        }
        for(LotteryEntry *entryToPrint in array){
            NSLog(@"%@",entryToPrint);
        }

    }
//    //NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
//    NSMutableArray *array = [[NSMutableArray alloc] init];
//    int i;
//    for(i=0;i<10;i++){
//        NSNumber *newnumber = [[NSNumber alloc] initWithInt:(i*3)];
//        [array addObject:newnumber];
//    }
//    for(i=0;i<10;i++){
//        NSNumber *numberToPrint = [array objectAtIndex:i];
//        NSLog(@"The Number at index %d is %@",i+1,numberToPrint);
//    }  //command+/为注释
    //创建日期对象
    return 0;
}
