//
//  NantesViewController.swift
//  SampleExT1
//
//  Created by pleocene on 2021/12/16.
//

import UIKit
import Nantes

class NantesViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sample()
        sample2()
    }
    // MARK: - Nantes
    func sample(){
        let label: NantesLabel = .init(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
        label.attributedTruncationToken = NSAttributedString(string: "... more")
        label.numberOfLines = 3
        label.labelTappedBlock = {
          label.numberOfLines = label.numberOfLines == 0 ? 3 : 0 // Flip between limiting lines and not

            UIView.animate(withDuration: 0.2, animations: {
            self.view.layoutIfNeeded()
          })
        }

        label.text = "Nantes label is great! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac urna et ante lobortis varius. Nunc rhoncus enim vitae sem commodo sodales. Morbi id augue id augue finibus tincidunt. Cras ac massa nisi. Maecenas elementum vitae elit eu mattis. Duis pretium turpis ut justo accumsan molestie. Mauris elit elit, maximus eu risus sed, vestibulum sodales enim. Sed porttitor vestibulum tincidunt. Maecenas mollis tortor quam, sed porta justo rhoncus id. Phasellus vitae augue tempor, luctus metus sit amet, dictum urna. Morbi sit amet feugiat purus. Proin vitae finibus lectus, eu gravida erat."
        view.addSubview(label)
        
        
        let linkLabel: NantesLabel = .init(frame: CGRect(x: 0, y: 200, width: 400, height: 100))
        linkLabel.delegate = self // NantesLabelDelegate
        linkLabel.linkAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        linkLabel.text = "Hellow There > https://www.instacart.com"
        view.addSubview(linkLabel)
    }
    
    func sample2(){
        var label = UILabel(frame:CGRect(x: 0, y: 400, width: 500, height: 100))
        label.text = "test label"
        view.addSubview(label)
    }

}

extension NantesViewController : NantesLabelDelegate{
    // Link handling
    func attributedLabel(_ label: NantesLabel, didSelectLink link: URL) {
      print("Tapped link: \(link)")
    }
    func attributedLabel(_ label: NantesLabel, didSelectAddress addressComponents: [NSTextCheckingKey : String]) {
        print("1")
    }
    
    func attributedLabel(_ label: NantesLabel, didSelectDate date: Date, timeZone: TimeZone, duration: TimeInterval) {
        print("2")
    }
    
    func attributedLabel(_ label: NantesLabel, didSelectPhoneNumber phoneNumber: String) {
        print("3")
    }
    
    func attributedLabel(_ label: NantesLabel, didSelectTextCheckingResult result: NSTextCheckingResult) {
        print("4")
    }
    
    func attributedLabel(_ label: NantesLabel, didSelectTransitInfo transitInfo: [NSTextCheckingKey : String]) {
        print("5")
    }
}
