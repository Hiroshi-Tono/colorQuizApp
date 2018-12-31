//
//  ViewController.swift
//  colorQuizApp
//
//  Created by 遠野ひろし on 2018/12/14.
//  Copyright © 2018 遠野工房. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorLabel: UILabel!
    
    // RGBの変数を用意します
    var colorR = 0
    var colorG = 0
    var colorB = 0
    
    // この画面が表示されるとき呼び出されます
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 0〜255のランダムな値を3つ作ります
        colorR = Int(arc4random() % 256)
        colorG = Int(arc4random() % 256)
        colorB = Int(arc4random() % 256)
        // 3つの色を表示します
        colorLabel.text = "R=\(colorR) ,G=\(colorG), B=\(colorB)"
    }
    
    //画面が切り替わるときに呼び出されます
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 切り替わり先の画面を変数に入れます
        let nextvc = segue.destination as! colorViewController
        // 切り替わり先の変数に、この画面の変数を入れて、受け渡します
        nextvc.colorR = colorR
        nextvc.colorG = colorG
        nextvc.colorB = colorB
    }
    
    @IBAction func returnTop(segue: UIStoryboardSegue) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

