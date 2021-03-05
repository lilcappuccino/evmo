//
//  LibsManager.swift
//  Evmo
//
//  Created by Vadim Marchenko on 05.03.2021.
//

import Foundation
import UIKit
import CocoaLumberjack
import IQKeyboardManagerSwift
import NSObject_Rx

/// The manager class for configuring all libraries used in app.
final class LibsManager {
    
    /// The default singleton instance.
    static let shared = LibsManager()
    
    private init() {}
    
    func setupLibs() {
        setupCocoaLumberjack()
        setupKeyboardManager()
        setupTheme()
    }
    
    // MARK: - CocoaLumberjack
    private func setupCocoaLumberjack() {
        DDLog.add(DDOSLogger.sharedInstance)
        let fileLogger: DDFileLogger = DDFileLogger() // File Logger
        fileLogger.rollingFrequency = TimeInterval(60*60*24)  // 24 hours
        fileLogger.logFileManager.maximumNumberOfLogFiles = 7
        DDLog.add(fileLogger)
    }
    
    // MARK: - IQKeyboardManager
    private func setupKeyboardManager() {
        IQKeyboardManager.shared.enable = true
    }
    
    
    // MARK: - Theme
    func setupTheme() {
//        themeService.rx
//            .bind({ $0.statusBarStyle }, to: UIApplication.shared.rx.statusBarStyle)
//            .disposed(by: rx.disposeBag)
    }
}
