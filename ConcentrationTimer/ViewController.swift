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
    
    //タイマー値
    var time : Float = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //ステッパーがタップされた時に呼び出されるメソッド
    @IBAction func StepperClicked(_ sender: UIStepper) {
        let num = Int (sender.value)
        timeLabel.text = String(num)
    }
    
    
    //Startボタン押下で実行されるメソッド
    @IBAction func startButton(_ sender: Any) {
        
        //タイマー値がテキストフィールドに格納されている数値を超えるまで繰り返す
        while Float(timeLabel.text!)! > time {
            
            //60秒SLEEPした処理を実行する
            DispatchQueue.main.asyncAfter(deadline: .now() + 60.0) {
                //タイマー値のインクリメント
                self.time = self.time + 1.0
                
                //プログレスバーの更新
                let bar = (Float(timeLabel.text!)! - self.time) / (Float(timeLabel.text!)!)
                timeBar.progress = Float(bar)
            }
        }
    }
    
}
