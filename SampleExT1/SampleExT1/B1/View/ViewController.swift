//
//  ViewController.swift
//  sampleT1
//
//  Created by pleocene on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageMain: UIImageView!
    let ex1 = Ex1Model()

    // MARK: - 
    @IBAction func btnT1(_ sender: Any) {
        debugPrint("ZZZ AA ＋＋＋dev1_a> add ccc ++++")
        debugPrint("＋＋＋dev1_a> add ccc ")
        ex1.funcExT1()
    }
    
    @IBAction func btnT2(_ sender: Any) {
        debugPrint("ZZZdev1_b> add AAA ")
        debugPrint("dev1_b> New ++ ")
        ex1.funcExT2()
    }
    
    @IBAction func btnT3(_ sender: Any) {
        ex1.funcExT3()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hello new world.")
        print("ZZZ hello new world.")
    }


}

