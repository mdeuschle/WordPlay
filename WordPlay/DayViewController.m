//
//  DayViewController.m
//  WordPlay
//
//  Created by Matt Deuschle on 1/11/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "DayViewController.h"

//  import destination viewController so you can reference the day string
#import "NameViewController.h"

@interface DayViewController ()
@property (strong, nonatomic) IBOutlet UITextField *dayTextField;

@end

@implementation DayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

// set up segue to pass along data
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NameViewController *dvc = segue.destinationViewController;

    // assign destination var property "day" to textField
    dvc.day = self.dayTextField.text;
}

// should the segue be performed?
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    // if there is something in textfield, then yes
    if (self.dayTextField.text.length > 0) {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(IBAction)book:(UIStoryboardSegue *)sender
{

}

@end
