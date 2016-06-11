//
//  dylib2entry.c
//  Dylib2
//
//  Created by systemp on 2016/06/11.
//  Copyright © 2016年 systemp. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "dylib2entry.h"
#include "SPStaticLib.h"

int dylib2(int a, int b) {
    [SPStaticLib display];
    return a-b;
}
