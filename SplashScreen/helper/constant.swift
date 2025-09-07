//
//  constant.swift
//  SplashScreen
//
//  Created by Rakholiya vivek on 03/09/25.
//

import Foundation

let INTRO1 = "INTRO1"
let INTRO2 = "INTRO2"
let LANGUAGE = "LANGUAGE"

func setLanguage(status:Bool)
{
    UserDefaults.standard.set(status, forKey: LANGUAGE)
}

func getLanguage() -> Bool
{
    let lang = UserDefaults.standard.bool(forKey: LANGUAGE)
    return lang
}

func setIntro1(status:Bool)
{
    UserDefaults.standard.set(status, forKey: INTRO1)
}

func getIntro1() -> Bool
{
    let intro1 = UserDefaults.standard.bool(forKey: INTRO1)
    return intro1
}

func setIntro2(status:Bool)
{
    UserDefaults.standard.set(status, forKey: INTRO2)
}

func getIntro2() -> Bool
{
    let intro2 = UserDefaults.standard.bool(forKey: INTRO2)
    return intro2
}
