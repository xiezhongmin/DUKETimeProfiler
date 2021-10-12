//
//  DUKETimeFunc.c
//  Demo
//
//  Created by admin on 2021/10/9.
//  Copyright © 2021 duke. All rights reserved.
//

#include "DUKETimeFunc.h"
#include "sys/time.h"
#include "time.h"

long _duke_func_begin() {
    struct timeval star;
    gettimeofday(&star, NULL);
    long b = star.tv_sec * 1000 + star.tv_usec / 1000.0;
    return b;
}

void _duke_func_end(char *name, long b) {
    struct timeval end;
    gettimeofday(&end, NULL);
    long e = end.tv_sec * 1000 + end.tv_usec / 1000.0;
    long t = e - b;
    // 大于 默认 100 毫秒 才输出
    if (t >= kTimeThresholdValue) {
        printf("%s %ld ms\n", name, t);
    }
}
