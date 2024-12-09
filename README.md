# SwiftTryCatchFix

> [!NOTE]  
> This repo is a forked version of [rxvincent/SwiftTryCatch](https://github.com/rxvincent/SwiftTryCatch) to fix the Xcode 14.3+ [libarc](https://stackoverflow.com/questions/75574268/missing-file-libarclite-iphoneos-a-xcode-14-3) problem.

Adds try/catch support for Swift.

Simple wrapper built around Objective-C `@try`/`@catch`/`@finally`.

## Usage

### Install via Cocoapods

```console
pod 'SwiftTryCatchFix'
```

### Import

If using Frameworks for pods (use_frameworks! flag in Podfile):

```swift
import SwiftTryCatchFix
```

or import into Obj-C bridging header:

```objc
#import "SwiftTryCatch.h"
```

### Use

```swift
SwiftTryCatch.try({
    // try something
}, catch: { (error) in
    print("\(error.description)")
}, finally: {
    // close resources
})
```

## Notes

It was pointed out that without -fobjc-arc-exceptions flag this will lead to memory leaks

http://clang.llvm.org/docs/AutomaticReferenceCounting.html#exceptions

Therefore, ARC-generated code leaks by default on exceptions, which is just fine if the process is going to be immediately terminated anyway. Programs which do care about recovering from exceptions should enable the option.
