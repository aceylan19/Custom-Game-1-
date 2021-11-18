//
//  GameScene.swift
//  customGameFinalVersion
//
//  Created by Aleyna  Ceylan on 11/15/21.
//

import SpriteKit
import GameplayKit

let player = SKSpriteNode(imageNamed: "player-rocket")

class GameScene: SKScene {
    var background = SKSpriteNode()
    var particles = SKEmitterNode()
    
    override func sceneDidLoad() {
        // For the background sprite, the spacebg2.jpeg image is given as texture.
        let texture = SKTexture(imageNamed: "spacebg2")
        background = SKSpriteNode(texture: texture)
        // For the sprite to center the screen, its coordinates on the 2D plane were determined as 0 using the position method.
        background.position = CGPoint(x: 0, y: 0)
        // The edge length values were determined so that the image could cover the entire screen.
        background.size = CGSize(width: 2360, height: 1640)
        // The depth of the background on the game screen is set to 1.
        background.zPosition = -1
        self.addChild(background)
        
        if let particles = SKEmitterNode(fileNamed: "FlyningEffect") {
            // By synchronizing the Particle and Background positions, I wanted to ensure that these two objects were aligned on the screen.
            particles.position.x = 512
            particles.zPosition = 0
            addChild(particles)
            
            player.position.x = -400
            player.zPosition = 1
            addChild(player)
            
        }
    }
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func update(_ currentTime: TimeInterval) {
    }
}

