//
//  dylib1entry.h
//  DyLib1
//
//  Created by systemp on 2016/06/11.
//  Copyright © 2016年 systemp. All rights reserved.
//

#ifndef dylib1entry_h
#define dylib1entry_h

#include <stdio.h>
extern "C" int dylib1(int a, int b);
typedef int FUNC_DYLIB1(int a, int b);

#endif /* dylib1entry_h */
