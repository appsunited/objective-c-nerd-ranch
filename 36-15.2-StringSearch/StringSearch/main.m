//
//  main.m
//  StringSearch
//
//  Created by Felix Weiss on 15.08.13.
//  Copyright (c) 2013 appsunited. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Read through the contents of the files
        NSString *wordString = [NSString stringWithContentsOfFile:@ "/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        NSString *nameString = [NSString stringWithContentsOfFile:@ "/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        
        //Break them down into strings
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        // Compare strings in both arrays
        for (NSString *n in names) {
            for (NSString *w in words) {
                if ([n caseInsensitiveCompare:w] == NSOrderedSame) {
                    NSLog(@"Found \"%@\" and \"%@\"", n, w);
                }
            }
        }
    }
    return 0;
}

