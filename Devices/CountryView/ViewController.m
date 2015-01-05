//
//  ViewController.m
//  CountryView
//
//  Created by Admin on 18.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//


#import "ViewController.h"
#import "DetailsDevicesViewController.h"
@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) NSArray *kindOfDevice;
@property (nonatomic,strong) NSDictionary *DataDevices;
@property (nonatomic,strong) UITableView *TableView;
@end


@implementation ViewController{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
       CGRect myImageRect = CGRectMake(0.0f, 0.0f, 320.0f, 480.0f);
    UIImageView *myImage = [[UIImageView alloc] initWithFrame:myImageRect];
    myImage.image = [UIImage imageNamed:@"Default.png"];
    [self.view addSubview:myImage];
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"DEVICES" delegate:self  cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
   
    self.TableView = [[UITableView alloc] init];
    self.TableView.frame=CGRectMake(30, 50, 270, 400);
    [self.view addSubview:self.TableView];
    self.TableView.dataSource=self;
    self.TableView.delegate=self;
    self.DataDevices = @{@"iPhone" : @[@"iPhone",@"iPhone 3G",@"iPhone 4",@"iPhone 5",@"iPhone 6"],
                           @"iPad" : @[@"iPad 2",@"iPad 3",@"iPad 4",@"iPad air"]};
    
    self.kindOfDevice =[[self.DataDevices allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    [self.TableView release];
}



-(void) dealloc {
    self.DataDevices = nil;
    self.kindOfDevice = nil;
    
    [super dealloc];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [self.kindOfDevice count];
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [self.kindOfDevice objectAtIndex:section];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *sectionTitle = [self.kindOfDevice objectAtIndex:section];
    NSArray *SectionCountries = [self.DataDevices objectForKey:sectionTitle];
    return [SectionCountries count];
    
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[[UITableViewCell alloc] init] autorelease];
    NSString *sectionTitle = [self.kindOfDevice objectAtIndex:indexPath.section];
    NSArray *SectionCountries = [self.DataDevices objectForKey:sectionTitle];
    NSString *countries = [SectionCountries objectAtIndex:indexPath.row];
    cell.textLabel.text = countries;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    DetailsDevicesViewController *detailsDevices = [[DetailsDevicesViewController alloc] initWithDeviceName: cell.textLabel.text];
    [self presentViewController:detailsDevices animated:YES completion:nil];
    [detailsDevices release];
}


@end
