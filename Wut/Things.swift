//
//  Things.swift
//  Wut
//
//  Created by Sørensen, Johan on 23.09.14.
//  Copyright (c) 2014 Johan Sørensen. All rights reserved.
//

import UIKit

@objc(WUTThingViewController)
class ThingViewController: UIViewController {
    override func viewDidLoad() {
        let thing = CThing()
        NSLog("Set a breakpoint here and type 'po thing.manager()', expected: \(thing.manager())")

        // Actual:
//        (lldb) po thing.manager()
//        error: Error in auto-import:
//        failed to get module 'Wut' from AST context:
//        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
//        #import "CThing.h"
//        ^
//        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
//        #import <AFNetworking/AFNetworking.h>
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:34:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:34:
//        #import "AFURLConnectionOperation.h"
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFURLConnectionOperation.h:192:1: error: property with 'retain (or strong)' attribute must be of object type
//        @property (nonatomic, strong) dispatch_queue_t completionQueue;
//        ^
//        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
//        #import "CThing.h"
//        ^
//        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
//        #import <AFNetworking/AFNetworking.h>
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:34:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:34:
//        #import "AFURLConnectionOperation.h"
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFURLConnectionOperation.h:197:1: error: property with 'retain (or strong)' attribute must be of object type
//        @property (nonatomic, strong) dispatch_group_t completionGroup;
//        ^
//        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
//        #import "CThing.h"
//        ^
//        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
//        #import <AFNetworking/AFNetworking.h>
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:36:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:36:
//        #import "AFHTTPRequestOperationManager.h"
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFHTTPRequestOperationManager.h:154:1: error: property with 'retain (or strong)' attribute must be of object type
//        @property (nonatomic, strong) dispatch_queue_t completionQueue;
//        ^
//        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
//        #import "CThing.h"
//        ^
//        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
//        #import <AFNetworking/AFNetworking.h>
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:36:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:36:
//        #import "AFHTTPRequestOperationManager.h"
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFHTTPRequestOperationManager.h:159:1: error: property with 'retain (or strong)' attribute must be of object type
//        @property (nonatomic, strong) dispatch_group_t completionGroup;
//        ^
//        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
//        #import "CThing.h"
//        ^
//        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
//        #import <AFNetworking/AFNetworking.h>
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:40:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:40:
//        #import "AFURLSessionManager.h"
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFURLSessionManager.h:153:1: error: property with 'retain (or strong)' attribute must be of object type
//        @property (nonatomic, strong) dispatch_queue_t completionQueue;
//        ^
//        /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h:5:
//        #import "CThing.h"
//        ^
//        /Users/johsoren/backyard/Wut/Wut/CThing.h:10:9: note: in file included from /Users/johsoren/backyard/Wut/Wut/CThing.h:10:
//        #import <AFNetworking/AFNetworking.h>
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:40:13: note: in file included from /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFNetworking.h:40:
//        #import "AFURLSessionManager.h"
//        ^
//        /Users/johsoren/backyard/Wut/Pods/Headers/Public/AFNetworking/AFURLSessionManager.h:158:1: error: property with 'retain (or strong)' attribute must be of object type
//        @property (nonatomic, strong) dispatch_group_t completionGroup;
//        ^
//        failed to import bridging header '/Users/johsoren/backyard/Wut/Wut/Wut-Bridging-Header.h'
//        (lldb)
    }
}