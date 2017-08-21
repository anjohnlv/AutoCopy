//
//  Person.h
//  AutoCopy
//
//  Created by anjohnlv on 2017/8/21.
//  Copyright © 2017年 anjohnlv. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic, strong)NSString *name;
@property(nonatomic)int age;
@property(nonatomic)BOOL isMale;
@property(nonatomic, strong)NSArray *friends;
@property(nonatomic, strong)Person *son;

-(void)sayHello;

@end
