//
//  BackgroundTiler.m
//  ObjectiveCSpriteKitDemo
//
//  Created by Clinton Medbery on 1/27/16.
//  Copyright © 2016 Clinton Medbery. All rights reserved.
//

#import "BackgroundTiler.h"
#import "BackgroundData.h"

@implementation BackgroundTiler : NSObject 

-(id)init:(NSString*)name tileSize:(int)tileSize{
   
    if([name isEqualToString:@"yard"]) {
        
        int currentX = tileSize/2;
        int currentY = tileSize/2;
        _backgroundData = [[BackgroundData alloc ]init];
        
        for (int i = 0; i < sizeof(_backgroundData.yardBackground); i++) {
            for (int j = 0; j < sizeof(_backgroundData.yardBackground[i]); j++) {
                NSLog(@"%@", _backgroundData.yardBackground[i][j]);
            }
        }
    }
    return self;
}
@end