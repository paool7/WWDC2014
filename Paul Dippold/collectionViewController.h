//
//  collectionViewController.h
//  Paul Dippold
//
//  Created by Paul Dippold on 4/12/14.
//  Copyright (c) 2014 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface collectionViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>{
    IBOutlet UICollectionView *collectv;
}

@end
