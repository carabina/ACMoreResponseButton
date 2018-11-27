//
//  ViewController.m
//  MoreResponseButtonExample
//
//  Created by lonlife on 2018/11/27.
//  Copyright © 2018 lonlife. All rights reserved.
//

#import "ViewController.h"
#import "ACMoreResponseButton/ACMoreResponseButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100,100,100,100)];
    btn.backgroundColor = [UIColor lightGrayColor];
    [btn setTitle:@"normal area" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    ACMoreResponseButton *moreAreaBtn = [[ACMoreResponseButton alloc] initWithFrame:CGRectMake(100,300,100,100) moreArea:CGRectMake(50,50,50,50)];
    moreAreaBtn.backgroundColor = [UIColor lightGrayColor];
    [moreAreaBtn setTitle:@"more area" forState:UIControlStateNormal];
    [self.view addSubview:moreAreaBtn];
    [moreAreaBtn addTarget:self action:@selector(moreBtnClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnClick
{
    NSLog(@"click click click");
}

- (void)moreBtnClick
{
    NSLog(@"out of frame can click");
}

@end
