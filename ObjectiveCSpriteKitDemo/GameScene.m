//
//  GameScene.m
//  ObjectiveCSpriteKitDemo
//
//  Created by Clinton Medbery on 1/27/16.
//  Copyright (c) 2016 Clinton Medbery. All rights reserved.
//

#import "GameScene.h"
#import "BackgroundTiler.h"
#import "AudioManager.h"


@implementation GameScene
{
    
    SKSpriteNode *_player;
    NSArray *_walkFrames;
    
}

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
    SKTextureAtlas *playerAtlas = [SKTextureAtlas atlasNamed:@"player"];
    SKTexture *walkTexture1 = [playerAtlas textureNamed:@"player_1.png"];
    SKTexture *walkTexture2 = [playerAtlas textureNamed:@"player_2.png"];
    _walkFrames = @[walkTexture1, walkTexture2];
    
    SKTexture *temp = _walkFrames[0];
    _player = [SKSpriteNode spriteNodeWithTexture:temp];
    _player.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    _player.size = CGSizeMake(128, 128);
    [self addChild:_player];
    
    [self animatePlayer];

    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        [AudioManager.audioManager playSound];
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

-(void)animatePlayer
{
    [_player runAction:[SKAction repeatActionForever:[SKAction animateWithTextures:_walkFrames timePerFrame:0.6f resize:NO restore:YES]]];
    return;
}

@end
