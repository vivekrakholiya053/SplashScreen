//
//  ViewController.swift
//  SplashScreen
//
//  Created by Rakholiya vivek on 03/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        lblHome.text = "Home".localized
    }

    @IBAction func btnSetting(_ sender: UIButton) {
        let langVC = self.storyboard?.instantiateViewController(withIdentifier: "languageViewController") as? languageViewController
        langVC?.isFromSplash = false
        self.navigationController?.pushViewController(langVC!, animated: true)
    }
}

