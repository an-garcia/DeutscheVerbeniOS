//
//  Verb.swift
//  DeutscheVerbeniOS
//
//  Created by xengar on 2018-08-09.
//  Copyright © 2018 xengar. All rights reserved.
//

import Foundation

// MARK: - Verb
class Verb {
    
    // MARK: Properties
    var id : Int
    var conjugation : Int
    var image : String
    var infinitive : String
    var pastParticiple : String
    var presentHe : String
    var pastHe : String
    var definition : String
    var sample1 : String
    var sample2 : String
    var sample3 : String
    var common : Int
    var type : Int
    var color : Int
    var score : Int
    var notes : String
    var translationEN : String
    var translationFR : String
    var translationES : String
    
    
    // MARK: Initializer
    init(dictionary: [String : AnyObject]) {
        id = dictionary["id"] as! Int
        conjugation = dictionary["ta"] as! Int
        image = dictionary["img"] as! String
        infinitive = dictionary["in"] as! String
        pastParticiple = dictionary["pp"] as! String
        presentHe = dictionary["prhe"] as! String
        pastHe = dictionary["pahe"] as! String
        definition = dictionary["de"] as! String
        sample1 = dictionary["s1"] as! String
        sample2 = dictionary["s2"] as! String
        sample3 = dictionary["s3"] as! String
        common = dictionary["co"] as! Int
        type = dictionary["type"] as! Int
        color  = 0
        score = 0
        notes = dictionary["no"] as! String
        translationEN = dictionary["tren"] as! String
        translationFR = dictionary["trfr"] as! String
        translationES = dictionary["tres"] as! String
    }
    
}
