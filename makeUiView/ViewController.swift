//
//  ViewController.swift
//  makeUiView
//
//  Created by 김규리 on 2022/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addPlayerView()
    }
    
    func addPlayerView() {
        if let playerView = Bundle.main.loadNibNamed("playerView", owner: nil, options: nil)?.first as? playerView {
            playerView.frame = self.view.bounds
            view.addSubview(playerView)
            playerView.test()
            
        }
    }

    func addControlView() {
        if let controlView = Bundle.main.loadNibNamed("controlView", owner: nil, options: nil)?.first as? controlView {
            //conT = controlView //as! controlView
            controlView.frame = self.view.bounds
            view.addSubview(controlView)
            
        }
    }
    
    
}

