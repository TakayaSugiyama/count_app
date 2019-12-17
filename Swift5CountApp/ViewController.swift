//
//  ViewController.swift
//  Swift5CountApp
//
//  Created by TakayaSugiyama on 2019/12/17.
//  Copyright © 2019 TakayaSugiyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    
    //最初に呼ばれる
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.text = "0" //string型
    }

    //プラスボタンが押された時呼ばれる
    @IBAction func plus(_ sender: UIButton) {
        //カウントアップさせたい
        count += 1
        //ラベルに文字を反映させる
        countLabel.text = String(count) //キャスト
        //10を超えたら色を黄色にしたい
        if count >= 10 {
            changeTextColor()
        }
    }
    
    //マイナスボタンが押されたとき呼ばれる
    @IBAction func minus(_ sender: Any) {
        //カウントダウンさせたい
        count -= 1
        //ラベルに文字を反映させる
        countLabel.text = String(count)
        //0以下になったら白に変更したい。
        if count <= 0 {
            resetColor()
        }
    }
    
    func changeTextColor(){
        countLabel.textColor = .yellow
    }
    
    func resetColor(){
        if count <= 0{
            countLabel.textColor = .white
        }
    }
}

