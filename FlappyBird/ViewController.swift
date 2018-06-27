//
//  ViewController.swift
//  FlappyBird
//
//  Created by 菅野 英俊 on 2018/06/20.
//  Copyright © 2018年 菅野 英俊. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SKViewに型を変換する。
        let skView = self.view as! SKView
        
        // FPSを表示する。
        skView.showsFPS = true
        
        // ノードの数を表示する。
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する
        let scene = GameScene(size: skView.frame.size)
        
        // skViewにsceneを設定
        skView.presentScene(scene)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // ステータスを消す
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }


}

