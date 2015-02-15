//
//  showBtnColor.h
//  dkFourthFile
//
//  Created by dukai on 15/2/15.
//  Copyright (c) 2015年 dk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void (^ChangeColor)(UIColor *colorEnum,UIColor *colorEnum1); //定义一个block返回值void参数为颜色值

@interface showBtnColor : NSObject

+(void)ChangeRootViewBtnRect:(CGRect)rect currentColor:(UIColor *)curColor blockcompletion:(ChangeColor)Changcolorblock;

+(void)ChangeViewBtnRect:(CGRect)rect currentColor:(UIColor *)curColor blockcompletion:(void (^)(UIColor *colorEnum,UIColor *colorEnum1))Changcolorblock;
@end
