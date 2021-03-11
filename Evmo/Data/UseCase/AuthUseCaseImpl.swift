//
//  AuthUseCaseImpl.swift
//  Evmo
//
//  Created by Vadim Marchenko on 07.03.2021.
//

import Foundation
import RxSwift

public final class AuthUseCaseImpl: AuthUseCase {
    
    private let authRepository: AuthRepository
    
    init() {
        self.authRepository = AuthRepository()
    }
    
    public func isTokenExist() -> Observable<Bool> {
        return authRepository.isTokenExist()
    }
    
    
}
