//
//  TestViewController.m
//  FancyBarButton
//
//  Created by Sebastien Windal on 2/24/14.
//  Copyright (c) 2014 Sebastien Windal. All rights reserved.
//

#import "TestViewController.h"
#import "FRDLivelyButton.h"

@interface TestViewController ()

@property (weak, nonatomic) IBOutlet FRDLivelyButton *bigButton;

@property (weak, nonatomic) IBOutlet FRDLivelyButton *burgerButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *plustButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *plusCircleButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *closeButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *closeCircleButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *upCaretButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *downCaretButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *leftCaretButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *rightCaretButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *leftArrowButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *rightArrowButton;

@end

@implementation TestViewController
{
    kFRDLivelyButtonStyle newStyle;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self.burgerButton setStyle:kFRDLivelyButtonStyleHamburger animated:NO];
    self.burgerButton.isRaised = NO;
    self.burgerButton.cornerRadius = MIN(CGRectGetWidth(self.burgerButton.bounds), CGRectGetHeight(self.burgerButton.bounds)) / 2.f;
    
    [self.plusCircleButton setStyle:kFRDLivelyButtonStyleCirclePlus animated:NO];
    self.plusCircleButton.isRaised = NO;
    self.plusCircleButton.cornerRadius = MIN(CGRectGetWidth(self.plusCircleButton.bounds), CGRectGetHeight(self.plusCircleButton.bounds)) / 2.f;
    
    [self.plustButton setStyle:kFRDLivelyButtonStylePlus animated:NO];
    self.plustButton.isRaised = NO;
    self.plustButton.cornerRadius = MIN(CGRectGetWidth(self.plustButton.bounds), CGRectGetHeight(self.plustButton.bounds)) / 2.f;
    
    [self.closeButton setStyle:kFRDLivelyButtonStyleClose animated:NO];
    self.closeButton.isRaised = NO;
    self.closeButton.cornerRadius = MIN(CGRectGetWidth(self.closeButton.bounds), CGRectGetHeight(self.closeButton.bounds)) / 2.f;
    
    [self.closeCircleButton setStyle:kFRDLivelyButtonStyleCircleClose animated:NO];
    self.closeCircleButton.isRaised = NO;
    self.closeCircleButton.cornerRadius = MIN(CGRectGetWidth(self.closeCircleButton.bounds), CGRectGetHeight(self.closeCircleButton.bounds)) / 2.f;
    
    [self.upCaretButton setStyle:kFRDLivelyButtonStyleCaretUp animated:NO];
    self.upCaretButton.isRaised = NO;
    self.upCaretButton.cornerRadius = MIN(CGRectGetWidth(self.upCaretButton.bounds), CGRectGetHeight(self.upCaretButton.bounds)) / 2.f;
    
    [self.downCaretButton setStyle:kFRDLivelyButtonStyleCaretDown animated:NO];
    self.downCaretButton.isRaised = NO;
    self.downCaretButton.cornerRadius = MIN(CGRectGetWidth(self.downCaretButton.bounds), CGRectGetHeight(self.downCaretButton.bounds)) / 2.f;
    
    [self.leftCaretButton setStyle:kFRDLivelyButtonStyleCaretLeft animated:NO];
    self.leftCaretButton.isRaised = NO;
    self.leftCaretButton.cornerRadius = MIN(CGRectGetWidth(self.leftCaretButton.bounds), CGRectGetHeight(self.leftCaretButton.bounds)) / 2.f;
    
    [self.rightCaretButton setStyle:kFRDLivelyButtonStyleCaretRight animated:NO];
    self.rightCaretButton.isRaised = NO;
    self.rightCaretButton.cornerRadius = MIN(CGRectGetWidth(self.rightCaretButton.bounds), CGRectGetHeight(self.rightCaretButton.bounds)) / 2.f;
    
    [self.leftArrowButton setStyle:kFRDLivelyButtonStyleArrowLeft animated:NO];
    self.leftArrowButton.isRaised = NO;
    self.leftArrowButton.cornerRadius = MIN(CGRectGetWidth(self.leftArrowButton.bounds), CGRectGetHeight(self.leftArrowButton.bounds)) / 2.f;
    
    [self.rightArrowButton setStyle:kFRDLivelyButtonStyleArrowRight animated:NO];
    self.rightArrowButton.isRaised = NO;
    self.rightArrowButton.cornerRadius = MIN(CGRectGetWidth(self.rightArrowButton.bounds), CGRectGetHeight(self.rightArrowButton.bounds)) / 2.f;
    
    [self.bigButton setStyle:kFRDLivelyButtonStyleClose animated:YES];
    self.bigButton.isRaised = NO;
    self.bigButton.cornerRadius = MIN(CGRectGetWidth(self.bigButton.bounds), CGRectGetHeight(self.bigButton.bounds)) / 2.f;
    [self.bigButton setOptions:@{kFRDLivelyButtonLineWidth: @(4.0f)}];
    
    FRDLivelyButton *button = [[FRDLivelyButton alloc] initWithFrame:CGRectMake(0,0,36,28)];
    [button setOptions:@{ kFRDLivelyButtonLineWidth: @(2.0f),
                          kFRDLivelyButtonHighlightedColor: [UIColor colorWithRed:0.5 green:0.8 blue:1.0 alpha:1.0],
                          kFRDLivelyButtonColor: [UIColor blueColor]
                          }];
    [button setStyle:kFRDLivelyButtonStyleHamburger animated:NO];
    button.isRaised = NO;
    button.cornerRadius = MIN(CGRectGetWidth(button.bounds), CGRectGetHeight(button.bounds)) / 2.f;
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = buttonItem;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeButtonStyleAction:(FRDLivelyButton *)sender
{
    [self.bigButton setStyle:sender.buttonStyle animated:YES];
}

- (IBAction)buttonAction:(FRDLivelyButton *)sender
{
    newStyle = (newStyle + 1) % 11;
    
    [sender setStyle:newStyle animated:YES];
}

@end
