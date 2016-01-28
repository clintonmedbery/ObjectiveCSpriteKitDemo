//
//  BackgroundTiler.m
//  ObjectiveCSpriteKitDemo
//
//  Created by Clinton Medbery on 1/27/16.
//  Copyright © 2016 Clinton Medbery. All rights reserved.
//

#import "BackgroundTiler.h"
#import "BackgroundData.h"
#import "Tile.h"

@implementation BackgroundTiler : NSObject 

-(id)init:(NSString*)name tileSize:(int)tileSize minX:(CGFloat)minX minY:(CGFloat)minY{
    self.tiles = [[NSMutableArray alloc] init];
    
    if([name isEqualToString:@"yard"]) {

        int currentX = minX;
        int currentY = minY;
        _backgroundData = [[BackgroundData alloc ]init];


        for (int i = 0; i < _backgroundData.yardBackground.count; i++) {
            NSArray *innerArray = [_backgroundData.yardBackground objectAtIndex:i];

            for (int j = 0; j < innerArray.count; j++) {
                NSInteger value = [[innerArray objectAtIndex:j] integerValue];
                if(value == 0){
                    [_tiles addObject:[[Tile alloc] init:@"sky1" xPos:currentX yPos:currentY width:tileSize height:tileSize]];
                    

                } else if(value == 1){
                    [_tiles addObject:[[Tile alloc] init:@"grass1" xPos:currentX yPos:currentY width:tileSize height:tileSize]];
                    
                } else if(value == 2){
                    [_tiles addObject:[[Tile alloc] init:@"grass2" xPos:currentX yPos:currentY width:tileSize height:tileSize]];
                    
                } else if(value == 3){
                    Tile *newTile = [[Tile alloc] init:@"grass3" xPos:currentX yPos:currentY width:tileSize height:tileSize];
                    [_tiles addObject:newTile];
                    
                } else if(value == 4){
                    Tile *newTile = [[Tile alloc] init:@"grass4" xPos:currentX yPos:currentY width:tileSize height:tileSize];
                    [_tiles addObject:newTile];
                    
                }
                
//                NSLog(@"X: %d", currentX);
//                NSLog(@"Y: %d", currentY);
                currentX = currentX + tileSize;

            }
            currentX = minX;
            currentY = currentY + tileSize;
        }
        
    }

    return self;
}
@end