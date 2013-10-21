//
//  main.m
//  NSNumber
//
//  Created by Joe Gu on 13-4-30.
//  Copyright (c) 2013年 Joe Gu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSNumber *aNum=[NSNumber numberWithInt:200];
        NSNumber *bNum=[NSNumber numberWithFloat:100];
        //NSNumber 对基本类型转化为带*号复杂的转换方式
        int oneN=[aNum intValue];
        NSLog(@"%d",oneN);
        float twoN=[bNum floatValue];
        NSLog(@"%f",twoN);
        //NSNumber 枚举对比
        NSComparisonResult resultNum=[aNum compare:bNum];
        switch (resultNum)
        {
            case NSOrderedAscending:
                NSLog(@"aNum 比 bNum 小");
                break;
            case NSOrderedSame:
                NSLog(@"aNum = bNum");
                break;
            case NSOrderedDescending:
                NSLog(@"aNum 比 bNum 大");
                break;
        }
    }
    return 0;
}

