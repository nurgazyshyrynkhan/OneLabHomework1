//
//  ViewController.swift
//  OneLabHomwork1
//
//  Created by Gazinho Dos Santos on 27.03.2023.
//

import SnapKit
import UIKit

final class SimpleVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initialize()
    }

    private func initialize() {
            
        let screenHeight = view.frame.height
        
        let flowerImage = UIImageView()
        view.addSubview(flowerImage)
        flowerImage.image = UIImage(named: "flowers")
        flowerImage.snp.makeConstraints {
            $0.right.left.equalToSuperview().inset(15)
            $0.centerY.equalToSuperview()
        }
        
        let label = UILabel()
        label.text = "Flowers"
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(flowerImage).inset(-screenHeight/7)
        }
        
        let editButton = UIButton()
        editButton.setTitle("Edit", for: .normal)
        editButton.setTitleColor(.systemBlue, for: .normal)
        view.addSubview(editButton)
        editButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(flowerImage).inset(-screenHeight/7.5)
        }
        
    }
}

