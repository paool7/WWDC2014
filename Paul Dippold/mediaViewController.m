//
//  mediaViewController.m
//  Paul Dippold
//
//  Created by Paul Dippold on 4/13/14.
//  Copyright (c) 2014 Paul Dippold. All rights reserved.
//

#import "mediaViewController.h"

@interface mediaViewController ()

@end

@implementation mediaViewController

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
    NSString *connect = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"http://apple.com"] encoding:NSUTF8StringEncoding error:nil];
    if (connect == NULL) {
        //self.navigationItem.title = @"Login";
        UIAlertView *alert3 = [[UIAlertView alloc] initWithTitle:@"Error"
                                                         message:@"No internet Connection"
                                                        delegate:self
                                               cancelButtonTitle:@"OK"
                                               otherButtonTitles:nil];
        [alert3 show];
    }
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)sw:(id)sender {
    stringer = @"sw";
    toolb.hidden=NO;
    web1.hidden=NO;
    [web1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://issuu.com/styleweekly/docs/16under16_2011web2/7?e=1555377/5510366"]]];
    [web1 setDelegate:self];
}
- (IBAction)hnr:(id)sender {
    stringer = @"hnr";
    toolb.hidden=NO;
    web1.hidden=NO;
    [web1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.henrico.k12.va.us/Newsroom/NewsReleases/2013-14/011414.html"]]];
    [web1 setDelegate:self];
}
- (IBAction)htv:(id)sender {
    stringer = @"htv";
    toolb.hidden=NO;
    web1.hidden=NO;
    [web1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://schools.henrico.k12.va.us/godwin/2014/03/06/video-hcps-link-app-developer/"]]];
    [web1 setDelegate:self];
}
- (IBAction)rtd:(id)sender {
    stringer = @"rtd";
    toolb.hidden=NO;
    web1.hidden=NO;
    [web1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.timesdispatch.com/news/local/education/godwin-student-creates-app-for-henrico-schools/article_f0aee1df-0e3c-5efe-948d-e4aae2905a4e.html"]]];
    [web1 setDelegate:self];
}
- (IBAction)mw:(id)sender {
    stringer = @"mw";
    toolb.hidden=NO;
    web1.hidden=NO;
    [web1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://paool.com"]]];
    [web1 setDelegate:self];
}
- (IBAction)done:(id)sender {
    [web1 loadHTMLString:nil
                 baseURL:nil];
    toolb.hidden=YES;
    web1.hidden=YES;
    stringer = @"done";
}
- (IBAction)open:(id)sender {
    if ([stringer  isEqual:@"sw"]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://issuu.com/styleweekly/docs/16under16_2011web2/7?e=1555377/5510366"]];
    } else if ([stringer  isEqual:@"hnr"]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.henrico.k12.va.us/Newsroom/NewsReleases/2013-14/011414.html"]];
    }else if ([stringer  isEqual:@"htv"]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://schools.henrico.k12.va.us/godwin/2014/03/06/video-hcps-link-app-developer/"]];
    }else if ([stringer  isEqual:@"rtd"]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.timesdispatch.com/news/local/education/godwin-student-creates-app-for-henrico-schools/article_f0aee1df-0e3c-5efe-948d-e4aae2905a4e.html"]];
    }else if ([stringer  isEqual:@"mw"]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://paool.com"]];
    }
}

- (void)webViewDidStartLoad:(UIWebView *)web {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    
}

- (void)webViewDidFinishLoad:(UIWebView *)web {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
