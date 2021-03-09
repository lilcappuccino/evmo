//
//  ViewController.swift
//  Evmo
//
//  Created by Vadim Marchenko on 08.03.2021.
//

import Foundation
import UIKit

class ViewController: UIViewController, Navigatable {
    
    var viewModel: ViewModel?
    var navigator: Navigator!
    
    
    init(viewModel: ViewModel?, navigator: Navigator) {
        self.viewModel = viewModel
        self.navigator = navigator
        super.init(nibName: nil, bundle: nil)
    }
    
    func bindViewModel() {}
    
    @available(*,
               unavailable,
               message: "Loading this view controller from a nib is unsupported.")
    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    @available(*,
               unavailable,
               message: "Loading this view controller from a nib is resticted")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view controller from a nib is resticted")
    }
    
}
