//
//  GameViewController.swift
//  1MonthProject
//
//  Created by 90308346 on 12/22/20.
//


import UIKit
import SpriteKit

class GameViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let scene = MainMenu(size: view.bounds.size, won: true)
    let skView = view as! SKView
    skView.showsFPS = true
    skView.showsNodeCount = true
    skView.ignoresSiblingOrder = true
    scene.scaleMode = .resizeFill
    skView.presentScene(scene)


  }
  
  override var prefersStatusBarHidden: Bool {
    return true
  }
  
}
