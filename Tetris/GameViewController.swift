//
//  GameViewController.swift
//  Tetris
//
//  Created by Randall Kanna on 11/17/15.
//  Copyright (c) 2015 Randall Kanna. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var scene: GameScene! // type is game scene. value assigned later
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as! SKView // as! operator is forced downcast. without downcasting, we can't access skView methods and properties
        skView.multipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
