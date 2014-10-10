Sample code for Radar #18424750

1. Open Wut.xcworkspace
2. Make sure the `Wut' target is selected and one of the iPhone simulators
3. Set a breakpoint in Things.swift:16
4. Build & Run
5. Tap the button that says `button'
6. Attempt one of the following in the LLDB console:
6a. `po thing.manager()`
or
6b. `po thing`

Even `po thing.name()` fails, even though it doesn't called the linked library.

LLDB prints the following error:

        (lldb) po thing.manager()
        error: Error in auto-import:
        failed to get module 'Wut' from AST context:
        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
        #import "CThing.h"
        ^
        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
        #import <AFNetworking/AFNetworking.h>
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:34:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:34:
        #import "AFURLConnectionOperation.h"
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFURLConnectionOperation.h:192:1: error: property with 'retain (or strong)' attribute must be of object type
        @property (nonatomic, strong) dispatch_queue_t completionQueue;
        ^
        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
        #import "CThing.h"
        ^
        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
        #import <AFNetworking/AFNetworking.h>
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:34:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:34:
        #import "AFURLConnectionOperation.h"
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFURLConnectionOperation.h:197:1: error: property with 'retain (or strong)' attribute must be of object type
        @property (nonatomic, strong) dispatch_group_t completionGroup;
        ^
        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
        #import "CThing.h"
        ^
        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
        #import <AFNetworking/AFNetworking.h>
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:36:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:36:
        #import "AFHTTPRequestOperationManager.h"
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFHTTPRequestOperationManager.h:154:1: error: property with 'retain (or strong)' attribute must be of object type
        @property (nonatomic, strong) dispatch_queue_t completionQueue;
        ^
        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
        #import "CThing.h"
        ^
        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
        #import <AFNetworking/AFNetworking.h>
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:36:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:36:
        #import "AFHTTPRequestOperationManager.h"
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFHTTPRequestOperationManager.h:159:1: error: property with 'retain (or strong)' attribute must be of object type
        @property (nonatomic, strong) dispatch_group_t completionGroup;
        ^
        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
        #import "CThing.h"
        ^
        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
        #import <AFNetworking/AFNetworking.h>
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:40:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:40:
        #import "AFURLSessionManager.h"
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFURLSessionManager.h:153:1: error: property with 'retain (or strong)' attribute must be of object type
        @property (nonatomic, strong) dispatch_queue_t completionQueue;
        ^
        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
        #import "CThing.h"
        ^
        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
        #import <AFNetworking/AFNetworking.h>
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:40:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:40:
        #import "AFURLSessionManager.h"
        ^
        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFURLSessionManager.h:158:1: error: property with 'retain (or strong)' attribute must be of object type
        @property (nonatomic, strong) dispatch_group_t completionGroup;
        ^
        failed to import bridging header '/Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h'
        (lldb)
