//
//  ViewController.m
//  WebView
//
//  Created by Dillan Nguyen on 2/9/15.
//  Copyright (c) 2015 Dillan Nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0.0, 20.0, self.view.bounds.size.width, self.view.bounds.size.height - 20.0)];
    [self.view addSubview:self.webView];
    self.webView.delegate = self;
    
    NSString *urlString = @"http://192.168.23.2"; // this IP address will only access camera on Honeypot // www.google.com/
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    if (urlRequest) {
        [self.webView loadRequest:urlRequest];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Web view delegate

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    if (error) {
        NSLog(@"%@", error);
    }
}

@end
