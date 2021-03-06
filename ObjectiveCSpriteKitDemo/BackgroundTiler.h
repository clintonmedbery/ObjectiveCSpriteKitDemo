//
//  BackgroundTiler.h
//  ObjectiveCSpriteKitDemo
//
//  Created by Clinton Medbery on 1/27/16.
//  Copyright © 2016 Clinton Medbery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BackgroundData.h"
#import "Tile.h"


@interface BackgroundTiler : NSObject

-(id)init:(NSString*)name tileSize:(int)tileSize minX:(CGFloat)minX minY:(CGFloat)minY;

@property (nonatomic, strong) BackgroundData *backgroundData;
@property (nonatomic, strong) NSMutableArray *tiles;

@end