//
//  main.m
//  OC-内存管理（MRC）
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1=[Person personWithName];
        [p1 setName:@"小明"];
//        [p1 release];//类方法创建的对象，无需手动释放
        [p1 play];
    }
    return 0;
}
