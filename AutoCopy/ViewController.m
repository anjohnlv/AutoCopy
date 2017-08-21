//
//  ViewController.m
//  AutoCopy
//
//  Created by anjohnlv on 2017/8/21.
//  Copyright © 2017年 anjohnlv. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+Copy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person *son = [Person new];
    son.name    = @"Pint";
    
    Person *man = [Person new];
    man.name    = @"Anjohnlv";
    man.age     = 18;
    man.isMale  = YES;
    man.friends = @[@"Dan",@"Luna"];
    man.son     = son;
    
    Person *cloneMan = [man autoCopy];
    [man sayHello];
    [cloneMan sayHello];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
