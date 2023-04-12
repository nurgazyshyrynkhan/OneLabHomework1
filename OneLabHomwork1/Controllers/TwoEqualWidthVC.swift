//
//  TwoEqualWidthVC.swift
//  OneLabHomwork1
//
//  Created by Gazinho Dos Santos on 27.03.2023.
//

import SnapKit
import UIKit

final class TwoEqualWidthVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initialize()
    }
    
    private func initialize() {
        
//        let redView = UIView()
//        redView.backgroundColor = .systemRed
//        view.addSubview(redView)
//        redView.snp.makeConstraints {
//            $0.left.right.equalToSuperview()
//            $0.top.equalToSuperview().inset(10)
//            $0.bottom.equalToSuperview().inset(10)
//        }
        
        let screenWidth = view.frame.width
        
        let yellowView = UIView()
        yellowView.backgroundColor = .systemYellow
        view.addSubview(yellowView)
        yellowView.snp.makeConstraints {
            $0.left.equalToSuperview().inset(10)
            $0.right.equalToSuperview().inset(screenWidth/2)
            $0.top.equalToSuperview().inset(10)
            $0.bottom.equalToSuperview().inset(50)
        }


        let greenView = UIView()
        greenView.backgroundColor = .systemGreen
        view.addSubview(greenView)
        greenView.snp.makeConstraints {
            $0.left.equalTo(yellowView.snp_rightMargin).inset(-10)
            $0.right.equalToSuperview().inset(10)
            $0.top.equalToSuperview().inset(10)
            $0.bottom.equalToSuperview().inset(50)
        }
        
    }
    
    
}
