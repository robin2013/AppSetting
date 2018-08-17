//
//  ViewController.m
//  AppSetting
//
//  Created by cuiyinjiang on 2018/8/17.
//  Copyright © 2018年 cuiyinjiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labChoice;
@property (weak, nonatomic) IBOutlet UILabel *labSwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testSetting];
    [self loadSetting];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testSetting {
    NSUserDefaults *defaults  = [NSUserDefaults standardUserDefaults];
    NSString *text = [defaults valueForKey:@"selecter"];
    if (text) {
        NSLog(text);
    } else {
        NSLog(@"nothing");
    }
}

- (void)loadSetting {
    NSUserDefaults *defaults  = [NSUserDefaults standardUserDefaults];
    self.labChoice.text = [defaults valueForKey:@"selecter"];
    id value = [defaults valueForKey:@"enabled_preference"];
    if ([value boolValue]) {
        self.labSwitch.text = @"ok";
    } else {
        self.labSwitch.text = @"fail";
    }
}

@end
