//
//  SignInView.swift
//  Evmo
//
//  Created by Vadim Marchenko on 08.03.2021.
//

import Foundation
import UIKit
import SnapKit


class SignInView: View {
    
    public lazy var button: UIButton = {
        let view = UIButton()
        view.backgroundColor = .purple
        view.setTitle("Text", for: .normal)
        return view
    }()
    
    
    override func makeUI() {
        makeButtonConstraint()
    }
    
    
    private func makeButtonConstraint() {
        self.addSubview(button)
        button.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview().inset(Dimension.big)
        }
    }
}
