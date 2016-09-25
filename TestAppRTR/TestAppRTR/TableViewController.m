//
//  TableViewController.m
//  DemoApp
//
//  Created by Lea Marolt on 11/22/15.
//  Copyright © 2015 Lea Marolt Sonnenschein. All rights reserved.
//

#import "TableViewController.h"

// 3. ENUMS

typedef NS_ENUM(NSInteger, kSection) {
    kSectionFirstName,
    kSectionLastName,
    kSectionBirthday,
    kSectionHeight,
    kSectionWeight,
    kSectionCount
};

@interface TableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"The Swift";
    NSLog(@"Lalala");
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return kSectionCount;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"profileCell" forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case kSectionFirstName:
            cell.textLabel.text = @"First Name";
            cell.detailTextLabel.text = @"Taylor";
            break;
        case kSectionLastName:
            cell.textLabel.text = @"Last Name";
            cell.detailTextLabel.text = @"Swift";
            break;
        case kSectionBirthday:
            cell.textLabel.text = @"Birthday";
            cell.detailTextLabel.text = @"Dec 13, 1989";
            break;
        case kSectionHeight:
            cell.textLabel.text = @"Height";
            cell.detailTextLabel.text = @"5'9";
            break;
        case kSectionWeight:
            cell.textLabel.text = @"Weight";
            cell.detailTextLabel.text = @"120 lbs";
            break;
        default:
            break;
    }
    
    return cell;
}

@end
