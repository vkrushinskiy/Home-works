//
//  DCViewController.m
//  TableViewExample
//
//  Created by Vadim Krushinskiy on 14/11/14.
//  Copyright (c) 2014. All rights reserved.
//

#import "DCViewController.h"
#import "DCTableViewCell.h"



@interface DCViewController ()

@end



@implementation DCViewController

//- (IBAction)PlayAudioButton:(id)sender {
   // AudioServicesPlaySystemSound(PlaySoundID);
//}




- (void)viewDidLoad

{
    [super viewDidLoad];
    
   CGRect myImageRect = CGRectMake(0.0f, 0.0f, 320.0f, 160.0f);
    UIImageView *myImage = [[UIImageView alloc] initWithFrame:myImageRect];
    myImage.image = [UIImage imageNamed:@"capitals3.jpg"];
    [self.view addSubview:myImage];
    
    
   //Countries names
        
    self.countries = [NSArray arrayWithObjects:@"CAPITALS", @"France", @"USA", @"Ukraine", @"Italy", @"Russia", @"Germany", @"Uruguay", @"China", @"Indonesia", @"Nigeria", @"Egypt", @"Japan", @"Colombia", nil];
    
    self.countriesContinent = [NSArray arrayWithObjects:@"Created by Vadim Krushinskiy, 2014", @"Created by Vadim Krushinskiy, 2014", @"NEW-YORK", @"KYIV", @"ROME", @"MOSCOW", @"BERLIN", @"MONTEVIDEO", @"BEIJING (PEKING)", @"JAKARTA", @"ABUJA", @"CAIRO", @"TOKYO", @"BOGOTA", nil];
    
    
      // Initialize flagsImages
    self.flags = [NSArray arrayWithObjects: @"cities.jpeg", @"france-button4.jpeg", @"usa-button!.jpeg", @"ukraine-press.jpeg", @"italy-press!.jpeg", @"russia-button.jpeg", @"germany-button!!.jpeg", @"uruquay-button!!!.jpeg", @"china-button.jpeg", @"indonesia-button.jpg", @"nigeria-button.jpeg", @"egypt-button.jpeg", @"japan-button!!!.jpg", @"colombia-button.jpg", nil];
    
    
          UIAlertView* alert=[[UIAlertView alloc] initWithTitle:@"CAPITALS OF COUNTRIES" message:@"Please select any flag of country and you will know capital" delegate:nil cancelButtonTitle:@"PLAY" otherButtonTitles:nil];
      [alert show];
        //[alert release];
    
   //NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"button-19" ofType:@"mp3"]];
   //AudioServicesCreateSystemSoundID((_bridge CFURLRef)SoundURL, &PlaySoundID);
    
    
    
    
   }


//-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
  //  return @"Capitals";
//}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.countries count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
      DCTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCustomCell"];
    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"DCTableViewCell" bundle:nil] forCellReuseIdentifier:@"MyCustomCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"MyCustomCell"];
    }
    
    cell.countriesName.text = [self.countries objectAtIndex:indexPath.row];
    cell.countriesName.font = [UIFont fontWithName:@"BodoniSvtyTwoOSITCTT-Bold" size:20.0];
    cell.countriesContinent.text = [self.countriesContinent objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[self.flags objectAtIndex:indexPath.row]];
    
    return cell;
}


- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *rowValue = self.countriesContinent[indexPath.row];
    NSString *message = [[NSString alloc] initWithFormat:@"%@"  , rowValue];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   }



@end
