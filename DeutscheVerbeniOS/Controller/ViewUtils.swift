//
//  ViewUtils.swift
//  DeutscheVerbeniOS
//
//  Created by xengar on 2018-08-09.
//  Copyright © 2018 xengar. All rights reserved.
//

import Foundation
//import GoogleMobileAds

// MARK: ViewUtils
class ViewUtils {
    
    /**
     * Loads the list of verbs and conjugations
     */
    class func loadData(_ group : String, _ sort : String, _ mostCommon : String, _ verbs : inout [Verb], _ conjugations : inout [Conjugation]) {
        let plistPaths = Bundle.main.paths(forResourcesOfType: "plist", inDirectory: nil)
        
        for plistPath in plistPaths {
            if (plistPath as NSString).lastPathComponent == "verbs.plist" {
                // Get the root dictionary
                if let rootDictionary = NSDictionary(contentsOfFile: plistPath) as? [String : AnyObject] {
                    let verbsDictionary = rootDictionary["verbs"] as! [AnyObject]
                    // Add the verb
                    for (dictionary): (AnyObject) in verbsDictionary {
                        let verb = Verb(dictionary: dictionary as! [String : AnyObject])
                        
                        // check with Settings
                        if isValidVerbGroup(group, verb) && isValidVerbCommon(mostCommon, verb) {
                            verbs.append(verb)
                        }
                    }
                    // sort by Settings
                    sortVerbs(sort, &verbs)
                }
            } else if (plistPath as NSString).lastPathComponent == "conjugations.plist" {
                // Get the conjugations
                if let conjugationsDictionary = NSDictionary(contentsOfFile: plistPath) as? [String : AnyObject] {
                    let conjugationNodesDictionary = conjugationsDictionary["conjugations"] as! [AnyObject]
                    // Add the conjugation
                    for (dictionary): (AnyObject) in conjugationNodesDictionary {
                        conjugations.append(Conjugation(dictionary: dictionary as! [String : AnyObject]))
                    }
                }
            }
        }
    }
    
    // Checks if the verb can be added to the list according to the show verbs by group setting.
    class func isValidVerbGroup(_ group : String, _ verb : Verb) -> Bool {
        var addByGroup = true
        switch group {
        case Constants.GROUP1:
            addByGroup =  verb.type == 1
        case Constants.GROUP2:
            addByGroup =  verb.type == 2
        case Constants.GROUP3:
            addByGroup =  verb.type == 3
        default:
            break
        }
        return addByGroup
    }
    
    // Checks if the verb can be added to the list according to the show verbs by most common setting.
    class func isValidVerbCommon(_ mostCommon : String, _ verb : Verb) -> Bool {
        var addByCommon = true
        // common (1=TOP_25, 2=TOP_50, 3=TOP_100, 4=TOP_300, 5=TOP_500, 6=TOP_1000, 99=OTHER)
        switch (mostCommon) {
        case Constants.MOST_COMMON_25:
            addByCommon =  verb.common == 1
        case Constants.MOST_COMMON_50:
            addByCommon =  verb.common == 1 || verb.common == 2
        case Constants.MOST_COMMON_100:
            addByCommon =  verb.common == 1 || verb.common == 2 || verb.common == 3
        case Constants.MOST_COMMON_300:
            addByCommon =  verb.common == 1 || verb.common == 2 || verb.common == 3 || verb.common == 4
        default:
            break
        }
        return addByCommon
    }
    
    // Sort verbs according to sort setting
    class func sortVerbs(_ sort : String, _ verbs : inout [Verb]) {
        if sort.elementsEqual(Constants.ALPHABET) {
            // sort by alphabeth
            verbs = verbs.sorted(by: { $0.infinitive < $1.infinitive })
        } else {
            // sort by group and then by alphabeth
            verbs = verbs.sorted(by: { t1, t2 in
                if t1.type == t2.type {
                    return t1.infinitive < t2.infinitive
                }
                return t1.type < t2.type
            })
        }
    }
    
    
    /**
     * Checks if we should replace the letter with apostrophe.
     */
    class func useApostrophe(_ text: String) -> Bool {
        // L'apostrophe ( ' ) est un signe qui remplace une des voyelles ( a, e, i )
        // quand le mot qui suit commence lui-même par une voyelle ou un h muet.
        return (text.hasPrefix("a") || text.hasPrefix("e") || text.hasPrefix("i")
            || text.hasPrefix("o") || text.hasPrefix("u") || text.hasPrefix("h")
            || text.hasPrefix("â") || text.hasPrefix("à") || text.hasPrefix("ë")
            || text.hasPrefix("é") || text.hasPrefix("ê") || text.hasPrefix("è")
            || text.hasPrefix("î") || text.hasPrefix("ï") || text.hasPrefix("ô")
            || text.hasPrefix("û") || text.hasPrefix("ù") || text.hasPrefix("ü"))
    }
    
    
    /**
     * Replaces the first substring with another substring
     */
    class func replaceFirst(_ string : String, of pattern:String, with replacement: String) -> String {
        if let range = string.range(of: pattern){
            return string.replacingCharacters(in: range, with: replacement)
        }else{
            return string
        }
    }
    
    
    // MARK : Option
    struct Option {
        let name : String
        let code : String
        
        init(_ name : String, _ code : String) {
            self.name = name
            self.code = code
        }
    }
    
