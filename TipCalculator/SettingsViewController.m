//
//  SettingsViewController.m
//  TipCalculator
//
//  Created by Henry Ching on 9/12/15.
//  Copyright (c) 2015 Henry Ching. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;
- (IBAction)onTapTipControl:(id)sender;
- (void)saveSettings;
@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger intValue = [defaults integerForKey:@"defaultTipPct"];
    self.defaultTipControl.selectedSegmentIndex = intValue;
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

- (void)saveSettings {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultTipControl.selectedSegmentIndex forKey:@"defaultTipPct"];
    [defaults synchronize];
}

- (IBAction)onTapTipControl:(id)sender {
    [self saveSettings];
}


@end
