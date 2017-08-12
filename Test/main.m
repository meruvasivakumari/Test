//
//  main.m
//  Test
//
//  Created by Meruva, Sivakumari (ASPL) on 22/11/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Class appDelegateClass = NSClassFromString(@"TestingAppDelegate");
        if (!appDelegateClass)
        appDelegateClass = [AppDelegate class];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([appDelegateClass class]));
    }
}