    /**
     * Create the verb translation languages
     */
    class func createLanguageOptions() -> [Option] {
        let languages : [Option] = [
            Option(NSLocalizedString("None", comment: ""), Constants.NONE),
            Option(Constants.STR_ENGLISH, Constants.ENGLISH),
            Option(Constants.STR_PORTUGUESE, Constants.PORTUGUESE),
            Option(Constants.STR_SPANISH, Constants.SPANISH)]
        return languages
    }
    
    /**
     * Get the name for the language code.
     */
    class func languageForCode(_ code : String) -> String {
        var response : String = ""
        let languages = createLanguageOptions()
        for index in 0 ..< languages.count {
            if languages[index].code.elementsEqual(code) {
                response = languages[index].name
                break
            }
        }
        return response
    }
    
    /**
     * Returns the translation of the verb according to the language.
     */
    class func getTranslation(_ verb : Verb, _ language : String) -> String {
        var translation = ""
        switch (language) {
        case Constants.ENGLISH:
            translation = verb.translationEN
        case Constants.SPANISH:
            translation = verb.translationFR
        case Constants.PORTUGUESE:
            translation = verb.translationES
        default:
            break
        }
        return translation
    }
    
    
    /**
     * Create show verb group options.
     */
    class func createShowVerbGroupOptions() -> [Option] {
        let options : [Option] = [
            Option(NSLocalizedString("1er groupe", comment: ""), Constants.GROUP1),
            Option(NSLocalizedString("2e groupe", comment: ""), Constants.GROUP2),
            Option(NSLocalizedString("3e groupe", comment: ""), Constants.GROUP3),
            Option(NSLocalizedString("All", comment: ""), Constants.ALL)]
        return options
    }
    
    /**
     * Get the type string for the code.
     */
    class func showVerbTypeForCode(_ code : String) -> String {
        var response : String = ""
        let options = createShowVerbGroupOptions()
        for index in 0 ..< options.count {
            if options[index].code.elementsEqual(code) {
                response = options[index].name
                break
            }
        }
        return response
    }
    
    /**
     * Create show verb sort by
     */
    class func createShowVerbSortOptions() -> [Option] {
        let options : [Option] = [
            Option(NSLocalizedString("Alphabet", comment: ""), Constants.ALPHABET),
            Option(NSLocalizedString("Group", comment: ""), Constants.GROUP)]
        return options
    }
    
    /**
     * Get the sort by string for the code.
     */
    class func showVerbSortForCode(_ code : String) -> String {
        var response : String = ""
        let options = createShowVerbSortOptions()
        for index in 0 ..< options.count {
            if options[index].code.elementsEqual(code) {
                response = options[index].name
                break
            }
        }
        return response
    }
    
    /**
     * Create show most common
     */
    class func createShowVerbMostCommonOptions() -> [Option] {
        let options : [Option] = [
            Option(NSLocalizedString("25 most common", comment: ""), Constants.MOST_COMMON_25),
            Option(NSLocalizedString("50 most common", comment: ""), Constants.MOST_COMMON_50),
            Option(NSLocalizedString("100 most common", comment: ""), Constants.MOST_COMMON_100),
            Option(NSLocalizedString("300 most common", comment: ""), Constants.MOST_COMMON_300),
            Option(NSLocalizedString("All", comment: ""), Constants.ALL)]
        return options
    }
    
    /**
     * Get the most common string by for the code.
     */
    class func showVerbMostCommonForCode(_ code : String) -> String {
        var response : String = ""
        let options = createShowVerbMostCommonOptions()
        for index in 0 ..< options.count {
            if options[index].code.elementsEqual(code) {
                response = options[index].name
                break
            }
        }
        return response
    }
    
    /**
     * Creates an AdMob Smart Banner and loads an ad.
     */ /*
    class func createAdMobBanner(_ viewController : UIViewController, _ bannerDelegate : GADBannerViewDelegate, _ adUnitId : String) -> GADBannerView {
        //print("Google Mobile Ads SDK version: \(GADRequest.sdkVersion())")
        let size = UIDevice.current.orientation.isLandscape ? kGADAdSizeSmartBannerLandscape : kGADAdSizeSmartBannerPortrait
        let banner : GADBannerView = GADBannerView(adSize: size)
        banner.adUnitID = Constants.USE_TEST_ADS ? "ca-app-pub-3940256099942544/2934735716" : adUnitId
        banner.rootViewController = viewController
        banner.delegate = bannerDelegate
        banner.load(GADRequest())
        return banner
    }*/
    
    /**
     * Loads the key string from the plist file.
     */ /*
    class func loadAdMobKey(_ key : String) -> String {
        let plistPaths = Bundle.main.paths(forResourcesOfType: "plist", inDirectory: nil)
        
        for plistPath in plistPaths {
            if (plistPath as NSString).lastPathComponent == "api_keys.plist" {
                // Get the root dictionary
                if let rootDictionary = NSDictionary(contentsOfFile: plistPath) as? [String : AnyObject] {
                    let keysDictionary = rootDictionary["Google AdMob keys"] as! [String : String]
                    
                    // if the key exists
                    if keysDictionary[key] != nil {
                        return keysDictionary[key]!
                    }
                }
            }
        }
        return ""
    } */
}
