//
//  UseCaseProvider.swift
//  Evmo
//
//  Created by Vadim Marchenko on 07.03.2021.
//

import Foundation

public protocol UseCaseProvider {
    
    func makeAuthUseCase() -> AuthUseCase
}
