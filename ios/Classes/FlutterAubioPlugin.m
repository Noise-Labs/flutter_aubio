#import "FlutterAubioPlugin.h"
#if __has_include(<flutter_aubio/flutter_aubio-Swift.h>)
#import <flutter_aubio/flutter_aubio-Swift.h>
#else

#import "flutter_aubio-Swift.h"
#endif

@implementation FlutterAubioPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterAubioPlugin registerWithRegistrar:registrar];

}
@end
