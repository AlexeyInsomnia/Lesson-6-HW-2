//
//  AppDelegate.m
//  Lesson 6 HW 2
//
//  Created by Alex on 15.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.hitInside = hit;
    
    self.hitInside = missed;
  
    
    CGRect rectInMiddle = CGRectMake(3, 3, 3, 3);
    
    CGPoint point = CGPointMake(0, 0);
    
    int x=0;
    
    int y=0;
    
    int count = 1;
    
    BOOL result ;
    
    NSNumber* boolObject = [NSNumber numberWithBool:result];
    
    NSNumber* integerObject = [NSNumber numberWithInteger:x];
    
    NSArray* arrayForPractice = [NSArray arrayWithObjects:boolObject, integerObject, nil];
    
    NSLog(@"just for practive NSNumber boolObject = %d, integerObject = %ld",
          [[arrayForPractice objectAtIndex:0] boolValue],
          [[arrayForPractice objectAtIndex:1] integerValue]);
    
    NSMutableArray* array = [[NSMutableArray alloc] init];
    
    
    for (int i = 0; i<=100; i++) {
        x = arc4random() % 11;
        y = arc4random() %11;
        point = CGPointMake(x, y);
        result = CGRectContainsPoint(rectInMiddle, point);
        
        if (result) {
            self.hitInside = hit;
            NSLog(@"Point - %@ HIT, number of shot is - %d, hitInside now is - %d", NSStringFromCGPoint(point), count++, self.hitInside);
            
            
            [array addObject:[NSValue valueWithCGPoint:point]];
            
            if (count == 4) {
                i = 100;
            }
            
            
        } else {
                    self.hitInside = missed;
                   NSLog(@"Point - %@ MISSED, hitInside now is - %d", NSStringFromCGPoint(point),  self.hitInside);
        }
  
        
    }
    NSLog(@"This is for practive NSValue in MASSIVE we have 3 hit points with coords:");
    for (NSValue* value in array ) {
        CGPoint pointInSide = [value CGPointValue];
        NSLog( @"%@", NSStringFromCGPoint(pointInSide));
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
