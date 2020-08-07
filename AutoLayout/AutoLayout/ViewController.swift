//
//  ViewController.swift
//  AutoLayout
//
//  Created by 김기현 on 2020/08/06.
//  Copyright © 2020 김기현. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var box = UIView()
    lazy var titleLabel = UILabel()
    lazy var textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("frame: \(self.view.frame)")
        
        self.view.addSubview(box)
        box.backgroundColor = UIColor(displayP3Red: 252/256, green: 251/256, blue: 234/256, alpha: 1.0)
        box.snp.makeConstraints {
            $0.width.height.equalTo(self.view)
            $0.center.equalTo(self.view)
        }
        
        self.view.addSubview(titleLabel)
        titleLabel.text = "로그인"
        titleLabel.textAlignment = .center
        
        let size = self.view.frame.height * 0.1
        
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(size)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
        }
        
        self.view.addSubview(textField)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.placeholder = "test"
        textField.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(100)
            $0.trailing.equalToSuperview().offset(-100)
            $0.top.equalTo(self.titleLabel.snp.bottom).offset(size)
            $0.centerX.equalTo(self.view)
        }
    }


}

