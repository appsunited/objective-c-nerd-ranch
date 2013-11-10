//
//  Logger.m
//  Callbacks
//
//  Created by Felix Weiß on 10.11.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data;
{
    NSLog(@"received %lu bytes", [data length]);
    
    if (!incomingData) {
        incomingData = [NSMutableData new];
    }
    
    [incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
}

- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    incomingData = nil;
}

@end
