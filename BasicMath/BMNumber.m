//
//  BMNumber.m
//  BasicMath
//
//  Created by Kelley Lange on 4/4/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import "BMNumber.h"

@implementation BMNumber

#define MAX_NUM = 10;

-(int)getNum
{
    int ranNum = (arc4random() % 9)+1;
    NSLog(@"ran#: %i", ranNum);
    return ranNum;
}


@end
