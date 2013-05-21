//
//  PAYViewController.m
//  EZ Payment Calculator
//
//  Created by Don Miller on 1/31/13.
//  Copyright (c) 2013 GroundSpeed™. All rights reserved.
//

#import "PAYViewController.h"

@interface PAYViewController ()

@end

@implementation PAYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark Actions
- (IBAction)scHomeOther:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        _txtPMI.hidden = false;
        _lblPMI.hidden = false;
    }
    else
    {
        _txtPMI.hidden = true;
        _lblPMI.hidden = true;
    }
}

- (IBAction)btnCalculate:(id)sender
{

}

#pragma mark PickerViewCode

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    if (touch != nil)
    {
        [_txtAmount resignFirstResponder];
        [_txtDownPayment resignFirstResponder];
        [_txtInterestRate resignFirstResponder];
        [_txtPMI resignFirstResponder];
    }
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (_txtTerm.tag == 30)
    {
        [_txtTerm resignFirstResponder];
        [_pickTerms setHidden:NO];
    }
    else
    {
        [_pickTerms setHidden:YES];
    }
}

@end
