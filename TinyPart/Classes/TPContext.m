//
//  TPContext.m
//  TinyPart
//
//  Created by Yao Li on 2018/4/8.
//  Copyright © 2018年 yaoli. All rights reserved.
//

#import "TPContext.h"

@implementation TPContext
+ (instancetype)sharedContext {
    static TPContext *ContextInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ContextInstance = [[TPContext alloc] init];
    });
    return ContextInstance;
}
@end
