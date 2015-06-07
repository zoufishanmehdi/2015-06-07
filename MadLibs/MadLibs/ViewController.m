//
//  ViewController.m
//  MadLibs
//
//  Created by Elber Carneiro on 6/7/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *noun1;
@property (weak, nonatomic) IBOutlet UITextField *noun2;
@property (weak, nonatomic) IBOutlet UITextField *noun3;
@property (weak, nonatomic) IBOutlet UITextField *verb1;
@property (weak, nonatomic) IBOutlet UITextField *verb2;
@property (weak, nonatomic) IBOutlet UITextField *noun4;
@property (weak, nonatomic) IBOutlet UITextField *noun5;
@property (weak, nonatomic) IBOutlet UITextField *adjective;
@property (weak, nonatomic) IBOutlet UITextField *noun6;
@property (weak, nonatomic) IBOutlet UITextField *verb3;
@property (weak, nonatomic) IBOutlet UITextField *verb4;
@property (weak, nonatomic) IBOutlet UITextField *noun7;
@property (weak, nonatomic) IBOutlet UIView *allTextFields;
@property (weak, nonatomic) IBOutlet UIScrollView *storyView;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController
- (IBAction)clickedBegin:(id)sender {
    
    NSString *n1 = self.noun1.text;
    NSString *n2 = self.noun2.text;
    NSString *n3 = self.noun3.text;
    NSString *v1 = self.verb1.text;
    NSString *v2 = self.verb2.text;
    NSString *n4 = self.noun4.text;
    NSString *n5 = self.noun5.text;
    NSString *adj = self.adjective.text;
    NSString *n6 = self.noun6.text;
    NSString *v3 = self.verb3.text;
    NSString *v4 = self.verb4.text;
    NSString *n7 = self.noun7.text;
    
    NSString *infoText = [NSString stringWithFormat:@"The following is the full text of President Obama’s victory speech on Wednesday (Transcript courtesy of the Federal News Service).\n\n PRESIDENT BARACK OBAMA: Thank you. Thank you. Thank you so much. (Sustained cheers, applause.)\n\nTonight, more than 200 years after a former colony won the right to determine its own %@, the task of perfecting our %@ moves forward. (Cheers, applause.)\n\nIt moves forward because of %@. It %@ forward because you reaffirmed the spirit that has %@ over war and depression, the spirit that has lifted this country from the depths of %@ to the great %@ of hope, the belief that while each of us will pursue our own %@ %@, we are an American family, and we %@ or %@ together as one %@ and as one people. (Cheers, applause.)\n\n", n1, n2, n3, v1, v2, n4, n5, adj, n6, v3, v4, n7];
    
    self.noun1.hidden = YES;
    self.noun2.hidden = YES;
    self.noun3.hidden = YES;
    self.verb1.hidden = YES;
    self.verb2.hidden = YES;
    self.noun4.hidden = YES;
    self.noun5.hidden = YES;
    self.adjective.hidden = YES;
    self.noun6.hidden = YES;
    self.verb3.hidden = YES;
    self.verb4.hidden = YES;
    self.noun7.hidden = YES;
    
    self.storyView.hidden = NO;
    self.button.hidden = YES;
    
    UITextView *myUITextView = [[UITextView alloc] initWithFrame:CGRectMake(20,20,335,300)];
    myUITextView.text = infoText;
    myUITextView.textColor = [UIColor lightGrayColor];
    myUITextView.font = [UIFont systemFontOfSize:14];
    [myUITextView setBackgroundColor:[UIColor clearColor]];
    myUITextView.editable = NO;
    myUITextView.scrollEnabled = YES;
    [self.storyView addSubview:myUITextView];
    myUITextView.backgroundColor = [UIColor whiteColor];
    myUITextView.textColor = [UIColor blackColor];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.storyView.hidden = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
