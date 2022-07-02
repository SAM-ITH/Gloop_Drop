//
//  Player.swift
//  gloopdrop
//
//  Created by Samith Wijesinghe on 2022-07-02.
//

import Foundation
import SpriteKit

// this enum lets you easily switch between animations
enum PlayerAnimationtype: String {
case walk
}

class Player: SKSpriteNode {
    // MARK: - PROPERTIES
    private var walkTextures: [SKTexture]?
    
    // MARK: - INIT
    init(){
    let texture = SKTexture(imageNamed: "bob-walk_0")
    // call to super.init
    super.init(texture: texture, color: .clear, size:texture.size())
    // set up animation textures
    self.walkTextures = self.loadTextures(atlas: "blob", prefix: "blob_walk", startsAt: 0, StopsAt: 2)
    // set up other properties after init
    self.name = "player"
    self.setScale(1.0)
    self.anchorPoint = CGPoint(x: 0.5, y: 0.0) //center bottom
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
