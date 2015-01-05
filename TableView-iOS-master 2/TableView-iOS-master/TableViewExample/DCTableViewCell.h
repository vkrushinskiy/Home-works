//
//  DCTableViewCell.h
//  TableViewExample
//
//  Created by Vadim Krushinskiy on 14/11/14.
//  Copyright (c) 2014. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *flags;
@property (strong, nonatomic) IBOutlet UILabel *countriesName;
@property (strong, nonatomic) IBOutlet UILabel *countriesContinent;

@end
