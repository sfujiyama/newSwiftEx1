//
//  ModalViewController.swift
//  SampleExT1
//
//  Created by pleocene on 2021/12/14.
//

import UIKit
import PanModal

class ModalViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }
}

extension ModalViewController: PanModalPresentable {
    var panScrollable: UIScrollView? {
        return nil
    }
    // モーダルの高さを画面下端から200にする(モーダルを表示した時のデフォルトの高さ)
    var shortFormHeight: PanModalHeight {
        return .contentHeight(200)
    }
    // モーダルの高さを画面上端から最大400に制限する
    // この値を設定しないとモーダルが画面の一番上までスワイプできてしまう
    var longFormHeight: PanModalHeight {
        return .maxHeightWithTopInset(400)
    }
    // モーダルの背景色
    var panModalBackgroundColor: UIColor {
        return UIColor.black.withAlphaComponent(0.2)
    }
    // 上にスワイプできるかどうか(デフォルトではtrue)
    var anchorModalToLongForm: Bool {
        return true
    }
    // モーダル上端の角に丸みをつけるかどうか
    var shouldRoundTopCorners: Bool {
        return true
    }
    // ホームボタンがないスマホのホームバーみたいなやつを表示するかどうか
    var showDragIndicator: Bool {
        return true
    }
    // 表示したモーダルをユーザーが操作できるかどうか(falseにすると操作できなくなる)
    var isUserInteractionEnabled: Bool {
        return true
    }
}
