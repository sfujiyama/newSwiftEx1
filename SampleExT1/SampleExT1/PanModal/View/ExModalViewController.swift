//
//  ExModalViewController.swift
//  SampleExT1
//
//  Created by pleocene on 2021/12/14.
//

import UIKit

class ExModalViewController: UIViewController {

    let button: UIButton = {
        let button = UIButton()
        button.setTitle("表示！", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 20
        button.backgroundColor = .orange
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        button.center = view.center
        button.addTarget(self, action: #selector(presentModal(_:)), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc func presentModal(_ sender: UIButton) {
        presentPanModal(ModalViewController())
    }
}
