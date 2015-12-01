//
//  CommonHelper.h
//  beerFactory
//
//  Created by Paul Brenner on 8/31/15.
//  Copyright (c) 2015 reelGoodApps. All rights reserved.
//

#import <Foundation/Foundation.h>

NSURLRequest* request;
NSURLConnection *conn;
NSMutableData* responseData;
NSMutableArray* JSON;

@interface CommonHelper : NSObject

+ (NSMutableArray*) getProfileInfoForUsername:(NSString*) username;

@end
