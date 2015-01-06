//
//  PolygoneDrawer.m
//  Poly
//
//  Created by Florian BUREL on 06/01/2015.
//  Copyright (c) 2015 Florian Burel. All rights reserved.
//

#import "PolygoneDrawer.h"

@implementation PolygoneDrawer


- (void)setEdges:(int)edges
{
    _edges = edges;
    [self setNeedsDisplay]; // Redessine la vue! (invoke drawRect: )
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {

    float offset = _edges % 2 ?  - M_PI  /2 :  - M_PI  / 4;
    float height = rect.size.height;
    float width = rect.size.width;
    float Mx = width  /2.;
    float My = height / 2.;
    float alpha = 2 * M_PI / _edges;
    float radius = MIN(Mx, My);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(ctx);
    for(int i = 0; i < _edges ; i++)
    {
        
        
        float x = Mx + cosf((alpha * i) + offset) * radius;
        float y = My + sinf((alpha * i) + offset) * radius;
        if(0 == i)
            CGContextMoveToPoint(ctx, x, y);
        else
            CGContextAddLineToPoint(ctx, x, y);
    }
    CGContextClosePath(ctx);
    
    UIColor * red = [UIColor redColor];
    UIColor * white = [UIColor whiteColor];
    
    CGContextSetFillColorWithColor(ctx, red.CGColor);
    CGContextSetStrokeColorWithColor(ctx, white.CGColor);
    
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
}


@end
