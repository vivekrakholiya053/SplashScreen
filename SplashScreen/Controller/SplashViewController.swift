//
//  SplashViewController.swift
//  SplashScreen
//
//  Created by Rakholiya vivek on 03/09/25.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 3)
        {
            self.navigate()
        }
    }
    

    func navigate()
    {
//        if getData() {
//            let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeNvc") as? UINavigationController
//            let window = UIApplication.shared.windows.first!
//            window.rootViewController = homeVC
//            window.makeKeyAndVisible()
//        }
//        else{
//            let intro1Vc = self.storyboard?.instantiateViewController(identifier: "Intro1ViewController") as? Intro1ViewController
//            self.navigationController?.pushViewController(intro1Vc!, animated: true)
//        }
        
        if getLanguage(){
            let langVC = self.storyboard?.instantiateViewController(identifier: "Intro1ViewController") as? Intro1ViewController
            self.navigationController?.pushViewController(langVC!, animated: true)
        }
        else if getIntro1()
        {
            let intro1VC = self.storyboard?.instantiateViewController(identifier: "Intro2ViewController") as? Intro2ViewController
            self.navigationController?.pushViewController(intro1VC!, animated: true)
        }
        else if getIntro2()
        {
            let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeNvc") as? UINavigationController
            let window = UIApplication.shared.windows.first!
            window.rootViewController = homeVC
            window.makeKeyAndVisible()
        }
        else{
            let langVC = self.storyboard?.instantiateViewController(identifier: "languageViewController") as? languageViewController
            langVC?.isFromSplash = true
            self.navigationController?.pushViewController(langVC!, animated: true)
        }
    }
    

}
