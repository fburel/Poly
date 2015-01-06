//
//  Polygone.h
//  Poly
//
//  Created by Florian BUREL on 05/01/2015.
//  Copyright (c) 2015 Florian Burel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Polygone : NSObject

/// Constructor
- (instancetype)initWithEdges:(int)edges;

/// Accessor for the number of edges
@property (nonatomic) int edges;

/// Returns the name of the receiver
- (NSString *) name;

@end
