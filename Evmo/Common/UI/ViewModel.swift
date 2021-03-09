//
//  ViewModel.swift
//  Evmo
//
//  Created by Vadim Marchenko on 08.03.2021.
//

import Foundation

protocol ViewModelType {
    associatedtype Input
    associatedtype Output

    func transform(input: Input) -> Output
}


class ViewModel: NSObject {
    
    deinit {
        logDebug("\(type(of: self)): Deinited")
        logResourcesCount()
    }
}
