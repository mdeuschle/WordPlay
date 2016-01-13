//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Matt Deuschle on 1/11/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (strong, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // create a new dictionary with font key and value
    NSDictionary *boldDic = @{NSFontAttributeName: [UIFont fontWithName:@"Helvetica-Bold" size:22.0]};

    //create new var with the new attributes from dictionary
    NSAttributedString *attributedDay = [[NSAttributedString alloc]initWithString:self.day attributes:boldDic];
    NSAttributedString *attributedName = [[NSAttributedString alloc]initWithString:self.name attributes:boldDic];
    NSAttributedString *attributedPlace = [[NSAttributedString alloc]initWithString:self.place attributes:boldDic];
    NSAttributedString *attributedAdjective = [[NSAttributedString alloc]initWithString:self.adjective attributes:boldDic];
    NSAttributedString *attributedNoun = [[NSAttributedString alloc]initWithString:self.noun attributes:boldDic];

    // create a mutable string for final story
    NSMutableAttributedString *fullMadLib = [[NSMutableAttributedString alloc]initWithString:@"One "];

    // break story up into seprate parts with new variables so you can merge
    NSAttributedString *part1 = [[NSMutableAttributedString alloc]initWithString:@", "];
    NSAttributedString *part2 = [[NSMutableAttributedString alloc]initWithString:@" was walking into "];
    NSAttributedString *part3 = [[NSMutableAttributedString alloc]initWithString:@" when he noticed how "];
    NSAttributedString *part4 = [[NSMutableAttributedString alloc]initWithString:@" his "];
    NSAttributedString *part5 = [[NSMutableAttributedString alloc]initWithString:@" were."];

    // combine the variable to create full story (fullMadLib)
    [fullMadLib appendAttributedString:attributedDay];
    [fullMadLib appendAttributedString:part1];
    [fullMadLib appendAttributedString:attributedName];
    [fullMadLib appendAttributedString:part2];
    [fullMadLib appendAttributedString:attributedPlace];
    [fullMadLib appendAttributedString:part3];
    [fullMadLib appendAttributedString:attributedAdjective];
    [fullMadLib appendAttributedString:part4];
    [fullMadLib appendAttributedString:attributedNoun];
    [fullMadLib appendAttributedString:part5];

    // place the final fullMadLib in the textView
    self.resultsTextView.attributedText = fullMadLib;
}

@end
