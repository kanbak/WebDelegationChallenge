//
//  ViewController.m
//  WebBrowser
//
//  Created by Umut Kanbak on 7/15/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UIWebView *webView;
    
    __weak IBOutlet UITextField *textField;
    
}
- (IBAction)textField:(id)sender;

- (IBAction)goButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [textField setDelegate:self];
    NSString *address = textField.text;
    NSURL *url = [NSURL URLWithString:address];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    webView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textField:(id)sender
{
    NSURL *url = [NSURL URLWithString:textField.text];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [self.view endEditing:YES];
    
}

- (IBAction)goToUrl:(id)sender;
{
    NSURL *url = [NSURL URLWithString:textField.text];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [textField resignFirstResponder];
}

#pragma mark UIwebview delegate
-(void)webViewDidStartLoad:(UIWebView *)webView;
{
    NSLog(@"Webview started");
}

-(void)webViewDidFinishLoad:(UIWebView *)webView;
{
NSLog(@"Webview ended");
}



@end
