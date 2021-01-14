//
//  MainMenu.swift
//  1MonthProject
//
//  Created by 90307984 on 1/13/21.
//

import Foundation
import SpriteKit

class MainMenu: SKScene {
  init(size: CGSize, won:Bool) {
    super.init(size: size)
    
    // 1
    let background = SKSpriteNode(imageNamed: "elmo")
    background.position = CGPoint(x: size.width/2, y: size.height/3)
    addChild(background)
    background.zPosition = -1
    // 2
    

   
    let message = "Are you ready to play?"
    // 3
    let label = SKLabelNode(fontNamed: "Chalkduster")
    label.text = message
    label.fontSize = 40
    label.fontColor = SKColor.white
    label.position = CGPoint(x: size.width/2, y: size.height/2)
    addChild(label)
    
    
    
        
    
    // 4
    run(SKAction.sequence([
      SKAction.wait(forDuration: 3.0),
      SKAction.run() { [weak self] in
        // 5
        guard let `self` = self else { return }
        let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
        let scene = GameScene(size: size)
        self.view?.presentScene(scene, transition:reveal)
      }
      ]))
   }
  
  // 6
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
