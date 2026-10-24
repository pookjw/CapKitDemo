//
//  main.m
//  MyApp
//
//  Created by Jinwoo Kim on 10/24/26.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#include <dlfcn.h>

int main(int argc, char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    dlopen("/System/Library/PrivateFrameworks/CapKit.framework/CapKit", RTLD_NOW);
    int result = UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    [pool release];
    return result;
}
