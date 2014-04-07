//
//  Q7DetailViewController.m
//  Quiz7
//
//  Created by Hansen on 4/7/14.
//  Copyright (c) 2014 Zixuan Huang. All rights reserved.
//

#import "Q7DetailViewController.h"

@interface Q7DetailViewController ()
- (void)configureView;
@end

@implementation Q7DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        _taskNameField.text = [_detailItem name];
        _urgencySlider.value = [_detailItem urgency];
        _urgencyLabel.text = [NSString stringWithFormat:@"Urgency: %.0f", [_detailItem urgency]];
        _datePicker.date = [_detailItem dueDate];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.taskNameField setDelegate:self];
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeUrgency:(id)sender {
    UISlider *s = sender;
    [self.detailItem setUrgency:s.value];
    [[self urgencyLabel] setText:[NSString stringWithFormat:@"Urgency: %.0f",[_detailItem urgency]]];
}
- (IBAction)save:(id)sender {
    [self.detailItem setUrgency:[self.urgencySlider value]];
    [self.detailItem setName:[self.taskNameField text]];
    [self.detailItem setDueDate:[self.datePicker date]];
    [self.presentingViewController dismissViewControllerAnimated:YES completion:[self dismissBlock]];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
@end
