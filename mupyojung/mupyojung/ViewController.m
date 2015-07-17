//
//  ViewController.m
//  mupyojung
//
//  Created by GTyga on 7/17/15.
//  Copyright (c) 2015 GTyga. All rights reserved.
//

#import "ViewController.h"

#define SERVER	@"http://www.4kerface.com/index.php?mid=main&act=dispMemberLoginForm"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
//	self.webView.scrollView.bounces = NO;

	// 웹 UserAgent 변조
	//NSDictionary *appDefaults = [NSDictionary dictionaryWithObject:[NSNumber numberWithBool:YES] forKey:@"CacheDataAgressively"];
	//[[NSUserDefaults standardUserDefaults] registerDefaults:appDefaults];
//	UIWebView *webView = [[UIWebView alloc] init];
//	NSString *userAgent = [webView  stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"];
//	NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:[userAgent stringByAppendingString:@"TODO"], @"UserAgent", nil];
//	[[NSUserDefaults standardUserDefaults] registerDefaults:dictionary];
//	NSLog(@"user-agent: %@", [self.webView stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"]);

	[self loadUrl:SERVER];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)loadUrl:(NSString *)urlString
{
	NSURL *url = [NSURL URLWithString:urlString];
	NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
	[self.webView loadRequest:urlRequest];
}

//URL 요청시 처리
- (BOOL) webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
//	NSLog(@"shouldStartLoadWithRequest: %@", [request URL]);
//	NSString * urlString = request.URL.absoluteString;

	return YES;
}

@end
