//
//  ViewController.m
//  dkFourthFile
//
//  Created by dukai on 15/2/14.
//  Copyright (c) 2015年 dk. All rights reserved.
//

#import "ViewController.h"
#import "blockViewController.h"
#import "notificationViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)blockViewController:(id)sender{
    blockViewController *controller = [[blockViewController alloc]initWithNibName:@"blockViewController" bundle:nil];
    [self.navigationController pushViewController:controller animated:YES];
}
-(IBAction)notificatoinViewController:(id)sender{
    notificationViewController *controller = [[notificationViewController alloc]initWithNibName:@"notificationViewController" bundle:nil];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
