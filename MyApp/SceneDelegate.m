//
//  SceneDelegate.m
//  MyApp
//
//  Created by Jinwoo Kim on 10/24/26.
//

#import "SceneDelegate.h"
#include <objc/message.h>
#include <objc/runtime.h>

@interface SceneDelegate ()
@property (retain, nonatomic, nullable) id controller;
@end

@implementation SceneDelegate

- (void)dealloc {
    [_window release];
    [_controller release];
    [super dealloc];
}

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    id controller = ((id (*)(id, SEL, id))objc_msgSend)([objc_lookUpClass("CAPInterfaceController") alloc], sel_registerName("initWithScene:"), scene);
    self.controller = controller;
    [controller release];
    
    ((void (*)(id, SEL, id))objc_msgSend)(scene, sel_registerName("setLEDEffectForPulse:"), UIColor.cyanColor);
}

@end
