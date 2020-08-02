//
//  Fraction.m
//  Fraction
//
//  Created by Tsznok Wong on 29/8/14.
//  Copyright (c) 2014 Tsznok Wong. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize nume, deno;
-(void) print{
    NSLog(@"%i/%i", nume, deno);
}
-(void)setTo:(int)n over:(int)d{
    nume = n;
    deno = d;
}
-(double) convert{
    if(deno!=0)return (double) nume/deno;
    else return NAN;
}
-(void) add:(Fraction *)f{
    nume = nume*f.deno+deno*f.nume;
    deno = deno*f.deno;
    [self reduce];
}
-(void) minus:(Fraction *)f{
    nume = nume*f.deno-deno*f.nume;
    deno = deno*f.deno;
    [self reduce];
}
-(void) multiply:(Fraction *)f{
    nume = nume*f.nume;
    deno = deno*f.deno;
    [self reduce];
}
-(void) square{
    nume *= nume;
    deno *= deno;
    [self reduce];
}
-(void) cube{
    nume *= nume * nume;
    deno *= deno * deno;
    [self reduce];
}
-(void) divide:(Fraction *)f{
    nume = nume*f.deno;
    deno = deno*f.nume;
    [self reduce];
}
-(void) reduce{
    int u =nume;
    int v =deno;
    int tmp;
    while(v!=0){
        tmp=u%v;
        u=v;
        v=tmp;
    }
    nume /= u;
    deno /= u;
    if (deno < 0){
        nume*= -1;
        deno*= -1;
    }
}

@end
