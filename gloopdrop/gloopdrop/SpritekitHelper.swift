//
//  Sprite-kitHelper.swift
//  gloopdrop
//
//  Created by Samith Wijesinghe on 2022-07-02.
//

import Foundation
import SpriteKit

// MARK: SPRITEKIT HELPERS

// set up shared z-positions
enum Layer: CGFloat {
    case background
    case forground
    case player 
}

// MARK: - SPRITEKIT EXTENSIONS

extension SKSpriteNode {
    // used to load texture arrays for animations
    func loadTextures(atlas: String, prefix: String, startsAt: Int, StopsAt: Int) -> [SKTexture]{
        var textureArray = [SKTexture]()
        let textureAtlas = SKTextureAtlas(named: atlas)
        for i in startsAt...StopsAt{
            let textureName = "\(prefix)\(i)"
            let temp = textureAtlas.textureNamed(textureName)
            textureArray.append(temp)
        }
        return textureArray
    }
    //Satrt the animation using a name and a count (0 = repeat forever)
    func startAnimation(textures: [SKTexture], speed: Double, name: String, count: Int, resize: Bool, restore: Bool){
            // run the animation only if animation key doesn't already exist
            if (action(forKey: name) == nil){
                let animation = SKAction.animate(with: textures, timePerFrame: speed, resize: resize, restore: restore)
                if count == 0 {
                    // Run animation untill stopped
                    let repeatAction = SKAction.repeatForever(animation)
                    run(repeatAction, withKey: name)
                } else if count == 1 {
                    run(animation, withKey: name)
                } else {
                    let repeatAction = SKAction.repeat(animation, count: count)
                    run(repeatAction, withKey: name)
                }
            }
        }
}
