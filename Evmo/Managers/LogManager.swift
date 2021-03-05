//
//  LogManager.swift
//  Evmo
//
//  Created by Vadim Marchenko on 05.03.2021.
//

import Foundation
import CocoaLumberjackSwift


///  PRIORITY:  ERROR, WARN, INFO, DEBUG, VERBOSE.

public func logDebug(_ message: @autoclosure () -> String) {
    DDLogDebug(message())
}

public func logError(_ message: @autoclosure () -> String) {
    DDLogError("⛔ " + message())
}

public func logInfo(_ message: @autoclosure () -> String) {
    DDLogInfo("ℹ️ " + message())
}

public func logVerbose(_ message: @autoclosure () -> String) {
    DDLogVerbose("💭 " + message())
}

public func logWarn(_ message: @autoclosure () -> String) {
    DDLogWarn("⚠️ " + message())
}
//
//public func logResourcesCount() {
//    #if DEBUG
//    logDebug("RxSwift resources count: \(RxSwift.Resources.total)")
//    #endif
//}
