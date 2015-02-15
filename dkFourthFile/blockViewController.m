//
//  blockViewController.m
//  dkFourthFile
//
//  Created by dukai on 15/2/15.
//  Copyright (c) 2015年 dk. All rights reserved.
//

#import "blockViewController.h"
#import "showBtnColor.h"
@interface blockViewController ()

@end

@implementation blockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)start{
    int outA =8;
    int (^myPtr)(int) = ^(int a){ return outA + a;};
    
    outA =5;
    int result = myPtr(3);
    NSLog(@"%i",result);
    /*
    为什么result 的值仍然是11？而不是8呢？事实上，myPtr在其主体中用到的outA这个变量值的时候做了一个copy的动作，把outA的值copy下来。所以，之后outA即使换成了新的值，对于myPtr里面copy的值是没有影响的。
    需要注意的是，这里copy的值是变量的值，如果它是一个记忆体的位置（地址），换句话说，就是这个变量是个指针的话，
    
    它的值是可以在block里被改变的。如下例子：
     */
    
        NSMutableArray *mutableArray = [NSMutableArray arrayWithObjects:@"one", @"two", @"three", nil];
        int result1 = ^(int a){[mutableArray removeLastObject]; return a*a;}(5);
        NSLog(@"test array :%@", mutableArray);
    
    //甚至可以直接在block里面修改outB的值，例如下面的写法：
    static int outB = 6;
    int (^myPtr1)(int) = ^(int a){ outB = 5; return outB + a;};
    int result2 = myPtr1(3);  //result的值是8，因为outA是static类型的变量
    NSLog(@"result=%d", result2);
    
    
  //  在某个变量前面如果加上修饰字“__block”的话（注意，block前面有两个下划线），这个变量就称作block variable。
  //  那么在block里面就可以任意修改此变量的值，如下代码：
    __block int num = 5;
    
    int (^myPtr3)(int) = ^(int a){return num++;};
    int (^myPtr4)(int) = ^(int a){return num++;};
    int result3 = myPtr3(0);   //result的值为5，num的值为6
    result = myPtr4(0);      //result的值为6，num的值为7
    NSLog(@"result=%d", result3);
    
}

-(IBAction)click:(id)sender{
    
    CGRect temp =CGRectMake(_clickBtn.frame.origin.x, _clickBtn.frame.origin.y, _clickBtn.frame.size.width, _clickBtn.frame.size.height);
    UIColor *curColor = _clickBtn.backgroundColor;
    
    [showBtnColor ChangeRootViewBtnRect:temp currentColor:curColor blockcompletion:^(UIColor *colorEnum, UIColor *colorEnum1) {
        
        _clickBtn.backgroundColor = colorEnum;
        
    }];
    
    [showBtnColor ChangeViewBtnRect:temp currentColor:curColor blockcompletion:^(UIColor *colorEnum, UIColor *colorEnum1) {
        
        _clickBtn.backgroundColor = colorEnum;
        
    }];
}

@end
