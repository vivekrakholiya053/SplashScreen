//
//  languageViewController.swift
//  SplashScreen
//
//  Created by Rakholiya vivek on 07/09/25.
//

import UIKit

class languageViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var languages = [
        modelLanguage(LanguageName: "English", code: "en", langType: "English"),
        modelLanguage(LanguageName: "Hindi", code: "hi", langType: "हिन्दी"),
        modelLanguage(LanguageName: "German", code: "de", langType: "Deutsch"),
        modelLanguage(LanguageName: "Spanish", code: "es", langType: "Español"),
        modelLanguage(LanguageName: "French", code: "fr", langType: "Français"),
        modelLanguage(LanguageName: "Korean", code: "ko", langType: "한국어"),
        modelLanguage(LanguageName: "Russian", code: "ru", langType: "Русский"),
        modelLanguage(LanguageName: "Arabic", code: "ar", langType: "العربية"),
        modelLanguage(LanguageName: "Portuguese", code: "pt-PT", langType: "Português")
    ]
    
    var isFromSplash:Bool = false
    var selectedLangCode: String = "en"  // default
    var selectedIndexPath:IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "languageTableViewCell", bundle: nil), forCellReuseIdentifier: "languageTableViewCell")
        
        //MARK: save the selected language
        
        if let savedCode = UserDefaults.standard.string(forKey: "appLanguage") {
               self.selectedLangCode = savedCode
               if let row = languages.firstIndex(where: { $0.code == savedCode }) {
                   self.selectedIndexPath = IndexPath(row: row, section: 0)
               }
           }
    }
    
    
    @IBAction func btnDone(_ sender: UIButton) {
        
        //set language code
        LocalizationHelper.shared.setLanguage(code: selectedLangCode)

        //Save the language code
        UserDefaults.standard.set(selectedLangCode, forKey: "appLanguage")
        UserDefaults.standard.synchronize()
        
        if isFromSplash{
            setLanguage(status: true)
            let intro1VC = self.storyboard?.instantiateViewController(withIdentifier: "Intro1ViewController") as? Intro1ViewController
            self.navigationController?.pushViewController(intro1VC!, animated: true)
        }
        else{
            self.navigationController?.popViewController(animated: true)
        }
        
    }
}

extension languageViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "languageTableViewCell") as! languageTableViewCell
        
        let index = languages[indexPath.row]
        cell.flagImage.image = UIImage(named: index.LanguageName)
        cell.languageName.text = index.LanguageName
        cell.languagetype.text = index.langType
        
        if selectedIndexPath == indexPath {
            cell.tick.isHidden = false
            cell.circleImage.image = UIImage(systemName: "largecircle.fill.circle")
            cell.circleImage.tintColor = .systemBlue
        } else {
            cell.tick.isHidden = true
            cell.circleImage.image = UIImage(systemName: "circle")
            cell.circleImage.tintColor = .gray
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
        self.selectedLangCode = languages[indexPath.row].code
        tableView.reloadData()
    }
}
