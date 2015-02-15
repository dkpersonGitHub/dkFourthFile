//
//  notificationViewController.m
//  dkFourthFile
//
//  Created by dukai on 15/2/15.
//  Copyright (c) 2015年 dk. All rights reserved.
//

#import "notificationViewController.h"
#import "notiViewController.h"
@interface notificationViewController ()

@end

@implementation notificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //注册一个通知 来改变 clickBtn 按钮的颜色为绿色
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(transformColor:) name:@"transformColor" object:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)transformColor:(NSNotificationCenter *)center{
    [self.clickBtn setBackgroundColor:[UIColor greenColor]];
}
-(IBAction)pushAct:(id)sender{
    notiViewController *controller = [[notiViewController alloc]initWithNibName:@"notiViewController" bundle:nil];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
