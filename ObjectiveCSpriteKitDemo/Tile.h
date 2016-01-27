//
//  Tile.h
//  ObjectiveCSpriteKitDemo
//
//  Created by Clinton Medbery on 1/27/16.
//  Copyright © 2016 Clinton Medbery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

@interface Tile : SKSpriteNode

-(id)init:(NSString*)spriteTextureName xPos:(CGFloat)xPos yPos:(CGFloat)yPos width:(int) width height:(int) height;

@end