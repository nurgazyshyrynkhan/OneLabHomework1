//
//  ThreeEqualWidthButtonsVC.swift
//  OneLabHomwork1
//
//  Created by Gazinho Dos Santos on 27.03.2023.
//

import SnapKit
import UIKit

final class ThreeEqualWidthButtonsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initialize()
    }
    
    private func initialize() {
        
        let shortButton = UIButton()
        let mediumButton = UIButton()
        let longButton = UIButton()
        
        
        shortButton.backgroundColor = .lightGray
        shortButton.setTitle("Short", for: .normal)
        view.addSubview(shortButton)
        shortButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.left.equalToSuperview().inset(10)
            $0.width.equalTo(100)
        }

        mediumButton.backgroundColor = .lightGray
        mediumButton.setTitle("Medium", for: .normal)
        view.addSubview(mediumButton)
        mediumButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.centerX.equalToSuperview()
            $0.width.equalTo(100)
        }

        longButton.backgroundColor = .lightGray
        longButton.setTitle("Long Button Title", for: .normal)
        view.addSubview(longButton)
        longButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.left.equalTo(mediumButton.snp_rightMargin).inset(-10)
            $0.right.equalToSuperview().inset(10)
            $0.width.equalTo(100)
        }
        
        
        
        
    }
    
}
