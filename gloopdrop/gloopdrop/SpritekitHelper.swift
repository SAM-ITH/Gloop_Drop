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
 
}
