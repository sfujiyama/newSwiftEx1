//
//  ViewController.swift
//  sampleT1
//
//  Created by pleocene on 2021/12/05.
//

import UIKit
import SideMenu

// MARK: - SideMenu
extension ViewController {
    func showSideMenu(){
        let storyboard = UIStoryboard(name: "SideMenu", bundle: nil)
        let menuViewController = storyboard.instantiateViewController(withIdentifier: "sideMenu")
        let menuNavigationController = storyboard.instantiateViewController(withIdentifier: "sideMenuNavi")
        present(menuNavigationController, animated: true, completion: nil)

    }
}


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
        // Side Menu
        showSideMenu()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("case2 New>hello new world.")
        print("upd>")
        print("upd>hello new world.")
        print("upd>ZZZ hello new world.")
    }

}

