//
//  GameViewController.swift
//  gloopdrop
//
//  Created by Samith Wijesinghe on 2022-06-26.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
            return .landscape
        }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
