iOS Keyboard Bridge which notifies PhoneGap app when keyboard is shown and hidden.

For example:

    keyboardBridge.init(function(){

        keyboardBridge.onKeyboardShown(function(){
          console.log('keyboard shown');
        });

        keyboardBridge.onKeyboardHidden(function(){
          console.log('keyboard hidden');
        });
    };

To Use:

1) Add KeyboardBridgePhoneGapPlugin.h and KeyboardBridgePhoneGapPlugin.m files as a plugin in your iOS project VIA dragging the two files to
your iOS 'plugin' folder.

2) Add the script file to your index.html phonegap file. <script type="text/javascript" charset="utf-8" src="keyboardBridge.js"></script>

3) On deviceready call, keyboardBridge.init(); With an optional init callback handler.

4) Add the following to your config.xml file:

    <plugins>
        <plugin name="KeyboardBridgePlugin" value="KeyboardBridgePhoneGapPlugin" />
    </plugins>
    <feature name="KeyboardBridgePlugin">
        <param name="ios-package" value="KeyboardBridgePhoneGapPlugin" />
    </feature>

5) After keyboardBridge.init() is called you can added keyboard show and hide event handlers.

For example:

      keyboardBridge.onKeyboardShown(function(){
        console.log('keyboard shown');
      });

      keyboardBridge.onKeyboardHidden(function(){
        console.log('keyboard hidden');
      });