#import "F5VPN.h"
#import <Cordova/CDVPlugin.h>

@implementation F5VPN

+(void)isEdgeClientInstalled:(CDVInvokedUrlCommand*)command
{
    BOOL clientInstalled = UIApplication.shared.canOpenURL(@"f5edgeclient://");
    
    CDVPluginResult* pluginResult = nil;
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:clientInstalled];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
