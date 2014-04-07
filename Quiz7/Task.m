//
//  Task.m
//  Quiz7
//
//  Created by Hansen on 4/7/14.
//  Copyright (c) 2014 Zixuan Huang. All rights reserved.
//

#import "Task.h"

@implementation Task

@dynamic name;
@dynamic urgency;
@dynamic dueDate;

- (void) awakeFromInsert {
    [super awakeFromInsert];
    NSString *name = @"New Task";
    float urgency = 5.0;
    NSDate *date = [NSDate date];
    [self setName:name];
    [self setUrgency:urgency];
    [self setDueDate:date];
}
@end
