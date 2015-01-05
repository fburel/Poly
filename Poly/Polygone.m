//
//  Polygone.m
//  Poly
//
//  Created by Florian BUREL on 05/01/2015.
//  Copyright (c) 2015 Florian Burel. All rights reserved.
//

#import "Polygone.h"

#define POLYGONE_NAMES  @[@"Triangle", @"Quadrilatère", @"Pentagone", @"Héxagone", @"Heptagone", @"Octogone", @"Ennéagone", @"Décagone", @"Hendécagone",@"Dodécagone"]

#define DEFAULT_NUMBER_OF_SIDE  5
#define MINIMUM_NUMBER_OF_SIDE  3
#define MAXIMUM_NUMBER_OF_SIDE  12


@implementation Polygone
{
    int _edges;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _edges = DEFAULT_NUMBER_OF_SIDE;
    }
    return self;
}


- (void)setEdges:(int)edges
{
    if(edges < MINIMUM_NUMBER_OF_SIDE || edges > MAXIMUM_NUMBER_OF_SIDE)
    {
        // do nothing
    }
    else
    {
        _edges = edges;
    }
    
}

- (int)edges
{
    return _edges;
}

- (NSString *)name
{
    return POLYGONE_NAMES[_edges - 3];
}
@end
