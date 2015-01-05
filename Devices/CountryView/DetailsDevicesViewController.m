//
//  DetailsDevicesViewController.m
//  CountryView
//
//  Created by Admin on 19.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "DetailsDevicesViewController.h"
#import "ViewController.h"

@interface DetailsDevicesViewController ()

@property (nonatomic, strong) NSString *DeviceName;
@property (nonatomic, assign) UIWebView *webView;

@end

@implementation DetailsDevicesViewController

#pragma mark - Instance initialization

-(instancetype) initWithDeviceName:(NSString *)DeviceName{
    self= [super initWithNibName:nil bundle:nil];
    
    if (!self){
        return 0;
    }
    
    self.DeviceName = DeviceName;
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:webView];
    self.webView=webView;
    [webView release];
    
    NSString *urlPath = [NSString stringWithFormat:@"http://en.wikipedia.org/wiki/%@", self.DeviceName];
    urlPath = [urlPath stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL *url = [NSURL URLWithString:urlPath];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    return self;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
