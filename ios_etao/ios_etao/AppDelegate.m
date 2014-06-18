//
//  AppDelegate.m
//  ios_etao
//
//  Created by student on 14-6-18.
//  Copyright (c) 2014年 rockteam. All rights reserved.
//

#import "AppDelegate.h"
#import "DapeiViewController.h"
#import "DanpinViewController.h"
#import "FaxianViewController.h"
#import "MineViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    DapeiViewController *dapeiVC = [[DapeiViewController alloc] init];
    DanpinViewController *danpinVC = [[DanpinViewController alloc] init];
    FaxianViewController *faxinVC =[[FaxianViewController alloc] init];
    MineViewController *mineVC = [[MineViewController alloc] init];
    dapeiVC.tabBarItem.title = @"搭配";
    dapeiVC.tabBarItem.image = [UIImage imageNamed:@"tabItem0"];
//    dapeiVC.tabBarItem.
    
    danpinVC.tabBarItem.title = @"单品";
    danpinVC.tabBarItem.image = [UIImage imageNamed:@"tabItem1"];
    
    
    faxinVC.tabBarItem.title = @"发现";
    faxinVC.tabBarItem.image = [UIImage imageNamed:@"tabItem2"];
    
    mineVC.tabBarItem.title = @"我的";
    mineVC.tabBarItem.image = [UIImage imageNamed:@"tabItem3"];
    
    mineVC.tabBarItem.badgeValue = @"2";
    
    
    UINavigationController *dapeiNVC = [[UINavigationController alloc] initWithRootViewController:dapeiVC];
    UINavigationController *danpinNVC = [[UINavigationController alloc] initWithRootViewController:danpinVC];
    UINavigationController *faxianNVC = [[UINavigationController alloc] initWithRootViewController:faxinVC];
     UINavigationController *mineNVC = [[UINavigationController alloc] initWithRootViewController:mineVC];
    
    UITabBarController *tvc =[[UITabBarController alloc] init];
    tvc.tabBar.backgroundColor = [UIColor greenColor];
    
    
    tvc.viewControllers = [NSArray arrayWithObjects:dapeiNVC,danpinNVC,faxianNVC, mineNVC, nil];
    
    self.window.rootViewController = tvc;
    
    [self.window makeKeyAndVisible];
    return YES;
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
