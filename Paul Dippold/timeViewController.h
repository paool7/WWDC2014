//
//  timeViewController.h
//  Paul Dippold
//
//  Created by Paul Dippold on 4/12/14.
//  Copyright (c) 2014 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface timeViewController : UIViewController <UIWebViewDelegate>{
    IBOutlet UISegmentedControl *segmenter;
    IBOutlet UIScrollView *scrollView;
    IBOutlet UIToolbar *toolb;
    IBOutlet UIWebView *web1;
    NSString *stringer;
}

- (IBAction) changer;

@end
