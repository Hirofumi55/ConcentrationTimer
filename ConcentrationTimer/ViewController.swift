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
    
    //MAXタイマー値
    var maxTime : Int = 100000
    
    //現在のタイマー値
    var currentTime : Int = 0
    
    //プログレスバー値
    var bar: Float = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //ステッパーがタップされた時に呼び出されるメソッド
    @IBAction func StepperClicked(_ sender: UIStepper) {
        let num = Int (sender.value)
        
        //ラベルのフィールドを更新
        timeLabel.text = String(num)
        //MAXタイマー値の更新
        maxTime = num
    }
    
    
    
    //Startボタン押下で実行されるメソッド
    //ここの実装が難しい
    @IBAction func startButton(_ sender: Any) {
        currentTime = 0
        
        //タイマー値がテキストフィールドに格納されている数値を超えるまで繰り返す
        while (maxTime >= currentTime) {
            
            
            //乱数生成
            for i in 0...10 {
                let random = arc4random()
                print(random)
                print(i)
            }
            
            //プログレスバーの更新
            bar = Float(currentTime / maxTime)
            timeBar.setProgress(bar, animated: false)
            timeBar.progress = bar
            
            //現在のタイマー値をインクリメント
            currentTime = currentTime + 1
        }
        
        //タイマ値の初期化
        currentTime = 0
        bar = 0.0
        timeBar.setProgress(bar, animated: false)
        
    }
    
}
