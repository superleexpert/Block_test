//
//  Tracker.m
//  BlockTest
//
//  Created by Lee on 12/23/14.
//  Copyright (c) 2014 My Company. All rights reserved.
//

#import "Tracker.h"

@implementation Tracker

- (void)callBack:(void(^)(id obj, NSError *error))parameter
{
    _callBack = parameter;
    
    _bloclDic = @{@"1":@"11", @"2":@"22", @"3":@"33"};
    
    if (!_bloclDic) {
        NSError *err = [[NSError alloc] init];
        _callBack(nil, err);
        return;
    }
    
    _callBack(_bloclDic, nil);
}

@end
