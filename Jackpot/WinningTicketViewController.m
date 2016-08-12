//
//  ViewController.m
//  Jackpot
//
//  Created by Komari Herring on 7/26/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "WinningTicketViewController.h"

@interface WinningTicketViewController () <UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSNumber *firstNumber;
    NSNumber *secondNumber;
    NSNumber *thirdNumber;
    NSNumber *fourthNumber;
    NSNumber *fifthNumber;
    NSNumber *sixthNumber;
    

}
@end

@implementation WinningTicketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"You Win!";
//    firstNumber = NSNumber
//    secondNumber = NSNumber
//    thirdNumber = NSNumber
//    fourthNumber = NSNumber
//    fifthNumber = NSNumber
//    sixthNumber = NSNumber
    
    //arc4random_uniform(53)
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
