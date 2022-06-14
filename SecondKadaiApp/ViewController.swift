//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 坪本 梨沙 on 2022/06/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
       // 他の画面から segue を使って戻ってきた時に呼ばれる
    }
    
    //1-①segue実行前処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //1-②segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        //1-③値の設定。遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.inputName = inputName.text
    }
    


}

