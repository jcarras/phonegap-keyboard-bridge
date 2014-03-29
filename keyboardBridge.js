var KeyboardBridge = function(){};

KeyboardBridge.prototype.onKeyboardShown = function(callback) {
  var callback = (function(keyboardShownCallback){
    return function(){
      keyboardShownCallback();
      cordova.exec(callback, null, 'KeyboardBridgePlugin', 'registerForKeyboardShown', []);
    }
  })(callback);
  return cordova.exec(callback, null, 'KeyboardBridgePlugin', 'registerForKeyboardShown', []);
};

KeyboardBridge.prototype.onKeyboardHidden = function(callback) {
  var callback = (function(keyboardHiddenCallback){
    return function(){
      keyboardHiddenCallback();
      cordova.exec(callback, null, 'KeyboardBridgePlugin', 'registerForKeyboardShown', []);
    }
  })(callback);
  return cordova.exec(callback, null, 'KeyboardBridgePlugin', 'registerForKeyboardShown', []);
};

KeyboardBridge.prototype.onKeyboardHidden = function(callback) {
  return cordova.exec(callback, null, 'KeyboardBridgePlugin', 'registerForKeyboardHidden', []);
};

KeyboardBridge.prototype.init = function(successCallback, faultCallback) {
  return cordova.exec(successCallback, faultCallback, 'KeyboardBridgePlugin', 'initializePlugin', []);
};

keyboardBridge = new KeyboardBridge();