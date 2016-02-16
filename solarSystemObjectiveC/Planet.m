//
//  Planet.m
//  solarSystemObjectiveC
//
//  Created by Jay Maloney on 11/30/15.
//  Copyright © 2015 Jay Maloney. All rights reserved.
//

#import "Planet.h"

@implementation Planet

- (instancetype)initWithName:(NSString *)name diameter:(NSInteger)diameter dayLength:(float)daylength millionKMsFromSun:(float)millionsKMsFromSun
{
    self = [super init];
    if (self) {
        
        _name = [name copy];
        _imageName = [name lowercaseString];
        _diameter = diameter;
        _dayLength = daylength;
        _millionKMsFromSun = millionsKMsFromSun;
        
    }
    return self;
}

@end
