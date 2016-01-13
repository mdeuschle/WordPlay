//
//  PlaceViewController.m
//  WordPlay
//
//  Created by Matt Deuschle on 1/11/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "PlaceViewController.h"
#import "AdjectiveViewController.h"

@interface PlaceViewController ()
@property (strong, nonatomic) IBOutlet UITextField *placeTextField;

@end

@implementation PlaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    AdjectiveViewController *dvc = segue.destinationViewController;
    dvc.place = self.placeTextField.text;
    dvc.day = self.day;
    dvc.name = self.name;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (self.placeTextField.text.length > 0) {
        return YES;
    }
    else
    {
        return NO;
    }
}

@end
