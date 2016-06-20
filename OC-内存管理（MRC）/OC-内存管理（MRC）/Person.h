//
//  Person.h
//  OC-内存管理（MRC）
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
}
-(void)setName:(NSString *)name;
+(Person *)personWithName;
-(void)play;
@end
