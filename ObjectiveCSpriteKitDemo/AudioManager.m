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
    self.soundNames = @{ @"select-classic" : @"wav", @"bubble" : @"wav" , @"ninja-whoosh" : @"mp3"};
    
    return self;
}

-(void)playSound {
    NSArray *keyArray = [self.soundNames allKeys];
    int random = arc4random()%[keyArray count];
    NSString *soundName = [keyArray objectAtIndex:random];
    NSString *type = (NSString *)[self.soundNames objectForKey:soundName];
    
    NSURL *audioFileLocationURL = [[NSBundle mainBundle] URLForResource:soundName withExtension:type];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioFileLocationURL error:&error];
    [self.audioPlayer play];
}

@end