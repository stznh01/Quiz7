//
//  Q7MasterViewController.h
//  Quiz7
//
//  Created by Hansen on 4/7/14.
//  Copyright (c) 2014 Zixuan Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface Q7MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
