//
//  AppViewModel.swift
//  Evmo
//
//  Created by Vadim Marchenko on 09.03.2021.
//

import Foundation
import RxSwift
import RxCocoa

extension AppViewModel {
    struct Input {
        let isUserExistTrigger: Driver<Void>
    }
    
    struct Output {
        let isUserExist: Driver<Bool>
    }
}

final class AppViewModel: ViewModel, ViewModelType {   
    
    private let useCase: AuthUseCase!
    
    init(useCase: AuthUseCase) {
        self.useCase = useCase
    }

    
    func transform(input: Input) -> Output {
        
        let isUserLoggined = input.isUserExistTrigger.flatMapLatest {
            return self.useCase.isTokenExist()
                .asDriverOnErrorJustComplete()
        }
        return Output(isUserExist: isUserLoggined)
    }
}
    
    
