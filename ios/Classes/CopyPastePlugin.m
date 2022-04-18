#import "CopyPastePlugin.h"
#if __has_include(<copy_paste/copy_paste-Swift.h>)
#import <copy_paste/copy_paste-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "copy_paste-Swift.h"
#endif

@implementation CopyPastePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCopyPastePlugin registerWithRegistrar:registrar];
}
@end
