//
//  ViewController.swift
//  ConcentrationTimer
//
//  Created by Sasakura Hirofumi on 2017/07/03.
//  Copyright © 2017年 Sasakura Hirofumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //タイマー値が表示されるラベル
    @IBOutlet weak var timeLabel: UILabel!
    
    //タイマー値のプログレスバー
    @IBOutlet weak var timeBar: UIProgressView!
    
    //タイマー値のステッパー
    @IBOutlet weak var timeStepper: UIStepper!
    
    //終了タイマー値
    var maxTime : Int = 60 * 60
    
    //現在のタイマー値
    var currentTime : Int = 0
    
    //プログレスバー値
    var bar: Float = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //タイマーの生成
        Timer.scheduledTimer(
            //繰り返す間隔
            timeInterval: 1.0,
            target: self,
            //実行するメソッド
            selector: #selector(self.step),
            userInfo: nil,
            repeats: true
        )
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //ステッパーがタップされた時に呼び出されるメソッド
    @IBAction func StepperClicked(_ sender: UIStepper) {
        let num = Int (sender.value)
        
        //ラベルのフィールドを更新
        timeLabel.text = String(num)
        
        //終了タイマー値の更新
        maxTime = num * 60
        
    }
    
    
    //Startボタン押下で実行されるメソッド
    @IBAction func startButton(_ sender: Any) {
        currentTime = 0
    }
    
    func step() {
        currentTime = currentTime + 1
        
        if maxTime > currentTime {
            //プログレスバーの更新
            bar = Float(currentTime / maxTime)
            timeBar.setProgress(bar, animated: false)
            //timeBar.progress = bar
        } else {
            
        }
    }
}
