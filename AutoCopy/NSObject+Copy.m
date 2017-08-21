//
//  NSObject+Copy.m
//  CategoryDemo
//
//  Created by anjohnlv on 2017/8/18.
//  Copyright © 2017年 anjohnlv. All rights reserved.
//

#import "NSObject+Copy.h"
#import <objc/runtime.h>

@implementation NSObject (Copy)

-(instancetype)autoCopy {
    if (self) {
        id copyObject = [[self class] new];
        NSArray *allPropertyName = [self allPropertyName];
        for (int i=0; i<[allPropertyName count]; i++) {
            NSString *propertyName = allPropertyName[i];
            NSValue *value = [self valueForKey:propertyName];
            [copyObject setValue:value forKey:propertyName];
        }
        return copyObject;
    }
    return self;
}

-(NSArray *)allPropertyName {
    unsigned int propertyCount = 0;
    objc_property_t *properties = class_copyPropertyList([self class], &propertyCount);
    NSMutableArray *allPropertyName = [NSMutableArray new];
    for (unsigned int i = 0; i < propertyCount; ++i) {
        objc_property_t property = properties[i];
        NSString *propertyName = [NSString stringWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        [allPropertyName addObject:propertyName];
    }
    free(properties);
    return allPropertyName;
}

@end
