//
//  SignInViewController.swift
//  Evmo
//
//  Created by Vadim Marchenko on 08.03.2021.
//

import Foundation
import RxCocoa


final class SignInViewController: ViewController, Viewable {
    
    typealias RootView = SignInView
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        rootView.backgroundColor = .gray
    }
    
    override public func loadView() {
        view = SignInView()
    }
    
    override func bindViewModel() {
    
    }
}
