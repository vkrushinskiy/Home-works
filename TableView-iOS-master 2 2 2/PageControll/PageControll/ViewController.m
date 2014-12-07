//
//  ViewController.m
//  PageControll
//
//  Created by Vadim Krushinskiy on 07.12.14.
//  Copyright (c) 2014 Vadim Krushinskiy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@synthesize kep;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gombsor:(UIPageControl *)sender {
self.kep.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpeg", sender.currentPage+1]];
    }
@end
