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
        
        // create the view
        if let view = self.view as! SKView? {
        // create the scene
            let scene = GameScene(size: view.bounds.size)
        // set the scale mode to scale fill the view window
            scene.scaleMode = .aspectFill
        // set the background color
            scene.backgroundColor = UIColor(red: 105/255,
                                            green: 157/255,
                                            blue: 181/255,
                                            alpha: 1.0)
        //present the scene
            view.presentScene(scene)
        // Set the view options
            view.ignoresSiblingOrder = false
            view.showsPhysics = false
            view.showsFPS = true
            view.showsNodeCount = true
        }
        
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
