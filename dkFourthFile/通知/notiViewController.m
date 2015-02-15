//
//  notiViewController.m
//  dkFourthFile
//
//  Created by dukai on 15/2/15.
//  Copyright (c) 2015年 dk. All rights reserved.
//

#import "notiViewController.h"

@interface notiViewController ()

@end

@implementation notiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)openNotifiction:(id)sender{
    [[NSNotificationCenter defaultCenter]postNotificationName:@"transformColor" object:nil];
}
@end
