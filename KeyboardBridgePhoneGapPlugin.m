//
//  KeyboardBridgePhoneGapPlugin
//
//  Created by ReadyBird Ltd. on 3/14/14.
//
//

#import "KeyboardBridgePhoneGapPlugin.h"

@implementation KeyboardBridgePhoneGapPlugin

- (id)init {
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)dealloc {

}

- (void) initializePlugin:(CDVInvokedUrlCommand*)command {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:)name:UIKeyboardDidShowNotification object:nil];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:)name:UIKeyboardDidHideNotification object:nil];

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    NSString* javascript = [pluginResult toSuccessCallbackString:command.callbackId];

    [self writeJavascript:javascript];
}

- (void) registerForKeyboardShown:(CDVInvokedUrlCommand*)command
{
    NSLog(@"keyboard shown registered");
    self.keyboardShownCallbackId = command.callbackId;
}

- (void) registerForKeyboardHidden:(CDVInvokedUrlCommand*)command
{
    NSLog(@"keyboard hidden registered");
    self.keyboardHiddenCallbackId = command.callbackId;
}

- (void)keyboardDidShow: (NSNotification *) notif{
    NSLog(@"keyboard shown");
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    NSString* javascript = [pluginResult toSuccessCallbackString:self.keyboardShownCallbackId];

    [self writeJavascript:javascript];
}

- (void)keyboardDidHide: (NSNotification *) notif{
    NSLog(@"keybowrd hidden");
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    NSString* javascript = [pluginResult toSuccessCallbackString:self.keyboardHiddenCallbackId];

    [self writeJavascript:javascript];
}

@end