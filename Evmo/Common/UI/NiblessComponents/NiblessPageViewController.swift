//
//  NiblessPageViewController.swift
//  DHUIKit
//
//  Created by Nikandr Marhal on 14.01.2021.
//  Copyright © 2021 DroneHarmony AG. All rights reserved.
//

import UIKit

open class NiblessPageViewController: UIPageViewController {
    // MARK: - Initialization

    override public init(transitionStyle style: UIPageViewController.TransitionStyle,
                         navigationOrientation: UIPageViewController.NavigationOrientation,
                         options: [UIPageViewController.OptionsKey: Any]? = nil) {
        super.init(transitionStyle: style,
                   navigationOrientation: navigationOrientation,
                   options: options)
    }

    @available(*, unavailable,
               message: "Loading this view controller from a nib is restricted")
    public required init?(coder aDecoder: NSCoder) {
        fatalError("Loading this view controller from a nib is restricted")
    }
}
