//
//  UserObject.h
//  beerFactory
//
//  Created by Paul Brenner on 9/11/15.
//  Copyright (c) 2015 reelGoodApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BeerObject.h"

@interface UserObject : NSObject

@property NSNumber* ID;
@property NSString* username;
@property BeerObject* beer;

@end
