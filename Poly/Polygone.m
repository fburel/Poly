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

bool OffLimit(edges)
{
    return edges < MINIMUM_NUMBER_OF_SIDE || edges > MAXIMUM_NUMBER_OF_SIDE;
}


- (instancetype)initWithEdges:(int)edges
{
    self = [super init];
    if (self) {
        if(OffLimit(edges))
        {
            self.edges = DEFAULT_NUMBER_OF_SIDE;
        }
        else
        {
            self.edges = edges;
        }
    }
    return self;
}

- (instancetype)init
{
    return [self initWithEdges:DEFAULT_NUMBER_OF_SIDE];
}


- (void)setEdges:(int)edges
{
    if(OffLimit(edges))
    {
        // do nothing
    }
    else
    {
        _edges = edges;
    }
    
}

- (NSString *)name
{
    return POLYGONE_NAMES[self.edges - 3];
}
@end
