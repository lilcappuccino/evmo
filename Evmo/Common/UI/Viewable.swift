//
//  RootView.swift
//  Evmo
//
//  Created by Vadim Marchenko on 09.03.2021.
//

import Foundation

protocol Viewable {
    associatedtype RootView
}

extension Viewable where Self: ViewController {
    
    var rootView: RootView {
        view as! RootView
    }
}
