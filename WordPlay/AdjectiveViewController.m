//
//  AdjectiveViewController.m
//  WordPlay
//
//  Created by Matt Deuschle on 1/11/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "AdjectiveViewController.h"
#import "NounViewController.h"

@interface AdjectiveViewController ()
@property (strong, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation AdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NounViewController *dvc = segue.destinationViewController;
    dvc.adjective = self.adjectiveTextField.text;
    dvc.day = self.day;
    dvc.name = self.name;
    dvc.place = self.place;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (self.adjectiveTextField.text.length > 0) {
        return YES;
    }
    else
    {
        return NO;
    }
}

@end
