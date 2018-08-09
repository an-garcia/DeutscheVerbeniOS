//
//  Constants.swift
//  DeutscheVerbeniOS
//
//  Created by xengar on 2018-08-09.
//  Copyright © 2018 xengar. All rights reserved.
//

import Foundation

// MARK: Constants
struct Constants {
    
    // Translation language code
    static let NONE = "None"
    static let ENGLISH = "en"
    static let SPANISH = "es"
    static let PORTUGUESE = "pt"
    
    // Translation language display strings
    static let STR_NONE = "None"
    static let STR_ENGLISH = "English"
    static let STR_SPANISH = "Español"
    static let STR_PORTUGUESE = "Português"
    
    
    // UserDefaults keys
    static let KEY_HAS_LAUNCHED_BEFORE = "hasLaunchedBefore"
    static let KEY_SHOW_VERB_DEFINITION = "showVerbDefinition"
    static let KEY_TRANSLATION_LANGUAGE = "translationLanguage"
    static let KEY_SHOW_VERB_GROUP = "showVerbGroup"
    static let KEY_SHOW_VERB_SORT = "showVerbSort"
    static let KEY_SHOW_VERB_COMMON = "showVerbMostCommon"
    
    // Show verbs
    static let GROUP1 = "group1"
    static let GROUP2 = "group2"
    static let GROUP3 = "group3"
    static let ALL = "all"
    static let ALPHABET = "alphabet"
    static let GROUP = "group"
    static let MOST_COMMON_25 = "25"
    static let MOST_COMMON_50 = "50"
    static let MOST_COMMON_100 = "100"
    static let MOST_COMMON_300 = "300"
    
    
    // Pronoms personnels
    static let JEA = "j'"
    static let JE = "je "
    static let TU = "tu "
    static let IL = "il "
    static let NOUS = "nous "
    static let VOUS = "vous "
    static let ILS = "ils "
    static let QUE = "que "
    static let QUEA = "qu'"
    
    // Pronoms reflexive
    static let MEA = "m'"
    static let ME = "me "
    static let TEA = "t'"
    static let TE = "te "
    static let SEA = "s'"
    static let SE = "se "
    
    /**
     * Enable test ads for AdMob
     * See ViewUtils.createAdMobBanner()
     */
    static let USE_TEST_ADS = true
    
}
