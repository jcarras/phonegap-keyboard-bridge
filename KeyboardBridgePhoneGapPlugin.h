//
//  KeyboardBridgePhoneGapPlugin
//
//  Created by ReadyBird Ltd. on 3/14/14.
//
//

#import <Foundation/Foundation.h>
#import <Cordova/CDV.h>

@interface KeyboardBridgePhoneGapPlugin : CDVPlugin

@property (retain, nonatomic) NSString *keyboardShownCallbackId;
@property (retain, nonatomic) NSString *keyboardHiddenCallbackId;

@end