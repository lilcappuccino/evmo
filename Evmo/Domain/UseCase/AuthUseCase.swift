//
//  AuthUseCase.swift
//  Evmo
//
//  Created by Vadim Marchenko on 07.03.2021.
//

import Foundation
import RxSwift

public protocol AuthUseCase {
    
    func isTokenExist() -> Observable<Bool>
}
