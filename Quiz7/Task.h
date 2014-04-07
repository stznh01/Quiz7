//
//  Task.h
//  Quiz7
//
//  Created by Hansen on 4/7/14.
//  Copyright (c) 2014 Zixuan Huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Task : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic) float urgency;
@property (nonatomic, retain) NSDate * dueDate;

@end
