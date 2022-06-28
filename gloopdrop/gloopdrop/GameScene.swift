//
//  GameScene.swift
//  gloopdrop
//
//  Created by Samith Wijesinghe on 2022-06-26.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
    // set up the background
        let background = SKSpriteNode(imageNamed: "background_1")
        background.anchorPoint = CGPoint(x: 0, y: 0)
        background.position = CGPoint.zero
        addChild(background)
    // setup the foreground
        let foreground = SKSpriteNode(imageNamed: "foreground_1")
        foreground.anchorPoint = CGPoint(x: 0, y: 0 )
        foreground.position = CGPoint.zero
        addChild(foreground)
    }
   
    }

