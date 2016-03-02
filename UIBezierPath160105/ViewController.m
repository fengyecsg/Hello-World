//
//  ViewController.m
//  UIBezierPath160105
//
//  Created by chang on 16/1/5.
//  Copyright © 2016年 chang. All rights reserved.
//

#import "ViewController.h"
#import "BezierPathView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BezierPathView *v = [[BezierPathView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    v.backgroundColor = [UIColor blackColor];
    [self.view addSubview:v];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
