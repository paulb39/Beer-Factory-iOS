//
//  BeerObject.h
//  beerFactory
//
//  Created by Paul Brenner on 9/9/15.
//  Copyright (c) 2015 reelGoodApps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BeerObject : NSObject

@property NSNumber* ID;
@property NSString* title;
@property NSString* style; // enum?
@property NSString* brewery;
@property NSNumber* ABV;
@property NSNumber* rating; //object?
@property NSString* comments;

@end
