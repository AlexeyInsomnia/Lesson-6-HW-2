//
//  AppDelegate.h
//  Lesson 6 HW 2
//
//  Created by Alex on 15.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    missed,
    hit,
} hitSquare;


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (assign, nonatomic) hitSquare hitInside;



@end

