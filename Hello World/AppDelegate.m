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
