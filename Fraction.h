//
//  Fraction.h
//  Fraction
//
//  Created by Tsznok Wong on 29/8/14.
//  Copyright (c) 2014 Tsznok Wong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int nume, deno;
-(void) print;
-(void) setTo: (int)n over: (int)d;
-(double) convert;
-(void) add: (Fraction *)f;
-(void) minus: (Fraction *)f;
-(void) multiply: (Fraction *)f;
-(void) square;
-(void) cube;
-(void) divide: (Fraction *)f;
-(void) reduce;
@end
