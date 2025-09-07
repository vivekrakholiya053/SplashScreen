//
//  Intro2ViewController.swift
//  SplashScreen
//
//  Created by Rakholiya vivek on 03/09/25.
//

import UIKit

class Intro2ViewController: UIViewController {

    @IBOutlet weak var lblIntro2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        lblIntro2.text = "Intro 2".localized
    }

    @IBAction func btnHome(_ sender: Any) {
        
        setIntro2(status: true)
        let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeNvc") as? UINavigationController
        let window = UIApplication.shared.windows.first!
        window.rootViewController = homeVC
        window.makeKeyAndVisible()
        setIntro1(status: false)
    }
    

}
