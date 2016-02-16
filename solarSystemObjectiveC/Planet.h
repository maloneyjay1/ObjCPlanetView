//
//  Planet.h
//  solarSystemObjectiveC
//
//  Created by Jay Maloney on 11/30/15.
//  Copyright © 2015 Jay Maloney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Planet : NSObject

//instance method
- (instancetype)initWithName:(NSString *)name
                    diameter:(NSInteger)diameter
                   dayLength:(float)daylength
           millionKMsFromSun:(float)millionsKMsFromSun;

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *imageName;
@property (nonatomic, readonly) NSInteger diameter;
@property (nonatomic, readonly) float dayLength;
@property (nonatomic, readonly) float millionKMsFromSun;

@end


