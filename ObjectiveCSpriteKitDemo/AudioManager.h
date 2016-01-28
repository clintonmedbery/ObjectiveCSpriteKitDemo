//
//  AudioManager.h
//  ObjectiveCSpriteKitDemo
//
//  Created by Clinton Medbery on 1/28/16.
//  Copyright © 2016 Clinton Medbery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AudioManager : NSObject

@property (nonatomic, retain) NSArray *soundNames;

+(AudioManager *)audioManager;
-(id)init;


@end