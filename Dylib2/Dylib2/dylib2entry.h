//
//  dylib2entry.h
//  Dylib2
//
//  Created by systemp on 2016/06/11.
//  Copyright © 2016年 systemp. All rights reserved.
//

#ifndef dylib2entry_h
#define dylib2entry_h

#include <stdio.h>
extern "C" int dylib2(int a, int b);
typedef int FUNC_DYLIB2(int a, int b);

#endif /* dylib2entry_h */
