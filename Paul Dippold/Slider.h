//
//  Slider.h
//  Paul Dippold
//
//  Created by Paul Dippold on 4/10/14.
//  Copyright (c) 2014 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Slider : UIControl{
    UITextField *_textField;
    int radius;
}
@property (nonatomic,assign) int angle;
@end
