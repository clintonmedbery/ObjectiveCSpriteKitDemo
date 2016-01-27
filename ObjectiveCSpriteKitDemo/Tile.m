//
//  Tile.m
//  ObjectiveCSpriteKitDemo
//
//  Created by Clinton Medbery on 1/27/16.
//  Copyright © 2016 Clinton Medbery. All rights reserved.
//

#import "Tile.h"

@implementation Tile : SKSpriteNode

-(id)init:(NSString*)spriteTextureName xPos:(CGFloat)xPos yPos:(CGFloat)yPos width:(int) width height:(int) height{
    SKTexture* imageTexture = [SKTexture textureWithImageNamed:spriteTextureName];
    CGSize spriteSize = CGSizeMake(width, height);
    self = [super initWithTexture:imageTexture color:[SKColor clearColor] size:spriteSize];
    CGPoint point = CGPointMake(xPos, yPos);
    self.position = point;
    
    
    return self;
}

@end
