//
//  SettingsViewController.m
//  TipCalc
//
//  Created by Erika Arnold on 1/19/15.
//  Copyright (c) 2015 Erika Arnold. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultControl;

- (IBAction)newDefault:(UISegmentedControl *)sender;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int newDefault = [defaults integerForKey:@"defaultIndex"];
    self.defaultControl.selectedSegmentIndex = newDefault;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)newDefault:(UISegmentedControl *)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultControl.selectedSegmentIndex forKey:@"defaultIndex"];
    [defaults synchronize];
}

@end
