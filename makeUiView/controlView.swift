//
//  controlView.swift
//  makeUiView
//
//  Created by 김규리 on 2022/02/21.
//

import UIKit

class controlView: UIView {
    @IBOutlet var testView: UIView!
    @IBOutlet var slProgress: UISlider!
    @IBOutlet var btnFullScreen: UIButton!
    @IBOutlet var playView: UIView!
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @IBAction func slPlay(_ sender: UISlider) {
        print("\(slProgress.value)")
    }
}
