//
//  MasterViewController.h
//  CoreData
//
//  Created by Vadim Krushinskiy on 28.12.14.
//  Copyright (c) 2014 Vadim Krushinskiy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) DetailViewController *detailViewController;

@end
