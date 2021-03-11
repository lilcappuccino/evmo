//
//  LogManager.swift
//  Evmo
//
//  Created by Vadim Marchenko on 05.03.2021.
//

import Foundation
import CocoaLumberjack
import RxSwift


///  PRIORITY:  ERROR, WARN, INFO, DEBUG, VERBOSE.

public func logDebug(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogDebug(message())
    #endif
}

public func logError(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogError("⛔ " + message())
    #endif
}

public func logInfo(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogInfo("ℹ️ " + message())
    #endif
}

public func logVerbose(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogVerbose("💭 " + message())
    #endif
}

public func logWarn(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogWarn("⚠️ " + message())
    #endif
}


public func logResourcesCount() {
    #if DEBUG
//    logDebug("RxSwift resources count: \(RxSwift.Resources.total)")
    #endif
}
