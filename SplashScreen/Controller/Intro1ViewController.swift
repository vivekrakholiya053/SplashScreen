//
//  Intro1ViewController.swift
//  SplashScreen
//
//  Created by Rakholiya vivek on 03/09/25.
//

import UIKit

class Intro1ViewController: UIViewController {

    @IBOutlet weak var lblIntro1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        lblIntro1.text = "Intro 1".localized
    }

    @IBAction func btnHome(_ sender: UIButton) {
        
//        setData(status: true)
//        let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeNvc") as? UINavigationController
//        let window = UIApplication.shared.windows.first!
//        window.rootViewController = homeVC
//        window.makeKeyAndVisible()
        
        setIntro1(status: true)
        let intro2Vc = self.storyboard?.instantiateViewController(identifier: "Intro2ViewController") as? Intro2ViewController
        self.navigationController?.pushViewController(intro2Vc!, animated: true)
        setLanguage(status: false)
        
    }
    

}
