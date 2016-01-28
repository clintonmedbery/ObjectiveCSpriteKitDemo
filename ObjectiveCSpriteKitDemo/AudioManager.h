//
//  AudioManager.h
//  ObjectiveCSpriteKitDemo
//
//  Created by Clinton Medbery on 1/28/16.
//  Copyright © 2016 Clinton Medbery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>


@interface AudioManager : NSObject

@property (nonatomic, retain) NSDictionary *soundNames;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer;

+(AudioManager *)audioManager;

-(id)init;
-(void)playSound;


@end