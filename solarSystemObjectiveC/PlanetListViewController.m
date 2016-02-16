//
//  PlanetListViewController.m
//  solarSystemObjectiveC
//
//  Created by Jay Maloney on 11/30/15.
//  Copyright © 2015 Jay Maloney. All rights reserved.
//

#import "PlanetListViewController.h"
#import "PlanetController.h"
#import "Planet.h"
#import "PlanetDetailViewController.h"

@interface PlanetListViewController ()

@end

@implementation PlanetListViewController

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[PlanetController planets] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"planetCell" forIndexPath:indexPath];
    
    Planet *planet = [PlanetController planets] [indexPath.row];
    
    cell.textLabel.text = planet.name;
    //%@ is a format specifier, it's a placeholder for string interpolation
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Planet %@", @(indexPath.row + 1)];
    cell.imageView.contentMode = UIViewContentModeScaleAspectFill;
    cell.imageView.image = [UIImage imageNamed:planet.imageName];
    
    return cell;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"toPlanetDetail"]) {
        PlanetDetailViewController *detailViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Planet *planet = [PlanetController planets][indexPath.row];
        detailViewController.planet = planet;
    }
}


@end
