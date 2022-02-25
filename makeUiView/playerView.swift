//
//  playerView.swift
//  makeUiView
//
//  Created by 김규리 on 2022/02/22.
//

import UIKit

class playerView: UIView {

    let titleLabel:UILabel = {
            let label = UILabel()
            label.frame = CGRect(x: 0, y: 0, width: 60, height: 25)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
            label.text = "라벨"
            label.textColor = .gray
            return label
    }()
    let commonButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("버튼!!", for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        //self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //self.commonInit()
    }
    
    private func commonInit(){
        self.backgroundColor = .blue
        

    }
    
    public func test() {
        self.backgroundColor = .blue
        self.addSubview(titleLabel)
        self.addSubview(commonButton)
        
        constraintCustomView()
    }
    
    
    func constraintCustomView() {
        NSLayoutConstraint.activate([
            titleLabel.widthAnchor.constraint(equalToConstant: 60),
            titleLabel.heightAnchor.constraint(equalToConstant: 25),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            commonButton.widthAnchor.constraint(equalToConstant: 100),
            commonButton.heightAnchor.constraint(equalToConstant: 100),
            commonButton.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 20),
            commonButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }



}
