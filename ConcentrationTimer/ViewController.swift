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
        
        
    }
    


}

