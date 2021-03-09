//
//  UseCaseProviderImpl.swift
//  Evmo
//
//  Created by Vadim Marchenko on 07.03.2021.
//

import Foundation

public final class UseCaseProviderImpl: UseCaseProvider {
    
 
    public func makeAuthUseCase() -> AuthUseCase {
        return AuthUseCaseImpl()
    }
}
