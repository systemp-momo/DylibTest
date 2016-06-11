//
//  dylib1entry.c
//  DyLib1
//
//  Created by systemp on 2016/06/11.
//  Copyright © 2016年 systemp. All rights reserved.
//

#include "dylib1entry.h"
#include "SPStaticLib.h"

int dylib1(int a, int b) {
    [SPStaticLib display];

    return a+b;
}
