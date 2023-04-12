//
//  NestedVC.swift
//  OneLabHomwork1
//
//  Created by Gazinho Dos Santos on 27.03.2023.
//

import UIKit

final class NestedVC: UIViewController {
    
    var rootStackView = UIStackView()
    var upperStackView = UIStackView()
    var textView = UITextView()
    var bottomStackView = UIStackView()
    let nameRowsStackView = UIStackView()
    let firstNameStackView = UIStackView()
    let middleNameStackView = UIStackView()
    let lastNameStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureRootStackView()
    }
    
    private func configureRootStackView() {
        view.addSubview(rootStackView)
        rootStackView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(20)
            $0.left.equalToSuperview().inset(15)
            $0.right.equalToSuperview().inset(15)
            $0.bottom.equalToSuperview().inset(50)
        }
        
        rootStackView.axis = .vertical
        rootStackView.alignment = .fill
        rootStackView.distribution = .fill
        rootStackView.spacing = 8
        
        upperStackView.axis = .horizontal
        upperStackView.alignment = .fill
        upperStackView.distribution = .fill
        upperStackView.spacing = 8
        
        let flowerImage = UIImageView()
        flowerImage.image = UIImage(named: "square_flowers")
        upperStackView.addArrangedSubview(flowerImage)
        
        let firstLabel = UILabel()
        firstLabel.text = "First"
        let firstTextField = UITextField()
        firstTextField.placeholder = "Enter First Name"
        firstNameStackView.addArrangedSubview(firstLabel)
        firstNameStackView.addArrangedSubview(firstTextField)
        firstNameStackView.axis = .horizontal
        firstNameStackView.alignment = .firstBaseline
        firstNameStackView.distribution = .fill
        firstNameStackView.spacing = 8
        
        let middleLabel = UILabel()
        middleLabel.text = "Middle"
        let middleTextField = UITextField()
        middleTextField.placeholder = "Enter Middle Name"
        middleNameStackView.addArrangedSubview(middleLabel)
        middleNameStackView.addArrangedSubview(middleTextField)
        middleNameStackView.axis = .horizontal
        middleNameStackView.alignment = .firstBaseline
        middleNameStackView.distribution = .fill
        middleNameStackView.spacing = 8
    
        let lastLabel = UILabel()
        lastLabel.text = "Last"
        let lastTextField = UITextField()
        lastTextField.placeholder = "Enter Last Name"
        lastNameStackView.addArrangedSubview(lastLabel)
        lastNameStackView.addArrangedSubview(lastTextField)
        lastNameStackView.axis = .horizontal
        lastNameStackView.alignment = .firstBaseline
        lastNameStackView.distribution = .fill
        lastNameStackView.spacing = 8
        
        nameRowsStackView.axis = .vertical
        nameRowsStackView.alignment = .fill
        nameRowsStackView.distribution = .fill
        nameRowsStackView.spacing = 8
        
        nameRowsStackView.addArrangedSubview(firstNameStackView)
        nameRowsStackView.addArrangedSubview(middleNameStackView)
        nameRowsStackView.addArrangedSubview(lastNameStackView)
       
        upperStackView.addArrangedSubview(nameRowsStackView)
        rootStackView.addArrangedSubview(upperStackView)
        
        textView.backgroundColor = .lightGray
        rootStackView.addArrangedSubview(textView)
        
        bottomStackView.axis = .horizontal
        bottomStackView.alignment = .firstBaseline
        bottomStackView.distribution = .fillEqually
        bottomStackView.spacing = 8
        
        let saveButton = UIButton()
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(.systemBlue, for: .normal)
        
        let cancelButton = UIButton()
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.setTitleColor(.systemBlue, for: .normal)
        
        let clearButton = UIButton()
        clearButton.setTitle("Clear", for: .normal)
        clearButton.setTitleColor(.systemBlue, for: .normal)
        
        bottomStackView.addArrangedSubview(saveButton)
        bottomStackView.addArrangedSubview(cancelButton)
        bottomStackView.addArrangedSubview(clearButton)
        
        rootStackView.addArrangedSubview(bottomStackView)
    }
    
}
