//
//  PlanetDetailViewController.m
//  solarSystemObjectiveC
//
//  Created by Jay Maloney on 11/30/15.
//  Copyright © 2015 Jay Maloney. All rights reserved.
//

#import "PlanetDetailViewController.h"
#import "Planet.h"

@interface PlanetDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *diameterLabel;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *lengthLabel;

@end

@implementation PlanetDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWithPlanet:self.planet];
}

-(void)updateWithPlanet:(Planet *)planet
{
    self.title = planet.name;
    self.planetImageView.image = [UIImage imageNamed:planet.imageName];
    self.diameterLabel.text = [NSString stringWithFormat:@"%@", @(planet.diameter)];
    self.distanceLabel.text = [NSString stringWithFormat:@"%@ 10^6km", @(planet.millionKMsFromSun)];
    self.lengthLabel.text = [NSString stringWithFormat:@"%@ hours", @(planet.dayLength)];
    
}

- (void)setPlanet:(Planet *)planet
{
    _planet = planet;
    [self updateWithPlanet:planet];
}

@end
