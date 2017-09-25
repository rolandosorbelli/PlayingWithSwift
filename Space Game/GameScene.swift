//
//  GameScene.swift
//  Space Game
//
//  Created by Rolando Sorbelli on 25/09/2017.
//  Copyright © 2017 Rolando Sorbelli. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var starfield: SKEmitterNode!
    var player: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        starfield = SKEmitterNode(fileNamed: "Starfield")
//        self.anchorPoint = CGPoint(x:0, y:0)
        starfield.position = CGPoint(x: 0, y:1472)
        starfield.advanceSimulationTime(100)
        self.addChild(starfield)
        
        starfield.zPosition = -1
        
        player = SKSpriteNode(imageNamed: "shuttle")
        player.position = CGPoint(x: self.frame.size.width / 64, y: -1*player.size.height/2 - 500)
        self.addChild(player)
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
