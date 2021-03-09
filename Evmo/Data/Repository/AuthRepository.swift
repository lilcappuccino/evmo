//
//  UserRepository.swift
//  Evmo
//
//  Created by Vadim Marchenko on 05.03.2021.
//

import Foundation
import RxSwift

final class AuthRepository {
    func isTokenExist() -> Observable<Bool> {
        return Observable.just(SessionManager.shared.token.notNil)
    }
}
