//
//  NiblessNavigationController.swift
//  DHUIKit
//
//  Created by Nikandr Marhal on 14.01.2021.
//  Copyright © 2021 DroneHarmony AG. All rights reserved.
//

import UIKit

open class NiblessNavigationController: UINavigationController {
    // MARK: - Initialization

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable,
               message: "Loading this view controller from a nib is restricted")
    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    @available(*, unavailable,
               message: "Loading this view controller from a nib is restricted")
    public required init?(coder aDecoder: NSCoder) {
        fatalError("Loading this view controller from a nib is restricted")
    }
}
