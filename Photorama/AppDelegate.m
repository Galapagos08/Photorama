//
//  AppDelegate.m
//  Photorama
//
//  Created by Dan Esrey on 2016/18/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "AppDelegate.h"
#import "PhotosViewController.h"
#import "PhotoStore.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UINavigationController *navCon = (UINavigationController *)self.window.rootViewController;
    PhotosViewController *pvc = (PhotosViewController *)navCon.topViewController;
   
    pvc.photoStore = [PhotoStore new];
    
    return YES;
}


@end
