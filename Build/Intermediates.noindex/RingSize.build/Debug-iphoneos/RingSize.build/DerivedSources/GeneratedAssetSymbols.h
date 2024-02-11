#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "RingBlack" asset catalog image resource.
static NSString * const ACImageNameRingBlack AC_SWIFT_PRIVATE = @"RingBlack";

/// The "RingPresent" asset catalog image resource.
static NSString * const ACImageNameRingPresent AC_SWIFT_PRIVATE = @"RingPresent";

/// The "RingWhite" asset catalog image resource.
static NSString * const ACImageNameRingWhite AC_SWIFT_PRIVATE = @"RingWhite";

#undef AC_SWIFT_PRIVATE