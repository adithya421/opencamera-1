#import "OpenCameraPlugin.h"
#import <open_camera/open_camera-Swift.h>

@implementation OpenCameraPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftOpenCameraPlugin registerWithRegistrar:registrar];
}
@end
