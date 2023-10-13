//
//  ViewController.swift
//  sampleT1
//
//  Created by pleocene on 2021/12/05.
//

import UIKit
import SideMenu

func test1(){
    
}



// コミットB
func dummyFuncB(){
    print("dummy func>")
}

// コミットC
func dummyFuncC(){
    print("dummy func>")
}


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
        debugPrint("CONF>ZZZ AA ＋＋＋dev1_a> add ccc ++++")
        debugPrint("CONF>＋＋＋dev1_a> add ccc ")
        ex1.funcExT1()
    }
    @IBAction func btnT2(_ sender: Any) {
        debugPrint("CONF>ZZZdev1_b> add AAA ")
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
        print("B2>case2 New>hello new world.")
        print("C3>Bwork>upd>case1")
        print("B2>Bwork>upd>case1")
    }

}

