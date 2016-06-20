//
//  Person.m
//  OC-内存管理（MRC）
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person
+(Person *)personWithName
{
    // 方法一
//    Person *p=[Person new];
////    [p release];//不在这释放
//    [p autorelease];//必须加入自动释放池，程序结束的时候才去释放
    
//    //方法二
//        Person *p=[[Person new] autorelease];
//    //    [p release];//不在这释放

    //方法三 常用写法
    Person *p=[Person new];
    return [p autorelease];
}
-(void)setName:(NSString *)name
{
    if (_name!=name)
    {
        [_name release];
        _name=[name retain];
    }
}
-(void)play
{
    NSLog(@"%@ play basketball...",_name);
}
-(void)dealloc
{
    NSLog(@"%@被释放了...",_name);
    [super dealloc];
}
@end
