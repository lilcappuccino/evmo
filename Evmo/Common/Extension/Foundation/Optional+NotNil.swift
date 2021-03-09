//
//  Optional+NotNil.swift
//  Evmo
//
//  Created by Vadim Marchenko on 05.03.2021.
//

import Foundation

public extension Optional {
    /// Returns `true` if called on non-nil value and `false` otherwise
    var notNil: Bool {
        self != nil
    }
}
