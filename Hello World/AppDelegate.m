//
//  AppDelegate.m
//  Hello World
//
//  Created by 亮哥 on 14-2-26.
//  Copyright (c) 2014年 蓝鸥教育. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
{
    UIView * _view0;
    UIView * _view1;
    UIView * _view2;
    UIView * _view3;
    UIView * _view4;
    UIView * _view5;
    UIView * _view6;


}

//就像C语言中的入口函数一样。下午我们细分析每一个方法的作用。
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //初始化Window视图  用设备尺寸大小(全屏)
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //调用对象的一个属性，backgroundColor 修改背景颜色
    self.window.backgroundColor = [UIColor redColor];
    //显示这个window
    _view0 = [[UIView alloc] init];
    //是UIView的一个基本属性
    _view0.frame = CGRectMake(10, 30, 300, 440);
    //设置一个背景色
    _view0.backgroundColor = [UIColor greenColor];
    //把控件添加到Window对象上
    //[_window addSubview:view];
    [self.window addSubview:_view0];
    
    _view1 = [[UIView alloc] init];
    //是UIView的一个基本属性
    _view1.frame = CGRectMake(10, 10, 280, 420);
    //设置一个背景色
    _view1.backgroundColor = [UIColor orangeColor];
    //把控件添加到Window对象上
    [_view0 addSubview:_view1];
    
    _view2 = [[UIView alloc] init];
    //是UIView的一个基本属性
    _view2.frame = CGRectMake(10, 10, 260, 400);
    //设置一个背景色
    _view2.backgroundColor = [UIColor whiteColor];
    //把控件添加到Window对象上
    [_view1 addSubview:_view2];
    
    _view3 = [[UIView alloc] init];
    //是UIView的一个基本属性
    _view3.frame = CGRectMake(10, 10, 240, 380);
    //设置一个背景色
    _view3.backgroundColor = [UIColor grayColor];
    //把控件添加到Window对象上
    [_view2 addSubview:_view3];
    
    
    _view4 = [[UIView alloc] init];
    //是UIView的一个基本属性
    _view4.frame = CGRectMake(10, 10, 220, 360);
    //设置一个背景色
    _view4.backgroundColor = [UIColor yellowColor];
    //把控件添加到Window对象上
    [_view3 addSubview:_view4];
    
    _view5 = [[UIView alloc] init];
    //是UIView的一个基本属性
    _view5.frame = CGRectMake(10, 10, 200, 340);
    //设置一个背景色
    _view5.backgroundColor = [UIColor blueColor];
    //把控件添加到Window对象上
    [_view4 addSubview:_view5];
    
    _view6 = [[UIView alloc] init];
    //是UIView的一个基本属性
    _view6.frame = CGRectMake(10, 10, 180, 320);
    //设置一个背景色
    _view6.backgroundColor = [UIColor brownColor];
    //把控件添加到Window对象上
    [_view5 addSubview:_view6];
    
    //消息机制  self 委托一个消息响应者
    [NSTimer scheduledTimerWithTimeInterval:-1 target:self selector:@selector(changeBackgroundColor) userInfo:nil repeats:YES];
    
    [_view0 release];
    [_view1 release];
    [_view2 release];
    [_view3 release];
    [_view4 release];
    [_view5 release];
    [_view6 release];
    
    [self.window makeKeyAndVisible];
    return YES;
}

//改变背景颜色
-(void)changeBackgroundColor
{
//1.面向过程
    UIColor * temp = [[UIColor alloc] init];

        temp = _view0.backgroundColor;
        _view0.backgroundColor = _view1.backgroundColor;
        _view1.backgroundColor = _view2.backgroundColor;
        _view2.backgroundColor = _view3.backgroundColor;
        _view3.backgroundColor = _view4.backgroundColor;
        _view4.backgroundColor = _view5.backgroundColor;
        _view5.backgroundColor = _view6.backgroundColor;
        _view6.backgroundColor = temp;
    
}



- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
