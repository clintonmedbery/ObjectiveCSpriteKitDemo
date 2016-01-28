//
//  AudioManager.m
//  ObjectiveCSpriteKitDemo
//
//  Created by Clinton Medbery on 1/28/16.
//  Copyright © 2016 Clinton Medbery. All rights reserved.
//

#import "AudioManager.h"

@implementation AudioManager


+ (AudioManager *)audioManager {
    static AudioManager *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[self alloc] init];
    });
    
    return _sharedInstance;
}

-(id)init{
    
    
    return self;
}

@end