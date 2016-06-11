//
//  AppDelegate.m
//  DylibTestApp
//
//  Created by systemp on 2016/05/22.
//  Copyright © 2016年 systemp. All rights reserved.
//

#import <dlfcn.h>
#import "AppDelegate.h"
#import "entry.h"
#import "dylib2entry.h"
#import "dylib1entry.h"

@interface AppDelegate ()

@property (assign) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

    void* dylib1_handle = dlopen("libDylib1.dylib", RTLD_LOCAL);
    void* dylib2_handle = dlopen("libDylib2.dylib", RTLD_LOCAL);
    // TODO: null check
    
    FUNC_DYLIB1* dylib1 = (FUNC_DYLIB1*)dlsym(dylib1_handle, "dylib1");
    FUNC_DYLIB2* dylib2 = (FUNC_DYLIB2*)dlsym(dylib2_handle, "dylib2");
    // TODO: null check

    //    printf("value is %d\n", dylib1(3, 5));
    printf("value is %d\n", dylib1(3, 5));
    printf("value is %d\n", dylib2(3, 5));
    
    dlclose(dylib1_handle);
    dlclose(dylib2_handle);
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
