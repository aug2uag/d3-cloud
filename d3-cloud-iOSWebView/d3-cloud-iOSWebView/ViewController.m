//
//  ViewController.m
//  d3-cloud-iOSWebView
//
//  Created by Rex Fatahi on 8/10/14.
//  Copyright (c) 2014 aug2uag. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIWebView* webView = [[UIWebView alloc] init];
    webView.frame = self.view.bounds;
    [self.view addSubview:webView];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"d3-wordCloud" withExtension:@"html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
