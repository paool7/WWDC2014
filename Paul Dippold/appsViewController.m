//
//  appsViewController.m
//  Paul Dippold
//
//  Created by Paul Dippold on 4/13/14.
//  Copyright (c) 2014 Paul Dippold. All rights reserved.
//

#import "appsViewController.h"

@interface appsViewController ()

@end

@implementation appsViewController
#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad

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
    drag.animationImages = [NSArray arrayWithObjects:
                            [UIImage imageNamed:@"1.jpg"],
                            [UIImage imageNamed:@"2.jpg"],
                            [UIImage imageNamed:@"3.jpg"],
                            [UIImage imageNamed:@"4.jpg"],
                            [UIImage imageNamed:@"5.jpg"],
                            [UIImage imageNamed:@"6.jpg"],
                            [UIImage imageNamed:@"7.jpg"],
                            [UIImage imageNamed:@"8.jpg"],
                            [UIImage imageNamed:@"9.jpg"],
                            [UIImage imageNamed:@"10.jpg"],
                            [UIImage imageNamed:@"11.jpg"],
                            [UIImage imageNamed:@"12.jpg"],
                            [UIImage imageNamed:@"13.jpg"],
                            [UIImage imageNamed:@"14.jpg"],
                            [UIImage imageNamed:@"15.jpg"],
                            [UIImage imageNamed:@"16.jpg"],
                            [UIImage imageNamed:@"17.jpg"],
                            [UIImage imageNamed:@"18.jpg"],
                            [UIImage imageNamed:@"19.jpg"],
                            [UIImage imageNamed:@"20.jpg"],
                            [UIImage imageNamed:@"21.jpg"],
                            [UIImage imageNamed:@"22.jpg"],
                            [UIImage imageNamed:@"23.jpg"],
                            [UIImage imageNamed:@"24.jpg"],
                            [UIImage imageNamed:@"25.jpg"],
                            [UIImage imageNamed:@"26.jpg"],
                            [UIImage imageNamed:@"27.jpg"],
                            [UIImage imageNamed:@"28.jpg"],
                            [UIImage imageNamed:@"29.jpg"],
                            [UIImage imageNamed:@"30.jpg"],
                            [UIImage imageNamed:@"31.jpg"],
                            [UIImage imageNamed:@"32.jpg"],nil];
    drag.animationDuration = 5.00;
    drag.animationRepeatCount = 0;
    [drag startAnimating];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [drag stopAnimating];
}
-(void)viewWillAppear:(BOOL)animated{
    [drag startAnimating];
}
- (IBAction)open1:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/hcps/id627210926?mt=8"]];
}
- (IBAction)open2:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/dodge-the-dalek/id593777565?mt=8"]];
}
- (IBAction)open3:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/cell-laws/id707987011?mt=8"]];
}
- (IBAction)open4:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/crowdfindr/id675221925?mt=8"]];
}
- (IBAction)open5:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/how-much-is-it/id633282697?mt=8"]];
}
- (IBAction)open6:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/pixel-weather/id690774062?mt=8"]];
}
- (IBAction)open7:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/stepper/id487543310?mt=8"]];
}
- (IBAction)open8:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/taskinator/id690396297?mt=8"]];
}
- (IBAction)open9:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/trip-cost-calc/id691516672?mt=8"]];
}
- (IBAction)open10:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/hold-music/id399862268?mt=8"]];
}
- (IBAction)open11:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/tea-box/id690383663?mt=8"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
