//
//  ViewController.m
//  BlockTest
//
//  Created by Lee on 12/23/14.
//  Copyright (c) 2014 My Company. All rights reserved.
//

#import "ViewController.h"
#import "Tracker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Basic block test, return int value.
    int a = 7;
    int (^fuckBlock)(int) = ^(int num) {
        return num * a;
    };
    NSLog(@"fuckBlock test: %d", fuckBlock(5));

    // Replace delegate or method by value.
    Tracker *tracker = [[Tracker alloc] init];
    [tracker callBack:^(id obj, NSError *error){
        NSLog(@"block data: %@ or error %@", obj, error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
