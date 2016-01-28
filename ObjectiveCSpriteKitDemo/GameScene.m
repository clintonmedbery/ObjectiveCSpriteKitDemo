//
//  GameScene.m
//  ObjectiveCSpriteKitDemo
//
//  Created by Clinton Medbery on 1/27/16.
//  Copyright (c) 2016 Clinton Medbery. All rights reserved.
//

#import "GameScene.h"
#import "BackgroundTiler.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
//    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
//    myLabel.text = @"Hello, World!";
//    myLabel.fontSize = 45;
//    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
//                                   CGRectGetMidY(self.frame));
    NSLog(@"%f", CGRectGetMaxY([UIScreen mainScreen].bounds));
    CGFloat minX = CGRectGetMinX([UIScreen mainScreen].bounds);
    CGFloat minY = CGRectGetMinY([UIScreen mainScreen].bounds);
    
    BackgroundTiler *backgroundTiler = [[BackgroundTiler alloc] init:@"yard" tileSize:32 minX:minX minY:minY];
    for (Tile *tile in backgroundTiler.tiles){
        tile.zPosition = -1;
       [self addChild:tile];
    }
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
//        CGPoint location = [touch locationInNode:self];
//        
//
//        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
//        
//        sprite.xScale = 0.5;
//        sprite.yScale = 0.5;
//        sprite.position = location;
//        
//        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
//        
//        [sprite runAction:[SKAction repeatActionForever:action]];
//        
//        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
