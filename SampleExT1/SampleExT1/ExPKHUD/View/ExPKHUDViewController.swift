//
//  B2MainViewController.swift
//  SampleExT1
//
//  Created by pleocene on 2021/12/08.
//

import UIKit
import PKHUD

class ExPKHUDViewController: UIViewController {
    
    @IBAction func btnPKHUD_start(_ sender: Any) {
        HUD.allowsInteraction = true
        HUD.show(.progress, onView: self.view)
        
    }
    
    @IBAction func btnPKHUD_stop(_ sender: Any) {
        HUD.hide(nil)
    }
    
    
        

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        debugPrint("ZZZ")
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
