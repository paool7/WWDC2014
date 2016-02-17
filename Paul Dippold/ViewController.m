//
//  ViewController.m
//  Paul Dippold
//
//  Created by Paul Dippold on 4/8/14.
//  Copyright (c) 2014 Paul Dippold. All rights reserved.
//

#import "ViewController.h"
#import "Slider.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSMutableArray *array;
}
#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad

- (void)viewDidLoad
{
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"image.png"] forBarMetrics:UIBarMetricsDefault];
    
    UIVisualEffectView *effecter = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
    effecter.frame = self.view.bounds;
    [self.view insertSubview:effecter atIndex:1];

    [super viewDidLoad];

    drag.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"ww1.png"],
                                 [UIImage imageNamed:@"ww2.png"],
                                 [UIImage imageNamed:@"ww3.png"],
                                 [UIImage imageNamed:@"ww4.png"],
                                 [UIImage imageNamed:@"ww5.png"], nil];
    drag.animationDuration = 20.00;
    drag.animationRepeatCount = 0;
    
    if ( IDIOM == IPAD ) {
        [drag setFrame:CGRectMake(drag.frame.origin.x,
                                  drag.frame.origin.y,768,680)];    } else {
        [drag setFrame:CGRectMake(drag.frame.origin.x,
                                  drag.frame.origin.y,320,295)];    }
    [drag startAnimating];
    
    array = [[NSMutableArray alloc] init];
    [array addObject:[UIImage imageNamed:@"ww1.png"]];
    [array addObject:[UIImage imageNamed:@"ww2.png"]];
    [array addObject:[UIImage imageNamed:@"ww3.png"]];
    [array addObject:[UIImage imageNamed:@"ww4.png"]];
    [array addObject:[UIImage imageNamed:@"ww5.png"]];
    
    collectv.backgroundColor = [UIColor clearColor];
    collectv.backgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    
    }
- (IBAction)close:(id)sender {
    collectv.hidden = YES;
    button1.hidden = YES;
    drag.hidden = NO;
    [drag startAnimating];
}
- (IBAction)open:(id)sender {
    collectv.hidden = NO;
    button1.hidden = NO;
    drag.hidden = YES;
    [drag stopAnimating];
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
    [image setImage:[array objectAtIndex:indexPath.row]];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [drag stopAnimating];
}
-(void)viewWillAppear:(BOOL)animated{
    [drag startAnimating];
}

@end
