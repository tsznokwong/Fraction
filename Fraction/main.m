//
//  main.m
//  Fraction
//
//  Created by Tsznok Wong on 29/8/14.
//  Copyright (c) 2014 Tsznok Wong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#define mkfract ([[Fraction alloc]init])

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *a=mkfract;
        Fraction *b=mkfract;
        [a setTo:-72 over:200];
        [b setTo:-27 over:81];
        [a square];
        [a print];
        NSLog(@"%.8f",[a convert]);
        
    }
    return 0;
}


