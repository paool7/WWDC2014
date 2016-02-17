//
//  ViewController.h
//  Paul Dippold
//
//  Created by Paul Dippold on 4/8/14.
//  Copyright (c) 2014 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>{
    IBOutlet UICollectionView *collectv;
    IBOutlet UIImageView *drag;
    CGPoint imagePosition;
    NSTimer *timer;
    IBOutlet UIButton *button1;
}

@end
