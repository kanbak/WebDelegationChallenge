//
//  ViewController.h
//  WebBrowser
//
//  Created by Umut Kanbak on 7/15/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate, UITextFieldDelegate>
-(IBAction)goToUrl:(id)sender;

@end
