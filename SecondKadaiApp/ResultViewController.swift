//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by 坪本 梨沙 on 2022/06/14.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var welcomeMessage: UILabel!
    
    var inputName: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //2-②処理結果labelにセット
        if inputName != "" {
            welcomeMessage.text = "こんにちは、 \(inputName!) さん"
        } else {
            welcomeMessage.text = "名前を入力してください"
        }
    }
    
    //segue
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
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
