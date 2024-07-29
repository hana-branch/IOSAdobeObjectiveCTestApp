//
//  ViewController.m
//  ObjectiveC Test App
//
//  Created by Hana Park on 4/1/21.
//
@import AEPCore;

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)pressedStandardEventButton:(UIButton *)sender {
    [AEPMobileCore trackAction:@"PURCHASE" data:@{
        @"revenue": @"200.0",
        @"transaction_id": @"C000F1F7-D8DA-4C31-9049-93B57BF788ED",
        @"currency": @"USD"
    }];
}

- (IBAction)pressedCustomEventButton:(UIButton *)sender {
    [AEPMobileCore trackAction:@"CUSTOM_VIEW_EVENT" data:@{
        @"revenue": @"200.0",
        @"transaction_id": @"C000F1F7-D8DA-4C31-9049-93B57BF788ED",
        @"currency": @"USD"
    }];
}

@end
