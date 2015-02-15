//
//  showBtnColor.m
//  dkFourthFile
//
//  Created by dukai on 15/2/15.
//  Copyright (c) 2015年 dk. All rights reserved.
//

#import "showBtnColor.h"

@implementation showBtnColor
//两种写法  其实都是一样的

+(void)ChangeRootViewBtnRect:(CGRect)rect currentColor:(UIColor *)curColor blockcompletion:(ChangeColor)Changcolorblock{
    
    UIColor *temp = [UIColor greenColor];
    UIColor *temp1 = [UIColor purpleColor];
    Changcolorblock(temp,temp1); //执行block
}

+(void)ChangeViewBtnRect:(CGRect)rect currentColor:(UIColor *)curColor blockcompletion:(void (^)(UIColor *colorEnum,UIColor *colorEnum1))Changcolorblock{
    
    UIColor *temp = [UIColor greenColor];
    UIColor *temp1 = [UIColor purpleColor];
    Changcolorblock(temp,temp1); //执行block
}

@end
