//
//  InfoViewController.swift
//  GroceryList
//
//  Created by linda.zande on 05/08/2021.
//

import UIKit

class InfoViewController: UIViewController {

    
    @IBOutlet weak var closeButtonTapped: UIButton! {
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var appInfoLabel1: UILabel!
    
    @IBOutlet weak var appInfoLabel2: UILabel!
    
    var infoText = ""
    var info2Text = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        appInfoLabel1.text = infoText
        appInfoLabel2.text = info2Text
        
        if !infoText.isEmpty && !info2Text.isEmpty{
            appInfoLabel1.text = infoText
            appInfoLabel2.text = info2Text
        }

}
    
    @IBAction func openSettings(_ sender: Any) {
    }
    func openSettings(){
            guard let settingURL = URL(string: UIApplication.openSettingsURLString) else {
                return
            }
            if UIApplication.shared.canOpenURL(settingURL){
                UIApplication.shared.open(settingURL, options: [:]) {
                    success in
                    print("success: ", success)
                }
            }
    }
}


