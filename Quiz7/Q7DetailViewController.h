//
//  Q7DetailViewController.h
//  Quiz7
//
//  Created by Hansen on 4/7/14.
//  Copyright (c) 2014 Zixuan Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@interface Q7DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UITextField *taskNameField;
@property (weak, nonatomic) IBOutlet UISlider *urgencySlider;
@property (weak, nonatomic) IBOutlet UILabel *urgencyLabel;
- (IBAction)changeUrgency:(id)sender;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)save:(id)sender;
@property (nonatomic, copy) void (^dismissBlock)(void);

//@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
