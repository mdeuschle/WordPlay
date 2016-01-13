//
//  NameViewController.m
//  WordPlay
//
//  Created by Matt Deuschle on 1/11/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "NameViewController.h"
#import "PlaceViewController.h"

@interface NameViewController ()
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation NameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    PlaceViewController *dvc = segue.destinationViewController;
    dvc.name = self.nameTextField.text;

    // pass along this viewControler day data to the destination view controller
    dvc.day = self.day;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (self.nameTextField.text.length > 0) {
        return YES;
    }
    else
    {
        return NO;
    }
}

@end
