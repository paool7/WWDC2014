//
//  collectionViewController.m
//  Paul Dippold
//
//  Created by Paul Dippold on 4/12/14.
//  Copyright (c) 2014 Paul Dippold. All rights reserved.
//

#import "collectionViewController.h"

@interface collectionViewController ()

@end

@implementation collectionViewController{
    NSMutableArray *array;
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
    array = [[NSMutableArray alloc] initWithObjects:@"2.png", @"4.png", @"1.png",@"5.png", @"6.png", @"7.png", @"8.png", @"9.png", @"flow.png", @"10.png", @"11.png", @"12.png", @"13.png", @"14.png", @"16.png", @"15.png", @"17.png", @"18.png", @"7unblurred.png", nil];

    
    collectv.backgroundColor = [UIColor clearColor];
    collectv.backgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger )numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [array count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    UIImageView *image = (UIImageView *)[cell viewWithTag:10];
    [image setImage:[UIImage imageNamed:[array objectAtIndex:indexPath.row]]];
    
    [cell.layer setBorderWidth:1.0f];
    [cell.layer setBorderColor:[UIColor whiteColor].CGColor];
    [cell.layer setCornerRadius:5.0f];
    return cell;
}
@end
