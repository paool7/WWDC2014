//
//  mediaViewController.h
//  Paul Dippold
//
//  Created by Paul Dippold on 4/13/14.
//  Copyright (c) 2014 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mediaViewController : UIViewController<UIWebViewDelegate>{
    IBOutlet UIScrollView *scrollView;
    IBOutlet UIToolbar *toolb;
    IBOutlet UIWebView *web1;
    NSString *stringer;
    IBOutlet UIImageView *imager;
}

@end
