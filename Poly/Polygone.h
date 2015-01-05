//
//  Polygone.h
//  Poly
//
//  Created by Florian BUREL on 05/01/2015.
//  Copyright (c) 2015 Florian Burel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Polygone : NSObject

/// Accessor for the number of edges
- (void) setEdges:(int)edges;
- (int) edges;

/// Returns the name of the receiver
- (NSString *) name;

@end
