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
        ex1.funcExT1()
    }
    
    @IBAction func btnT2(_ sender: Any) {
        ex1.funcExT2()
    }
    
    @IBAction func btnT3(_ sender: Any) {
        ex1.funcExT3()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

