//
//  Person.m
//  AutoCopy
//
//  Created by anjohnlv on 2017/8/21.
//  Copyright © 2017年 anjohnlv. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)sayHello {
    NSLog(@"\nHello:\n->Address:%p\n->name:%@\n->age:%d\n->gender:%@\n->friends:%@\n->son:%@",
          self,
          self.name,
          self.age,
          self.isMale?@"Male":@"Female",
          [self.friends description],
          self.son.name);
}

@end
