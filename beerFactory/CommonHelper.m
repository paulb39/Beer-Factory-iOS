//
//  CommonHelper.m
//  beerFactory
//
//  Created by Paul Brenner on 8/31/15.
//  Copyright (c) 2015 reelGoodApps. All rights reserved.
//

#import "CommonHelper.h"

@implementation CommonHelper


+ (NSMutableArray*) getProfileInfoForUsername:(NSString*) username {
    NSMutableArray* _tmpBeerObjects = [NSMutableArray new];
    NSString* _url = [NSString stringWithFormat:@"http://www.brennerbrothersbrewery.com/%@", username]; //Use constant?
    
    request = [NSURLRequest requestWithURL:[NSURL URLWithString:_url]];
    conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [conn start];
    
    return _tmpBeerObjects;
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    // A response has been received, this is where we initialize the instance var you created
    // so that we can append data to it in the didReceiveData method
    // Furthermore, this method is called each time there is a redirect so reinitializing it
    // also serves to clear it
    responseData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    // Append the new data to the instance variable you declared
    [responseData appendData:data];
}


- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    // The request is complete and data has been received
    // You can parse the stuff in your instance variable now
    
    //parse in callback???
    
    NSError* Error;
    JSON = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingAllowFragments error:&Error];
    
    if (!Error) {
        NSLog(@"JSON is %@", JSON); // PARSE
    } else {
        NSLog(@"There was an error: %@", Error);
    }
    
    //reset connection
    responseData = nil;
    conn = nil;
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    // The request has failed for some reason!
    // Check the error var
    NSLog(@"There was an error: %@", error.localizedDescription);
    //reset connection
    responseData = nil;
    conn = nil;
}



@end
