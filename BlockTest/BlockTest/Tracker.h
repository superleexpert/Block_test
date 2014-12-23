//
//  Tracker.h
//  BlockTest
//
//  Created by Lee on 12/23/14.
//  Copyright (c) 2014 My Company. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CallBack)(id obj, NSError *error);

@interface Tracker : NSObject{
    NSDictionary *_bloclDic;
}

@property (copy, nonatomic) CallBack callBack;

- (void)callBack:(void(^)(id obj, NSError *error))parameter;

@end
