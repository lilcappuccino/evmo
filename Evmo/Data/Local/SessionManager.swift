//
//  SessionManager.swift
//  Evmo
//
//  Created by Vadim Marchenko on 05.03.2021.
//

import Foundation
import KeychainSwift

final class SessionManager {

    private let tokenKey = "tokenKey"
    private let dispatchLabel = "com.network.services.token"
    private var isolation: DispatchQueue!
    private let keychain = KeychainSwift()
    static let shared = SessionManager()


    var token: String? {
        var result: String?
        isolation.sync { result = privateToken }
        return result
    }

    private var privateToken: String? {
        willSet {
            if privateToken != newValue && newValue.notNil {
                self.keychain.set(newValue!, forKey: tokenKey)
            }
        }
    }
    
    init() {
        self.privateToken = self.keychain.get(tokenKey)
        isolation = DispatchQueue(label: dispatchLabel, qos: .background, attributes: .concurrent)
    }

    func updateToken(_ newToken: String) {
        isolation.sync(flags: .barrier) {
            self.privateToken = newToken
            logInfo(newToken)
        }
    }

    func deleteToken() {
        self.keychain.delete(tokenKey)
        logInfo("Token was deleted")
    }
    
}
