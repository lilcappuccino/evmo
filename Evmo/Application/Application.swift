//
//  Application.swift
//  Evmo
//
//  Created by Vadim Marchenko on 05.03.2021.
//

import Foundation
import RxSwift
import RxCocoa
import UIKit

final class Application: NSObject {
    
    static let shared = Application()
   
    private let navigator: Navigator
    private var window: UIWindow?
    
    override init() {
        self.navigator = Navigator.default
    }
    
    
    func buildViewModel(window: UIWindow?) {
        self.window = window
        
        let useCaseProvider: UseCaseProvider = UseCaseProviderImpl()
        let vm = AppViewModel(useCase: useCaseProvider.makeAuthUseCase())
        let input = AppViewModel.Input(isUserExistTrigger: Driver.just(()) )
        
        let output = vm.transform(input: input)
        
        output.isUserExist
            .drive(onNext: openRootController(isTokenExist:))
            .disposed(by: rx.disposeBag)
    }
    
    private func openRootController(isTokenExist: Bool) {
        guard  let _window = window else { return }
        navigator.show(segue: .signIn(viewModel: SignInViewModel()), sender: nil, transition: .root(in: _window))
    }
}
