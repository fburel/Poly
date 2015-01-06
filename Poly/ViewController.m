//
//  ViewController.m
//  Poly
//
//  Created by Florian BUREL on 05/01/2015.
//  Copyright (c) 2015 Florian Burel. All rights reserved.
//

#import "ViewController.h"
#import "Polygone.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *polygoneNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *polygoneDescriptionLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;


@property (nonatomic, /*readwrite, */strong) Polygone * polygone;

@end

@implementation ViewController


- (void)updateUI {
    self.polygoneNameLabel.text = self.polygone.name;
    self.polygoneDescriptionLabel.text = [NSString stringWithFormat:@"Ce polygone à %d cotés", self.polygone.edges];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Instanciation du Polygone
    self.polygone = [Polygone new];
    
    // Mise a jour de l'UI
    self.slider.value = self.polygone.edges;
    [self updateUI];
}
- (IBAction)handleSliderValueChanged:(id)sender
{
    self.polygone.edges = self.slider.value;
    [self updateUI];
}

@end
