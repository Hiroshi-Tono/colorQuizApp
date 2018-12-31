//
//  colorViewController.swift
//  colorQuizApp
//
//  Created by 遠野ひろし on 2018/12/14.
//  Copyright © 2018 遠野工房. All rights reserved.
//

import UIKit

class colorViewController: UIViewController {

    // RGBの変数を用意します
    var colorR = 0
    var colorG = 0
    var colorB = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // RGBから色を作ります
        let backColor = UIColor(red: CGFloat(colorR)/256.0,
                                green: CGFloat(colorG)/256.0,
                                blue: CGFloat(colorB)/256.0,
                                alpha: 1.0)
        // 背景色を設定します
        view.backgroundColor = backColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
