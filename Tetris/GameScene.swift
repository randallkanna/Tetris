//
//  GameScene.swift
//  Tetris
//
//  Created by Randall Kanna on 11/17/15.
//  Copyright (c) 2015 Randall Kanna. All rights reserved.
//

import SpriteKit

// define a constant for the slowest speed that the shapes will travel
let TickLengthLevelOne = NSTimeInterval(600)

class GameScene: SKScene {
    var tick:(() -> ())?
    var tickLengthMillis = TickLengthLevelOne
    var lastTick:NSDate?
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        guard let lastTick = lastTick else {
            return
        }
        
        let timePassed = lastTick.timeIntervalSinceNow * -1000.0
        
        if timePassed > tickLengthMillis {
            self.lastTick = NSDate()
            tick?()
        }
    }
    
    func startTicking() {
        lastTick = NSDate()
    }
    
    func stopTicking() {
        lastTick = nil
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
    
        anchorPoint = CGPoint(x: 0, y: 1.0)
        
        let background = SKSpriteNode(imageNamed: "background") //type spritenode
        background.position = CGPoint(x: 0, y: 0) // bottom left corner in sprite kit
        background.anchorPoint = CGPoint(x: 0, y: 1.0)
        addChild(background)
    }
}
