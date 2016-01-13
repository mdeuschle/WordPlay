//
//  NounViewController.m
//  WordPlay
//
//  Created by Matt Deuschle on 1/11/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "NounViewController.h"
#import "ResultsViewController.h"

@interface NounViewController ()
@property (strong, nonatomic) IBOutlet UITextField *nounTextField;

@end

@implementation NounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultsViewController *dvc = segue.destinationViewController;
    dvc.noun = self.nounTextField.text;
    dvc.day = self.day;
    dvc.name = self.name;
    dvc.adjective = self.adjective;
    dvc.place = self.place;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (self.nounTextField.text.length > 0) {
        return YES;
    }
    else
    {
        return NO;
    }
}

@end
