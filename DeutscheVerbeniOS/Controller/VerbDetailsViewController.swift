//
//  VerbDetailsViewController.swift
//  DeutscheVerbeniOS
//
//  Created by xengar on 2018-08-09.
//  Copyright © 2018 xengar. All rights reserved.
//

import UIKit
//import GoogleMobileAds

public extension String
{
    func replaceFirst(_ target: String, with replace: String) -> String {
        if let range = self.range(of: target) {
            return self.replacingCharacters(in: range, with: replace)
        }
        return self
    }
    
    func replaceLast(_ target: String, with replace: String) -> String {
        return String(String(self.reversed()).replaceFirst(target, with: replace).reversed())
    }
}


// MARK: - VerbDetailsViewController
class VerbDetailsViewController: UIViewController {

    // MARK: Properties
    var verb : Verb!
    var conjugation : Conjugation!
    let speaker = Speaker("de-DE")
    
    @IBOutlet weak var infinitive : UIButton!
    @IBOutlet weak var type : UILabel!
    @IBOutlet weak var principalParts : UILabel!
    @IBOutlet weak var translation : UILabel!
    @IBOutlet weak var definitionLabel : UILabel!
    @IBOutlet weak var definition : UIButton!
    @IBOutlet weak var examples : UILabel!
    @IBOutlet weak var sample1 : UIButton!
    @IBOutlet weak var sample2 : UIButton!
    @IBOutlet weak var sample3 : UIButton!
    @IBOutlet weak var image : UIImageView!
    
    @IBOutlet weak var infinitivPrasens : UIButton!
    @IBOutlet weak var infinitivPerfekt : UIButton!
    @IBOutlet weak var partizipPrasens : UIButton!
    @IBOutlet weak var partizipPerfekt : UIButton!
    
    @IBOutlet weak var imperativDu : UIButton!
    @IBOutlet weak var imperativIhr : UIButton!
    @IBOutlet weak var imperativSie : UIButton!
    
    @IBOutlet weak var indikativPrasensIch : UIButton!
    @IBOutlet weak var indikativPrasensDu : UIButton!
    @IBOutlet weak var indikativPrasensEr : UIButton!
    @IBOutlet weak var indikativPrasensWir : UIButton!
    @IBOutlet weak var indikativPrasensIhr : UIButton!
    @IBOutlet weak var indikativPrasensSie : UIButton!
    
    @IBOutlet weak var indikativPrateritumIch : UIButton!
    @IBOutlet weak var indikativPrateritumDu : UIButton!
    @IBOutlet weak var indikativPrateritumEr : UIButton!
    @IBOutlet weak var indikativPrateritumWir : UIButton!
    @IBOutlet weak var indikativPrateritumIhr : UIButton!
    @IBOutlet weak var indikativPrateritumSie : UIButton!
    
    @IBOutlet weak var indikativPerfektIch : UIButton!
    @IBOutlet weak var indikativPerfektDu : UIButton!
    @IBOutlet weak var indikativPerfektEr : UIButton!
    @IBOutlet weak var indikativPerfektWir : UIButton!
    @IBOutlet weak var indikativPerfektIhr : UIButton!
    @IBOutlet weak var indikativPerfektSie : UIButton!
    
    @IBOutlet weak var indikativPlusquamperfektIch : UIButton!
    @IBOutlet weak var indikativPlusquamperfektDu : UIButton!
    @IBOutlet weak var indikativPlusquamperfektEr : UIButton!
    @IBOutlet weak var indikativPlusquamperfektWir : UIButton!
    @IBOutlet weak var indikativPlusquamperfektIhr : UIButton!
    @IBOutlet weak var indikativPlusquamperfektSie : UIButton!
    
    @IBOutlet weak var indikativFutur1Ich : UIButton!
    @IBOutlet weak var indikativFutur1Du : UIButton!
    @IBOutlet weak var indikativFutur1Er : UIButton!
    @IBOutlet weak var indikativFutur1Wir : UIButton!
    @IBOutlet weak var indikativFutur1Ihr : UIButton!
    @IBOutlet weak var indikativFutur1Sie : UIButton!
    
    @IBOutlet weak var indikativFutur2Ich : UIButton!
    @IBOutlet weak var indikativFutur2Du : UIButton!
    @IBOutlet weak var indikativFutur2Er : UIButton!
    @IBOutlet weak var indikativFutur2Wir : UIButton!
    @IBOutlet weak var indikativFutur2Ihr : UIButton!
    @IBOutlet weak var indikativFutur2Sie : UIButton!
    
    @IBOutlet weak var konjunktiv1PrasensIch : UIButton!
    @IBOutlet weak var konjunktiv1PrasensDu : UIButton!
    @IBOutlet weak var konjunktiv1PrasensEr : UIButton!
    @IBOutlet weak var konjunktiv1PrasensWir : UIButton!
    @IBOutlet weak var konjunktiv1PrasensIhr : UIButton!
    @IBOutlet weak var konjunktiv1PrasensSie : UIButton!
    
    @IBOutlet weak var konjunktiv1PerfektIch : UIButton!
    @IBOutlet weak var konjunktiv1PerfektDu : UIButton!
    @IBOutlet weak var konjunktiv1PerfektEr : UIButton!
    @IBOutlet weak var konjunktiv1PerfektWir : UIButton!
    @IBOutlet weak var konjunktiv1PerfektIhr : UIButton!
    @IBOutlet weak var konjunktiv1PerfektSie : UIButton!
    
    @IBOutlet weak var konjunktiv1Futur1Ich : UIButton!
    @IBOutlet weak var konjunktiv1Futur1Du : UIButton!
    @IBOutlet weak var konjunktiv1Futur1Er : UIButton!
    @IBOutlet weak var konjunktiv1Futur1Wir : UIButton!
    @IBOutlet weak var konjunktiv1Futur1Ihr : UIButton!
    @IBOutlet weak var konjunktiv1Futur1Sie : UIButton!
    
    @IBOutlet weak var konjunktiv1Futur2Ich : UIButton!
    @IBOutlet weak var konjunktiv1Futur2Du : UIButton!
    @IBOutlet weak var konjunktiv1Futur2Er : UIButton!
    @IBOutlet weak var konjunktiv1Futur2Wir : UIButton!
    @IBOutlet weak var konjunktiv1Futur2Ihr : UIButton!
    @IBOutlet weak var konjunktiv1Futur2Sie : UIButton!
    
    @IBOutlet weak var konjunktiv2PrateritumIch : UIButton!
    @IBOutlet weak var konjunktiv2PrateritumDu : UIButton!
    @IBOutlet weak var konjunktiv2PrateritumEr : UIButton!
    @IBOutlet weak var konjunktiv2PrateritumWir : UIButton!
    @IBOutlet weak var konjunktiv2PrateritumIhr : UIButton!
    @IBOutlet weak var konjunktiv2PrateritumSie : UIButton!
    
    @IBOutlet weak var konjunktiv2PlusquamperfektIch : UIButton!
    @IBOutlet weak var konjunktiv2PlusquamperfektDu : UIButton!
    @IBOutlet weak var konjunktiv2PlusquamperfektEr : UIButton!
    @IBOutlet weak var konjunktiv2PlusquamperfektWir : UIButton!
    @IBOutlet weak var konjunktiv2PlusquamperfektIhr : UIButton!
    @IBOutlet weak var konjunktiv2PlusquamperfektSie : UIButton!
    
    @IBOutlet weak var konjunktiv2Futur1Ich : UIButton!
    @IBOutlet weak var konjunktiv2Futur1Du : UIButton!
    @IBOutlet weak var konjunktiv2Futur1Er : UIButton!
    @IBOutlet weak var konjunktiv2Futur1Wir : UIButton!
    @IBOutlet weak var konjunktiv2Futur1Ihr : UIButton!
    @IBOutlet weak var konjunktiv2Futur1Sie : UIButton!
    
    @IBOutlet weak var konjunktiv2Futur2Ich : UIButton!
    @IBOutlet weak var konjunktiv2Futur2Du : UIButton!
    @IBOutlet weak var konjunktiv2Futur2Er : UIButton!
    @IBOutlet weak var konjunktiv2Futur2Wir : UIButton!
    @IBOutlet weak var konjunktiv2Futur2Ihr : UIButton!
    @IBOutlet weak var konjunktiv2Futur2Sie : UIButton!
    
    @IBOutlet weak var stack: UIStackView!
    //var banner: GADBannerView!
    //let adUnitID : String = ViewUtils.loadAdMobKey("banner_ad_unit_id_2")
    
    deinit {
        verb = nil
        conjugation = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func setup() {
        self.title = verb.infinitive
        definitionLabel.text = NSLocalizedString("Definition", comment: "")
        examples.text = NSLocalizedString("Examples", comment: "")
        fillVerbDetails(verb)
        processConjugation(verb, conjugation)
        fillConjugationDetails(conjugation)
        //banner = ViewUtils.createAdMobBanner(self, self, adUnitID)
        
        setAdjustsFontForContentSizeCategory()
    }
    
    
    // MARK: - Verb Details
    
    private func fillVerbDetails(_ verb : Verb) {
        infinitive.setTitle(verb.infinitive, for: .normal)
        let translationLanguage = UserDefaults.standard.string(forKey: Constants.KEY_TRANSLATION_LANGUAGE)
        let lang : String = translationLanguage != nil ? translationLanguage! : Constants.ENGLISH
        translation.text = ViewUtils.getTranslation(verb, lang)
        // TODO: Set better string
        type.text = getVerbTypeString()
        principalParts.text = verb.pastHe + ", " + verb.pastParticiple + ", " + verb.presentHe
        
        definition.setTitle(verb.definition, for: .normal)
        sample1.setTitle(verb.sample1, for: .normal)
        sample2.setTitle(verb.sample2, for: .normal)
        sample3.setTitle(verb.sample3, for: .normal)
        
        image.image = imageForVerb(verb.image)
    }
    
    // MARK: Image for Match
    private func imageForVerb(_ fileName : String) -> UIImage {
        // Check if resource exist
        let image = UIImage(named: "verb_" + fileName)
        if (image != nil) {
            return image!
        } else {
            return UIImage(named: "verb_teach")!
        }
    }
    
    private func removeSeparableNotation(_ str: String) -> String {
        var newStr : String = str
        if (newStr.contains("·")) {
            newStr = newStr.replacingOccurrences(of: "·", with: "")
        }
        return newStr
    }
    
    private func removeReflexiveNotation(_ str: String) -> String {
        var newStr : String = str
        if (newStr.contains("sich ")) {
            newStr = newStr.replacingOccurrences(of: "sich ", with: "")
        }
        return newStr
    }
    
    
    // MARK: - Verb Conjugations
    
    private func processConjugation(_ verb : Verb, _ c : Conjugation) {
        var changePPwFI = false
        var linkToVerb = 0
        
        if (!verb.notes.isEmpty) {
            let aux : String = verb.notes.replacingOccurrences(of: "; ", with: ";")
            let arrayNotes = aux.split(separator: ";")
            for note in arrayNotes {
                if (note.elementsEqual("changePPwFI")) {
                    // Past Participle in parentheses when immediately preceded by another infinitive
                    changePPwFI = true
                } else if (note.elementsEqual("linkTo")) {
                    linkToVerb += 1
                    // TODO: links
                    //processLinkToVerb(linkToVerb, note)
                }
            }
        }
        
        if (!c.infinitivPrasens.isEmpty
            && !c.infinitivPrasens.elementsEqual(verb.infinitive)) {
            // if we need, conjugate the verb model.
            let verbInfinitive = removeReflexiveNotation(verb.infinitive)
            conjugateVerb(c, verbInfinitive)
        }
        
        // check if the verb uses other auxiliar verb and replace it. Like folgen, schweigen
        reviewAuxiliar(c, verb.pastParticiple)
        
        // separable verbs
        reviewSeparableConjugation(c, verb.infinitive)
        
        // check if it's dative verb (reflexive). Like sich überlegen
        reviewReflexiveConjugation(c, verb.infinitive)
        
        addPronoms(c)
    }
    
    private func getPartizipPerfekt(_ pastParticiple : String) -> String {
        var pp = pastParticiple
        if (pp.contains("ist ")) {
            pp = pastParticiple.replacingOccurrences(of: "ist ", with: "")
        }
        return pp
    }
    
    private func reviewAuxiliar(_ c : Conjugation, _ pastParticiple : String) {
        var isVerbSein = false
        if (pastParticiple.contains("ist ")) {
            // only sein is indicated
            isVerbSein = true
        }
        var isConjugationSein = false
        if (c.infinitivPerfekt.contains("sein")) {
            isConjugationSein = true
        } else if (c.infinitivPerfekt.contains("haben")) {
            isConjugationSein = false
        }
    
        if (!isConjugationSein && isVerbSein) {
            // change auxiliary verb to sein
            replaceAuxiliarToSein(c)
        } else if (isConjugationSein && !isVerbSein) {
            // change auxiliary verb to haben
            replaceAuxiliarToHaben(c)
        }
    }
    
    private func replaceAuxiliarToSein(_ c : Conjugation) {
        c.infinitivPerfekt = c.infinitivPerfekt.replacingOccurrences(of: " haben", with: " sein")
    
        c.indikativPerfektIch = c.indikativPerfektIch.replacingOccurrences(of: "habe ", with: "bin ")
        c.indikativPerfektDu = c.indikativPerfektDu.replacingOccurrences(of: "hast ", with: "bist ")
        c.indikativPerfektEr = c.indikativPerfektEr.replacingOccurrences(of: "hat ", with: "ist ")
        c.indikativPerfektWir = c.indikativPerfektWir.replacingOccurrences(of: "haben ", with: "sind ")
        c.indikativPerfektIhr = c.indikativPerfektIhr.replacingOccurrences(of: "habt ", with: "seid ")
        c.indikativPerfektSie = c.indikativPerfektSie.replacingOccurrences(of: "haben ", with: "sind ")
    
        c.indikativPlusquamperfektIch = c.indikativPlusquamperfektIch.replacingOccurrences(of: "hatte ", with: "war ")
        c.indikativPlusquamperfektDu = c.indikativPlusquamperfektDu.replacingOccurrences(of: "hattest ", with: "warst ")
        c.indikativPlusquamperfektEr = c.indikativPlusquamperfektEr.replacingOccurrences(of: "hatte ", with: "war ")
        c.indikativPlusquamperfektWir = c.indikativPlusquamperfektWir.replacingOccurrences(of: "hatten ", with: "waren ")
        c.indikativPlusquamperfektIhr = c.indikativPlusquamperfektIhr.replacingOccurrences(of: "hattet ", with: "wart ")
        c.indikativPlusquamperfektSie = c.indikativPlusquamperfektSie.replacingOccurrences(of: "hatten ", with: "waren ")
    
        c.indikativFutur2Ich = c.indikativFutur2Ich.replacingOccurrences(of: " haben", with: " sein")
        c.indikativFutur2Du = c.indikativFutur2Du.replacingOccurrences(of: " haben", with: " sein")
        c.indikativFutur2Er = c.indikativFutur2Er.replacingOccurrences(of: " haben", with: " sein")
        c.indikativFutur2Wir = c.indikativFutur2Wir.replacingOccurrences(of: " haben", with: " sein")
        c.indikativFutur2Ihr = c.indikativFutur2Ihr.replacingOccurrences(of: " haben", with: " sein")
        c.indikativFutur2Sie = c.indikativFutur2Sie.replacingOccurrences(of: " haben", with: " sein")
    
        c.konjunktiv1PerfektIch = c.konjunktiv1PerfektIch.replacingOccurrences(of: "habe ", with: "sei ")
        c.konjunktiv1PerfektDu = c.konjunktiv1PerfektDu.replacingOccurrences(of: "habest ", with: "seiest ")
        c.konjunktiv1PerfektEr = c.konjunktiv1PerfektEr.replacingOccurrences(of: "habe ", with: "sei ")
        c.konjunktiv1PerfektWir = c.konjunktiv1PerfektWir.replacingOccurrences(of: "haben ", with: "seien ")
        c.konjunktiv1PerfektIhr = c.konjunktiv1PerfektIhr.replacingOccurrences(of: "habet ", with: "seiet ")
        c.konjunktiv1PerfektSie = c.konjunktiv1PerfektSie.replacingOccurrences(of: "haben ", with: "seien ")
    
        c.konjunktiv1Futur2Ich = c.konjunktiv1Futur2Ich.replacingOccurrences(of: " haben", with: " sein")
        c.konjunktiv1Futur2Du = c.konjunktiv1Futur2Du.replacingOccurrences(of: " haben", with: " sein")
        c.konjunktiv1Futur2Er = c.konjunktiv1Futur2Er.replacingOccurrences(of: " haben", with: " sein")
        c.konjunktiv1Futur2Wir = c.konjunktiv1Futur2Wir.replacingOccurrences(of: " haben", with: " sein")
        c.konjunktiv1Futur2Ihr = c.konjunktiv1Futur2Ihr.replacingOccurrences(of: " haben", with: " sein")
        c.konjunktiv1Futur2Sie = c.konjunktiv1Futur2Sie.replacingOccurrences(of: " haben", with: " sein")
    
        c.konjunktiv2PlusquamperfektIch = c.konjunktiv2PlusquamperfektIch.replacingOccurrences(of: "hätte ", with: "wäre ")
        c.konjunktiv2PlusquamperfektDu = c.konjunktiv2PlusquamperfektDu.replacingOccurrences(of: "hättest ", with: "wärest ")
        c.konjunktiv2PlusquamperfektEr = c.konjunktiv2PlusquamperfektEr.replacingOccurrences(of: "hätte ", with: "wäre ")
        c.konjunktiv2PlusquamperfektWir = c.konjunktiv2PlusquamperfektWir.replacingOccurrences(of: "hätten ", with: "wären ")
        c.konjunktiv2PlusquamperfektIhr = c.konjunktiv2PlusquamperfektIhr.replacingOccurrences(of: "hättet ", with: "wäret ")
        c.konjunktiv2PlusquamperfektSie = c.konjunktiv2PlusquamperfektSie.replacingOccurrences(of: "hätten ", with: "wären ")
    
        c.konjunktiv2Futur2Ich = c.konjunktiv2Futur2Ich.replacingOccurrences(of: " haben", with: " sein")
        c.konjunktiv2Futur2Du = c.konjunktiv2Futur2Du.replacingOccurrences(of: " haben", with: " sein")
        c.konjunktiv2Futur2Er = c.konjunktiv2Futur2Er.replacingOccurrences(of: " haben", with: " sein")
        c.konjunktiv2Futur2Wir = c.konjunktiv2Futur2Wir.replacingOccurrences(of: " haben", with: " sein")
        c.konjunktiv2Futur2Ihr = c.konjunktiv2Futur2Ihr.replacingOccurrences(of: " haben", with: " sein")
        c.konjunktiv2Futur2Sie = c.konjunktiv2Futur2Sie.replacingOccurrences(of: " haben", with: " sein")
    }
    
    private func replaceAuxiliarToHaben(_ c : Conjugation) {
        c.infinitivPerfekt = c.infinitivPerfekt.replacingOccurrences(of: " sein", with: " haben")
    
        c.indikativPerfektIch = c.indikativPerfektIch.replacingOccurrences(of: "bin ", with: "habe ")
        c.indikativPerfektDu = c.indikativPerfektDu.replacingOccurrences(of: "bist ", with: "hast ")
        c.indikativPerfektEr = c.indikativPerfektEr.replacingOccurrences(of: "ist ", with: "hat ")
        c.indikativPerfektWir = c.indikativPerfektWir.replacingOccurrences(of: "sind ", with: "haben ")
        c.indikativPerfektIhr = c.indikativPerfektIhr.replacingOccurrences(of: "seid ", with: "habt ")
        c.indikativPerfektSie = c.indikativPerfektSie.replacingOccurrences(of: "sind ", with: "haben ")
    
        c.indikativPlusquamperfektIch = c.indikativPlusquamperfektIch.replacingOccurrences(of: "war ", with: "hatte ")
        c.indikativPlusquamperfektDu = c.indikativPlusquamperfektDu.replacingOccurrences(of: "warst ", with: "hattest ")
        c.indikativPlusquamperfektEr = c.indikativPlusquamperfektEr.replacingOccurrences(of: "war ", with: "hatte ")
        c.indikativPlusquamperfektWir = c.indikativPlusquamperfektWir.replacingOccurrences(of: "waren ", with: "hatten ")
        c.indikativPlusquamperfektIhr = c.indikativPlusquamperfektIhr.replacingOccurrences(of: "wart ", with: "hattet ")
        c.indikativPlusquamperfektSie = c.indikativPlusquamperfektSie.replacingOccurrences(of: "waren ", with: "hatten ")
    
        c.indikativFutur2Ich = c.indikativFutur2Ich.replacingOccurrences(of: " sein", with: " haben")
        c.indikativFutur2Du = c.indikativFutur2Du.replacingOccurrences(of: " sein", with: " haben")
        c.indikativFutur2Er = c.indikativFutur2Er.replacingOccurrences(of: " sein", with: " haben")
        c.indikativFutur2Wir = c.indikativFutur2Wir.replacingOccurrences(of: " sein", with: " haben")
        c.indikativFutur2Ihr = c.indikativFutur2Ihr.replacingOccurrences(of: " sein", with: " haben")
        c.indikativFutur2Sie = c.indikativFutur2Sie.replacingOccurrences(of: " sein", with: " haben")
    
        c.konjunktiv1PerfektIch = c.konjunktiv1PerfektIch.replacingOccurrences(of: "sei ", with: "habe ")
        c.konjunktiv1PerfektDu = c.konjunktiv1PerfektDu.replacingOccurrences(of: "seiest ", with: "habest ")
        c.konjunktiv1PerfektEr = c.konjunktiv1PerfektEr.replacingOccurrences(of: "sei ", with: "habe ")
        c.konjunktiv1PerfektWir = c.konjunktiv1PerfektWir.replacingOccurrences(of: "seien ", with: "haben ")
        c.konjunktiv1PerfektIhr = c.konjunktiv1PerfektIhr.replacingOccurrences(of: "seiet ", with: "habet ")
        c.konjunktiv1PerfektSie = c.konjunktiv1PerfektSie.replacingOccurrences(of: "seien ", with: "haben ")
    
        c.konjunktiv1Futur2Ich = c.konjunktiv1Futur2Ich.replacingOccurrences(of: " sein", with: " haben")
        c.konjunktiv1Futur2Du = c.konjunktiv1Futur2Du.replacingOccurrences(of: " sein", with: " haben")
        c.konjunktiv1Futur2Er = c.konjunktiv1Futur2Er.replacingOccurrences(of: " sein", with: " haben")
        c.konjunktiv1Futur2Wir = c.konjunktiv1Futur2Wir.replacingOccurrences(of: " sein", with: " haben")
        c.konjunktiv1Futur2Ihr = c.konjunktiv1Futur2Ihr.replacingOccurrences(of: " sein", with: " haben")
        c.konjunktiv1Futur2Sie = c.konjunktiv1Futur2Sie.replacingOccurrences(of: " sein", with: " haben")
    
        c.konjunktiv2PlusquamperfektIch = c.konjunktiv2PlusquamperfektIch.replacingOccurrences(of: "wäre ", with: "hätte ")
        c.konjunktiv2PlusquamperfektDu = c.konjunktiv2PlusquamperfektDu.replacingOccurrences(of: "wärest ", with: "hättest ")
        c.konjunktiv2PlusquamperfektEr = c.konjunktiv2PlusquamperfektEr.replacingOccurrences(of: "wäre ", with: "hätte ")
        c.konjunktiv2PlusquamperfektWir = c.konjunktiv2PlusquamperfektWir.replacingOccurrences(of: "wären ", with: "hätten ")
        c.konjunktiv2PlusquamperfektIhr = c.konjunktiv2PlusquamperfektIhr.replacingOccurrences(of: "wäret ", with: "hättet ")
        c.konjunktiv2PlusquamperfektSie = c.konjunktiv2PlusquamperfektSie.replacingOccurrences(of: "wären ", with: "hätten ")
    
        c.konjunktiv2Futur2Ich = c.konjunktiv2Futur2Ich.replacingOccurrences(of: " sein", with: " haben")
        c.konjunktiv2Futur2Du = c.konjunktiv2Futur2Du.replacingOccurrences(of: " sein", with: " haben")
        c.konjunktiv2Futur2Er = c.konjunktiv2Futur2Er.replacingOccurrences(of: " sein", with: " haben")
        c.konjunktiv2Futur2Wir = c.konjunktiv2Futur2Wir.replacingOccurrences(of: " sein", with: " haben")
        c.konjunktiv2Futur2Ihr = c.konjunktiv2Futur2Ihr.replacingOccurrences(of: " sein", with: " haben")
        c.konjunktiv2Futur2Sie = c.konjunktiv2Futur2Sie.replacingOccurrences(of: " sein", with: " haben")
    }
    
    /**
     * Make the separable conjugation if it applies.
     */
    private func reviewSeparableConjugation(_ c : Conjugation, _ infinitive : String) {
        var s = ""
        if (infinitive.contains("·")) {
            s = infinitive.components(separatedBy: "·").first!
        } else {
            return
        }
    
        // Note that verb models are not separable, assume only one form is in the model
    
        c.infinitivPrasens = c.infinitivPrasens.replacingOccurrences(of: "·", with: "")
        c.partizipPrasens = c.partizipPrasens.replacingOccurrences(of: "·", with: "")
    
        if (!c.imperativDu.elementsEqual("-")) {
            c.imperativDu = c.imperativDu.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
            c.imperativDu = c.imperativDu.replacingOccurrences(of: "!", with: "") + "!"
        }
        if (!c.imperativIhr.elementsEqual("-")) {
            c.imperativIhr = c.imperativIhr.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
            c.imperativIhr = c.imperativIhr.replacingOccurrences(of: "!", with: "") + "!"
        }
        if (!c.imperativSie.elementsEqual("-")) {
            c.imperativSie = c.imperativSie.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
            c.imperativSie = c.imperativSie.replacingOccurrences(of: "!", with: "") + "!"
        }
    
        if (!c.indikativPrasensIch.elementsEqual("-")) {
            c.indikativPrasensIch = c.indikativPrasensIch.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.indikativPrasensDu.elementsEqual("-")) {
            c.indikativPrasensDu = c.indikativPrasensDu.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.indikativPrasensEr.elementsEqual("-")) {
            c.indikativPrasensEr = c.indikativPrasensEr.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.indikativPrasensWir.elementsEqual("-")) {
            c.indikativPrasensWir = c.indikativPrasensWir.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
            
        }
        if (!c.indikativPrasensIhr.elementsEqual("-")) {
            c.indikativPrasensIhr = c.indikativPrasensIhr.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.indikativPrasensSie.elementsEqual("-")) {
            c.indikativPrasensSie = c.indikativPrasensSie.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.indikativPrateritumIch.elementsEqual("-")) {
            c.indikativPrateritumIch = c.indikativPrateritumIch.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.indikativPrateritumDu.elementsEqual("-")) {
            c.indikativPrateritumDu = c.indikativPrateritumDu.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.indikativPrateritumEr.elementsEqual("-")) {
            c.indikativPrateritumEr = c.indikativPrateritumEr.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.indikativPrateritumWir.elementsEqual("-")) {
            c.indikativPrateritumWir = c.indikativPrateritumWir.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.indikativPrateritumIhr.elementsEqual("-")) {
            c.indikativPrateritumIhr = c.indikativPrateritumIhr.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.indikativPrateritumSie.elementsEqual("-")) {
            c.indikativPrateritumSie = c.indikativPrateritumSie.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
    
        c.indikativFutur1Ich = c.indikativFutur1Ich.replacingOccurrences(of: "·", with: "")
        c.indikativFutur1Du = c.indikativFutur1Du.replacingOccurrences(of: "·", with: "")
        c.indikativFutur1Er = c.indikativFutur1Er.replacingOccurrences(of: "·", with: "")
        c.indikativFutur1Wir = c.indikativFutur1Wir.replacingOccurrences(of: "·", with: "")
        c.indikativFutur1Ihr = c.indikativFutur1Ihr.replacingOccurrences(of: "·", with: "")
        c.indikativFutur1Sie = c.indikativFutur1Sie.replacingOccurrences(of: "·", with: "")
    
        if (!c.konjunktiv1PrasensIch.elementsEqual("-")) {
            c.konjunktiv1PrasensIch = c.konjunktiv1PrasensIch.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.konjunktiv1PrasensDu.elementsEqual("-")) {
            c.konjunktiv1PrasensDu = c.konjunktiv1PrasensDu.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.konjunktiv1PrasensEr.elementsEqual("-")) {
            c.konjunktiv1PrasensEr = c.konjunktiv1PrasensEr.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.konjunktiv1PrasensWir.elementsEqual("-")) {
            c.konjunktiv1PrasensWir = c.konjunktiv1PrasensWir.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.konjunktiv1PrasensIhr.elementsEqual("-")) {
            c.konjunktiv1PrasensIhr = c.konjunktiv1PrasensIhr.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.konjunktiv1PrasensSie.elementsEqual("-")) {
            c.konjunktiv1PrasensSie = c.konjunktiv1PrasensSie.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
    
        c.konjunktiv1Futur1Ich = c.konjunktiv1Futur1Ich.replacingOccurrences(of: "·", with: "")
        c.konjunktiv1Futur1Du = c.konjunktiv1Futur1Du.replacingOccurrences(of: "·", with: "")
        c.konjunktiv1Futur1Er = c.konjunktiv1Futur1Er.replacingOccurrences(of: "·", with: "")
        c.konjunktiv1Futur1Wir = c.konjunktiv1Futur1Wir.replacingOccurrences(of: "·", with: "")
        c.konjunktiv1Futur1Ihr = c.konjunktiv1Futur1Ihr.replacingOccurrences(of: "·", with: "")
        c.konjunktiv1Futur1Sie = c.konjunktiv1Futur1Sie.replacingOccurrences(of: "·", with: "")
    
        if (!c.konjunktiv2PrateritumIch.elementsEqual("-")) {
            c.konjunktiv2PrateritumIch = c.konjunktiv2PrateritumIch.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.konjunktiv2PrateritumDu.elementsEqual("-")) {
            c.konjunktiv2PrateritumDu = c.konjunktiv2PrateritumDu.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.konjunktiv2PrateritumEr.elementsEqual("-")) {
            c.konjunktiv2PrateritumEr = c.konjunktiv2PrateritumEr.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.konjunktiv2PrateritumWir.elementsEqual("-")) {
            c.konjunktiv2PrateritumWir = c.konjunktiv2PrateritumWir.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.konjunktiv2PrateritumIhr.elementsEqual("-")) {
            c.konjunktiv2PrateritumIhr = c.konjunktiv2PrateritumIhr.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
        if (!c.konjunktiv2PrateritumSie.elementsEqual("-")) {
            c.konjunktiv2PrateritumSie = c.konjunktiv2PrateritumSie.replacingOccurrences(of: "\(s)·", with: "") + " \(s)"
        }
    
        c.konjunktiv2Futur1Ich = c.konjunktiv2Futur1Ich.replacingOccurrences(of: "·", with: "")
        c.konjunktiv2Futur1Du = c.konjunktiv2Futur1Du.replacingOccurrences(of: "·", with: "")
        c.konjunktiv2Futur1Er = c.konjunktiv2Futur1Er.replacingOccurrences(of: "·", with: "")
        c.konjunktiv2Futur1Wir = c.konjunktiv2Futur1Wir.replacingOccurrences(of: "·", with: "")
        c.konjunktiv2Futur1Ihr = c.konjunktiv2Futur1Ihr.replacingOccurrences(of: "·", with: "")
        c.konjunktiv2Futur1Sie = c.konjunktiv2Futur1Sie.replacingOccurrences(of: "·", with: "")
    }
    
    /**
     * Make the reflexive or dative conjugation if it applies.
     */
    private func reviewReflexiveConjugation(_ c : Conjugation, _ infinitive : String) {
        var inf = ""
        if (infinitive.contains("sich ")) {
            inf = removeReflexiveNotation(infinitive)
        } else {
            return
        }
    
        // Note that verb models are not reflexive or dative
    
        c.infinitivPrasens = "sich " + c.infinitivPrasens
        c.infinitivPerfekt = "sich " + c.infinitivPerfekt
        c.partizipPrasens = "sich " + c.partizipPrasens
    
        if (!c.imperativDu.elementsEqual("-")) {
            c.imperativDu = c.imperativDu.replacingOccurrences(of: "!", with: " dich!")
        }
        if (!c.imperativIhr.elementsEqual("-")) {
            c.imperativIhr = c.imperativIhr.replacingOccurrences(of: "!", with: " euch!")
        }
        if (!c.imperativSie.elementsEqual("-")) {
            c.imperativSie = c.imperativSie.replacingOccurrences(of: "!", with: " sich!")
        }
    
        if (!c.indikativPrasensIch.elementsEqual("-")) {
            c.indikativPrasensIch = c.indikativPrasensIch + " mich"
        }
        if (!c.indikativPrasensDu.elementsEqual("-")) {
            c.indikativPrasensDu = c.indikativPrasensDu + " dich"
        }
        if (!c.indikativPrasensEr.elementsEqual("-")) {
            c.indikativPrasensEr = c.indikativPrasensEr + " sich"
        }
        if (!c.indikativPrasensWir.elementsEqual("-")) {
            c.indikativPrasensWir = c.indikativPrasensWir + " uns"
        }
        if (!c.indikativPrasensIhr.elementsEqual("-")) {
            c.indikativPrasensIhr = c.indikativPrasensIhr + " euch"
        }
        if (!c.indikativPrasensSie.elementsEqual("-")) {
            c.indikativPrasensSie = c.indikativPrasensSie + " sich"
        }
    
        if (!c.indikativPrateritumIch.elementsEqual("-")) {
            c.indikativPrateritumIch = c.indikativPrateritumIch + " mich"
        }
        if (!c.indikativPrateritumDu.elementsEqual("-")) {
            c.indikativPrateritumDu = c.indikativPrateritumDu + " dich"
        }
        if (!c.indikativPrateritumEr.elementsEqual("-")) {
            c.indikativPrateritumEr = c.indikativPrateritumEr + " sich"
        }
        if (!c.indikativPrateritumWir.elementsEqual("-")) {
            c.indikativPrateritumWir = c.indikativPrateritumWir + " uns"
        }
        if (!c.indikativPrateritumIhr.elementsEqual("-")) {
            c.indikativPrateritumIhr = c.indikativPrateritumIhr + " euch"
        }
        if (!c.indikativPrateritumSie.elementsEqual("-")) {
            c.indikativPrateritumSie = c.indikativPrateritumSie + " sich"
        }
    
        let pp = c.partizipPerfekt
        c.indikativPerfektIch = c.indikativPerfektIch.replacingOccurrences(of: pp, with: "mich \(pp)")
        c.indikativPerfektDu = c.indikativPerfektDu.replacingOccurrences(of: pp, with: "dich \(pp)")
        c.indikativPerfektEr = c.indikativPerfektEr.replacingOccurrences(of: pp, with: "sich \(pp)")
        c.indikativPerfektWir = c.indikativPerfektWir.replacingOccurrences(of: pp, with: "uns \(pp)")
        c.indikativPerfektIhr = c.indikativPerfektIhr.replacingOccurrences(of: pp, with: "euch \(pp)")
        c.indikativPerfektSie = c.indikativPerfektSie.replacingOccurrences(of: pp, with: "sich \(pp)")
    
        c.indikativPlusquamperfektIch = c.indikativPlusquamperfektIch.replacingOccurrences(of: pp, with: "mich \(pp)")
        c.indikativPlusquamperfektDu = c.indikativPlusquamperfektDu.replacingOccurrences(of: pp, with: "dich \(pp)")
        c.indikativPlusquamperfektEr = c.indikativPlusquamperfektEr.replacingOccurrences(of: pp, with: "sich \(pp)")
        c.indikativPlusquamperfektWir = c.indikativPlusquamperfektWir.replacingOccurrences(of: pp, with: "uns \(pp)")
        c.indikativPlusquamperfektIhr = c.indikativPlusquamperfektIhr.replacingOccurrences(of: pp, with: "euch \(pp)")
        c.indikativPlusquamperfektSie = c.indikativPlusquamperfektSie.replacingOccurrences(of: pp, with: "sich \(pp)")
    
        c.indikativFutur1Ich = c.indikativFutur1Ich.replacingOccurrences(of: inf, with: "mich \(inf)")
        c.indikativFutur1Du = c.indikativFutur1Du.replacingOccurrences(of: inf, with: "dich \(inf)")
        c.indikativFutur1Er = c.indikativFutur1Er.replacingOccurrences(of: inf, with: "sich \(inf)")
        c.indikativFutur1Wir = c.indikativFutur1Wir.replacingOccurrences(of: inf, with: "uns \(inf)")
        c.indikativFutur1Ihr = c.indikativFutur1Ihr.replacingOccurrences(of: inf, with: "euch \(inf)")
        c.indikativFutur1Sie = c.indikativFutur1Sie.replacingOccurrences(of: inf, with: "sich \(inf)")
    
        c.indikativFutur2Ich = c.indikativFutur2Ich.replacingOccurrences(of: pp, with: "mich \(pp)")
        c.indikativFutur2Du = c.indikativFutur2Du.replacingOccurrences(of: pp, with: "dich \(pp)")
        c.indikativFutur2Er = c.indikativFutur2Er.replacingOccurrences(of: pp, with: "sich \(pp)")
        c.indikativFutur2Wir = c.indikativFutur2Wir.replacingOccurrences(of: pp, with: "uns \(pp)")
        c.indikativFutur2Ihr = c.indikativFutur2Ihr.replacingOccurrences(of: pp, with: "euch \(pp)")
        c.indikativFutur2Sie = c.indikativFutur2Sie.replacingOccurrences(of: pp, with: "sich \(pp)")
    
    
        if (!c.konjunktiv1PrasensIch.elementsEqual("-")) {
            c.konjunktiv1PrasensIch = c.konjunktiv1PrasensIch + " mich"
        }
        if (!c.konjunktiv1PrasensDu.elementsEqual("-")) {
            c.konjunktiv1PrasensDu = c.konjunktiv1PrasensDu + " dich"
        }
        if (!c.konjunktiv1PrasensEr.elementsEqual("-")) {
            c.konjunktiv1PrasensEr = c.konjunktiv1PrasensEr + " sich"
        }
        if (!c.konjunktiv1PrasensWir.elementsEqual("-")) {
            c.konjunktiv1PrasensWir = c.konjunktiv1PrasensWir + " uns"
        }
        if (!c.konjunktiv1PrasensIhr.elementsEqual("-")) {
            c.konjunktiv1PrasensIhr = c.konjunktiv1PrasensIhr + " euch"
        }
        if (!c.konjunktiv1PrasensSie.elementsEqual("-")) {
            c.konjunktiv1PrasensSie = c.konjunktiv1PrasensSie + " sich"
        }
    
        c.konjunktiv1PerfektIch = c.konjunktiv1PerfektIch.replacingOccurrences(of: pp, with: "mich \(pp)")
        c.konjunktiv1PerfektDu = c.konjunktiv1PerfektDu.replacingOccurrences(of: pp, with: "dich \(pp)")
        c.konjunktiv1PerfektEr = c.konjunktiv1PerfektEr.replacingOccurrences(of: pp, with: "sich \(pp)")
        c.konjunktiv1PerfektWir = c.konjunktiv1PerfektWir.replacingOccurrences(of: pp, with: "uns \(pp)")
        c.konjunktiv1PerfektIhr = c.konjunktiv1PerfektIhr.replacingOccurrences(of: pp, with: "euch \(pp)")
        c.konjunktiv1PerfektSie = c.konjunktiv1PerfektSie.replacingOccurrences(of: pp, with: "sich \(pp)")
    
        c.konjunktiv1Futur1Ich = c.konjunktiv1Futur1Ich.replacingOccurrences(of: inf, with: "mich \(inf)")
        c.konjunktiv1Futur1Du = c.konjunktiv1Futur1Du.replacingOccurrences(of: inf, with: "dich \(inf)")
        c.konjunktiv1Futur1Er = c.konjunktiv1Futur1Er.replacingOccurrences(of: inf, with: "sich \(inf)")
        c.konjunktiv1Futur1Wir = c.konjunktiv1Futur1Wir.replacingOccurrences(of: inf, with: "uns \(inf)")
        c.konjunktiv1Futur1Ihr = c.konjunktiv1Futur1Ihr.replacingOccurrences(of: inf, with: "euch \(inf)")
        c.konjunktiv1Futur1Sie = c.konjunktiv1Futur1Sie.replacingOccurrences(of: inf, with: "sich \(inf)")
    
        c.konjunktiv1Futur2Ich = c.konjunktiv1Futur2Ich.replacingOccurrences(of: pp, with: "mich \(pp)")
        c.konjunktiv1Futur2Du = c.konjunktiv1Futur2Du.replacingOccurrences(of: pp, with: "dich \(pp)")
        c.konjunktiv1Futur2Er = c.konjunktiv1Futur2Er.replacingOccurrences(of: pp, with: "sich \(pp)")
        c.konjunktiv1Futur2Wir = c.konjunktiv1Futur2Wir.replacingOccurrences(of: pp, with: "uns \(pp)")
        c.konjunktiv1Futur2Ihr = c.konjunktiv1Futur2Ihr.replacingOccurrences(of: pp, with: "euch \(pp)")
        c.konjunktiv1Futur2Sie = c.konjunktiv1Futur2Sie.replacingOccurrences(of: pp, with: "sich \(pp)")
    
    
        if (!c.konjunktiv2PrateritumIch.elementsEqual("-")) {
            c.konjunktiv2PrateritumIch = c.konjunktiv2PrateritumIch + " mich"
        }
        if (!c.konjunktiv2PrateritumDu.elementsEqual("-")) {
            c.konjunktiv2PrateritumDu = c.konjunktiv2PrateritumDu + " dich"
        }
        if (!c.konjunktiv2PrateritumEr.elementsEqual("-")) {
            c.konjunktiv2PrateritumEr = c.konjunktiv2PrateritumEr + " sich"
        }
        if (!c.konjunktiv2PrateritumWir.elementsEqual("-")) {
            c.konjunktiv2PrateritumWir = c.konjunktiv2PrateritumWir + " uns"
        }
        if (!c.konjunktiv2PrateritumIhr.elementsEqual("-")) {
            c.konjunktiv2PrateritumIhr = c.konjunktiv2PrateritumIhr + " euch"
        }
        if (!c.konjunktiv2PrateritumSie.elementsEqual("-")) {
            c.konjunktiv2PrateritumSie = c.konjunktiv2PrateritumSie + " sich"
        }
    
        c.konjunktiv2PlusquamperfektIch = c.konjunktiv2PlusquamperfektIch.replacingOccurrences(of: pp, with: "mich \(pp)")
        c.konjunktiv2PlusquamperfektDu = c.konjunktiv2PlusquamperfektDu.replacingOccurrences(of: pp, with: "dich \(pp)")
        c.konjunktiv2PlusquamperfektEr = c.konjunktiv2PlusquamperfektEr.replacingOccurrences(of: pp, with: "sich \(pp)")
        c.konjunktiv2PlusquamperfektWir = c.konjunktiv2PlusquamperfektWir.replacingOccurrences(of: pp, with: "uns \(pp)")
        c.konjunktiv2PlusquamperfektIhr = c.konjunktiv2PlusquamperfektIhr.replacingOccurrences(of: pp, with: "euch \(pp)")
        c.konjunktiv2PlusquamperfektSie = c.konjunktiv2PlusquamperfektSie.replacingOccurrences(of: pp, with: "sich \(pp)")
    
        c.konjunktiv2Futur1Ich = c.konjunktiv2Futur1Ich.replacingOccurrences(of: inf, with: "mich \(inf)")
        c.konjunktiv2Futur1Du = c.konjunktiv2Futur1Du.replacingOccurrences(of: inf, with: "dich \(inf)")
        c.konjunktiv2Futur1Er = c.konjunktiv2Futur1Er.replacingOccurrences(of: inf, with: "sich \(inf)")
        c.konjunktiv2Futur1Wir = c.konjunktiv2Futur1Wir.replacingOccurrences(of: inf, with: "uns \(inf)")
        c.konjunktiv2Futur1Ihr = c.konjunktiv2Futur1Ihr.replacingOccurrences(of: inf, with: "euch \(inf)")
        c.konjunktiv2Futur1Sie = c.konjunktiv2Futur1Sie.replacingOccurrences(of: inf, with: "sich \(inf)")
    
        c.konjunktiv2Futur2Ich = c.konjunktiv2Futur2Ich.replacingOccurrences(of: pp, with: "mich \(pp)")
        c.konjunktiv2Futur2Du = c.konjunktiv2Futur2Du.replacingOccurrences(of: pp, with: "dich \(pp)")
        c.konjunktiv2Futur2Er = c.konjunktiv2Futur2Er.replacingOccurrences(of: pp, with: "sich \(pp)")
        c.konjunktiv2Futur2Wir = c.konjunktiv2Futur2Wir.replacingOccurrences(of: pp, with: "uns \(pp)")
        c.konjunktiv2Futur2Ihr = c.konjunktiv2Futur2Ihr.replacingOccurrences(of: pp, with: "euch \(pp)")
        c.konjunktiv2Futur2Sie = c.konjunktiv2Futur2Sie.replacingOccurrences(of: pp, with: "sich \(pp)")
    }
    
    /**
     * Conjugates the verb according to the model.
     */
    private func conjugateVerb(_ c : Conjugation, _ verbInfinitive : String) {
        // Generate verb radicals for each time and person based on the radical's model.
        var modelRadicals = [String]()
        var verbRadicals = [String]()
        let modelRs : String = c.radicals.replacingOccurrences(of: ", ", with: ",")
        if (!modelRs.isEmpty) {
            let arrayModelRs = modelRs.split(separator: ",")
            for modelR in arrayModelRs {
                modelRadicals.append(String(modelR))
                let verbR : String = generateRadical(verbInfinitive, String(modelR), c.id)
                verbRadicals.append(verbR)
            }
            replaceRadicals(c, modelRadicals, verbRadicals, verbInfinitive)
        }
        
        // Exceptions to the conjugation model
        //replacePartizipPerfekt(c, verbInfinitive)
    }
    
    private func setParticipePasseAsInvariable(_ c : Conjugation) {
        // TODO: Ensure conjugations are invariable
        if (c.partizipPerfekt.contains("(") ) {
            var token = c.partizipPerfekt.components(separatedBy: "(")
            c.partizipPerfekt = "\(token[0])(invar.)"
        } else {
            c.partizipPerfekt = c.partizipPerfekt + " (invar.)"
        }
    }
    
    
    private func replacePartizipPerfekt(_ c : Conjugation, _ old : String, _ new : String) {
        c.infinitivPerfekt = c.infinitivPerfekt.replacingOccurrences(of: old, with: new)
        
        c.indikativPerfektIch = c.indikativPerfektIch.replacingOccurrences(of: old, with: new)
        c.indikativPerfektDu = c.indikativPerfektDu.replacingOccurrences(of: old, with: new)
        c.indikativPerfektEr = c.indikativPerfektEr.replacingOccurrences(of: old, with: new)
        c.indikativPerfektWir = c.indikativPerfektWir.replacingOccurrences(of: old, with: new)
        c.indikativPerfektIhr = c.indikativPerfektIhr.replacingOccurrences(of: old, with: new)
        c.indikativPerfektSie = c.indikativPerfektSie.replacingOccurrences(of: old, with: new)
        
        c.indikativPlusquamperfektIch = c.indikativPlusquamperfektIch.replacingOccurrences(of: old, with: new)
        c.indikativPlusquamperfektDu = c.indikativPlusquamperfektDu.replacingOccurrences(of: old, with: new)
        c.indikativPlusquamperfektEr = c.indikativPlusquamperfektEr.replacingOccurrences(of: old, with: new)
        c.indikativPlusquamperfektWir = c.indikativPlusquamperfektWir.replacingOccurrences(of: old, with: new)
        c.indikativPlusquamperfektIhr = c.indikativPlusquamperfektIhr.replacingOccurrences(of: old, with: new)
        c.indikativPlusquamperfektSie = c.indikativPlusquamperfektSie.replacingOccurrences(of: old, with: new)
        
        c.indikativFutur2Ich = c.indikativFutur2Ich.replacingOccurrences(of: old, with: new)
        c.indikativFutur2Du = c.indikativFutur2Du.replacingOccurrences(of: old, with: new)
        c.indikativFutur2Er = c.indikativFutur2Er.replacingOccurrences(of: old, with: new)
        c.indikativFutur2Wir = c.indikativFutur2Wir.replacingOccurrences(of: old, with: new)
        c.indikativFutur2Ihr = c.indikativFutur2Ihr.replacingOccurrences(of: old, with: new)
        c.indikativFutur2Sie = c.indikativFutur2Sie.replacingOccurrences(of: old, with: new)
        
        c.konjunktiv1PerfektIch = c.konjunktiv1PerfektIch.replacingOccurrences(of: old, with: new)
        c.konjunktiv1PerfektDu = c.konjunktiv1PerfektDu.replacingOccurrences(of: old, with: new)
        c.konjunktiv1PerfektEr = c.konjunktiv1PerfektEr.replacingOccurrences(of: old, with: new)
        c.konjunktiv1PerfektWir = c.konjunktiv1PerfektWir.replacingOccurrences(of: old, with: new)
        c.konjunktiv1PerfektIhr = c.konjunktiv1PerfektIhr.replacingOccurrences(of: old, with: new)
        c.konjunktiv1PerfektSie = c.konjunktiv1PerfektSie.replacingOccurrences(of: old, with: new)
        
        c.konjunktiv1Futur2Ich = c.konjunktiv1Futur2Ich.replacingOccurrences(of: old, with: new)
        c.konjunktiv1Futur2Du = c.konjunktiv1Futur2Du.replacingOccurrences(of: old, with: new)
        c.konjunktiv1Futur2Er = c.konjunktiv1Futur2Er.replacingOccurrences(of: old, with: new)
        c.konjunktiv1Futur2Wir = c.konjunktiv1Futur2Wir.replacingOccurrences(of: old, with: new)
        c.konjunktiv1Futur2Ihr = c.konjunktiv1Futur2Ihr.replacingOccurrences(of: old, with: new)
        c.konjunktiv1Futur2Sie = c.konjunktiv1Futur2Sie.replacingOccurrences(of: old, with: new)
        
        c.konjunktiv2PlusquamperfektIch = c.konjunktiv2PlusquamperfektIch.replacingOccurrences(of: old, with: new)
        c.konjunktiv2PlusquamperfektDu = c.konjunktiv2PlusquamperfektDu.replacingOccurrences(of: old, with: new)
        c.konjunktiv2PlusquamperfektEr = c.konjunktiv2PlusquamperfektEr.replacingOccurrences(of: old, with: new)
        c.konjunktiv2PlusquamperfektWir = c.konjunktiv2PlusquamperfektWir.replacingOccurrences(of: old, with: new)
        c.konjunktiv2PlusquamperfektIhr = c.konjunktiv2PlusquamperfektIhr.replacingOccurrences(of: old, with: new)
        c.konjunktiv2PlusquamperfektSie = c.konjunktiv2PlusquamperfektSie.replacingOccurrences(of: old, with: new)
        
        c.konjunktiv2Futur2Ich = c.konjunktiv2Futur2Ich.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur2Du = c.konjunktiv2Futur2Du.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur2Er = c.konjunktiv2Futur2Er.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur2Wir = c.konjunktiv2Futur2Wir.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur2Ihr = c.konjunktiv2Futur2Ihr.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur2Sie = c.konjunktiv2Futur2Sie.replacingOccurrences(of: old, with: new)
    }
    
    private func replaceInfinitiv(_ c : Conjugation, _ old : String, _ new : String) {
        c.indikativFutur1Ich = c.indikativFutur1Ich.replacingOccurrences(of: old, with: new)
        c.indikativFutur1Du = c.indikativFutur1Du.replacingOccurrences(of: old, with: new)
        c.indikativFutur1Er = c.indikativFutur1Er.replacingOccurrences(of: old, with: new)
        c.indikativFutur1Wir = c.indikativFutur1Wir.replacingOccurrences(of: old, with: new)
        c.indikativFutur1Ihr = c.indikativFutur1Ihr.replacingOccurrences(of: old, with: new)
        c.indikativFutur1Sie = c.indikativFutur1Sie.replacingOccurrences(of: old, with: new)
        
        c.konjunktiv1Futur1Ich = c.konjunktiv1Futur1Ich.replacingOccurrences(of: old, with: new)
        c.konjunktiv1Futur1Du = c.konjunktiv1Futur1Du.replacingOccurrences(of: old, with: new)
        c.konjunktiv1Futur1Er = c.konjunktiv1Futur1Er.replacingOccurrences(of: old, with: new)
        c.konjunktiv1Futur1Wir = c.konjunktiv1Futur1Wir.replacingOccurrences(of: old, with: new)
        c.konjunktiv1Futur1Ihr = c.konjunktiv1Futur1Ihr.replacingOccurrences(of: old, with: new)
        c.konjunktiv1Futur1Sie = c.konjunktiv1Futur1Sie.replacingOccurrences(of: old, with: new)
        
        c.konjunktiv2Futur1Ich = c.konjunktiv2Futur1Ich.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur1Du = c.konjunktiv2Futur1Du.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur1Er = c.konjunktiv2Futur1Er.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur1Wir = c.konjunktiv2Futur1Wir.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur1Ihr = c.konjunktiv2Futur1Ihr.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur1Sie = c.konjunktiv2Futur1Sie.replacingOccurrences(of: old, with: new)
    }
    
    
    /**
     * Generates the verb radical based on the model.
     */
    private func generateRadical(_ infinitive : String, _ modelR : String, _ id : Int) -> String {
        var verbR : String = infinitive
        // remove termination
        if (infinitive.hasSuffix("en")) {
            verbR = String(infinitive.prefix(infinitive.count - 2))
        } else if (infinitive.hasSuffix("ern") || infinitive.hasSuffix("eln")) {
            verbR = String(infinitive.prefix(infinitive.count - 3))
        }
        
        // know models
        switch (id) {
            case 3: // treiben, unterschreiben, forttreiben : [bleiben] verbes -eiben
                if (infinitive.hasSuffix("eiben")) {
                    if (modelR.elementsEqual("bl")) {
                        verbR = verbR.replaceLast("bie", with: "")
                    }
                }
            case 7: // messen, vergessen, aufmessen : [essen] verbes -essen
                if (infinitive.hasSuffix("essen")) {
                    if (modelR.elementsEqual("ess")) {
                    } else if (modelR.elementsEqual("iss")) {
                        verbR = verbR.replaceLast("e", with: "i")
                    } else if (modelR.elementsEqual("aß")) {
                        verbR = verbR.replaceLast("sse", with: "ßa")
                    } else if (modelR.elementsEqual("aß")) {
                        verbR = verbR.replaceLast("sse", with: "ßä")
                    }
                }
            case 9: // verschwinden, befinden, vorbinden : [finden] verbes -inden
                if (infinitive.hasSuffix("inden")) {
                    if (modelR.elementsEqual("f")) {
                        verbR = verbR.replaceLast("dni", with: "")
                    }
                }
            case 11: // vergeben, ausgeben, aufgeben : [geben] verbes -eben
                if (infinitive.hasSuffix("eben")) {
                    if (modelR.elementsEqual("geb")) {
                    } else if (modelR.elementsEqual("gib")) {
                        verbR = verbR.replaceLast("e", with: "i")
                    } else if (modelR.elementsEqual("gab")) {
                        verbR = verbR.replaceLast("e", with: "a")
                    } else if (modelR.elementsEqual("gäb")) {
                        verbR = verbR.replaceLast("e", with: "ä")
                    }
                }
            case 12: // umgehen, zurückgehen, vergehen : [gehen] verbes -ehen
                if (infinitive.hasSuffix("ehen")) {
                    if (modelR.elementsEqual("geh")) {
                    } else if (modelR.elementsEqual("ging")) {
                        verbR = verbR.replaceLast("he", with: "gni")
                    }
                }
            case 16: // erhalten, einhalten, hierbehalten : [halten] verbes -alten
                if (infinitive.hasSuffix("alten")) {
                    if (modelR.elementsEqual("halt")) {
                    } else if (modelR.elementsEqual("hält")) {
                        verbR = verbR.replaceLast("a", with: "ä")
                    } else if (modelR.elementsEqual("hielt")) {
                        verbR = verbR.replaceLast("a", with: "ei")
                    }
                }
            case 17: //  ... : [heißen] verbes -eißen
                if (infinitive.hasSuffix("eißen")) {
                    if (modelR.elementsEqual("heiß")) {
                    } else if (modelR.elementsEqual("hieß")) {
                        verbR = verbR.replaceLast("ei", with: "ie")
                    }
                }
            case 21: // benennen, nennen, wegbrennen : [kennen] verbes -ennen
                if (infinitive.hasSuffix("ennen")) {
                    if (modelR.elementsEqual("kenn")) {
                    } else if (modelR.elementsEqual("kann")) {
                        verbR = verbR.replaceLast("e", with: "a")
                    }
                }
            case 22: // nachkommen, einkommen, ankommen : [kommen] verbes -ommen
                if (infinitive.hasSuffix("ommen")) {
                    if (modelR.elementsEqual("k")) {
                        verbR = verbR.replaceLast("mmo", with: "")
                    }
                }
            case 24: // verlassen, überlassen, ablassen : [lassen] verbes -assen
                if (infinitive.hasSuffix("assen")) {
                    if (modelR.elementsEqual("l")) {
                        verbR = verbR.replaceLast("ssa", with: "")
                    }
                }
            case 29: break // hören, berücksichtigen, verursachen : [machen] verbes -en
            case 32:  // einnehmen, mitnehmen, annehmen : [nehmen] verbes -ehmen
                if (infinitive.hasSuffix("ehmen")) {
                    if (modelR.elementsEqual("nehm")) {
                    } else if (modelR.elementsEqual("nimm")) {
                        verbR = verbR.replaceLast("mhe", with: "mmi")
                    } else if (modelR.elementsEqual("nahm")) {
                        verbR = verbR.replaceLast("e", with: "a")
                    } else if (modelR.elementsEqual("nähm")) {
                        verbR = verbR.replaceLast("e", with: "ä")
                    }
                }
            case 34: // beischlafen, ausschlafen, einschlafen : [schlafen] verbes -afen
                if (infinitive.hasSuffix("afen")) {
                    if (modelR.elementsEqual("schl")) {
                        verbR = verbR.replaceLast("fa", with: "")
                    }
                }
            case 37: // versehen, aussehen, hersehen : [sehen] verbes -ehen
                if (infinitive.hasSuffix("ehen")) {
                    if (modelR.elementsEqual("seh")) {
                    } else if (modelR.elementsEqual("sieh")) {
                        verbR = verbR.replaceLast("e", with: "ei")
                    } else if (modelR.elementsEqual("sah")) {
                        verbR = verbR.replaceLast("e", with: "a")
                    } else if (modelR.elementsEqual("säh")) {
                        verbR = verbR.replaceLast("e", with: "ä")
                    }
                }
            case 42: // verbrechen, entsprechen, brechen : [sprechen] verbes -echen
                if (infinitive.hasSuffix("echen")) {
                    if (modelR.elementsEqual("spr")) {
                        verbR = verbR.replaceLast("hce", with: "")
                    }
                }
            case 43: // bestehen, zurückstehen, verstehen : [stehen] verbes -ehen
                if (infinitive.hasSuffix("ehen")) {
                    if (modelR.elementsEqual("steh")) {
                    } else if (modelR.elementsEqual("stan")) {
                        verbR = verbR.replaceLast("he", with: "na")
                    } else if (modelR.elementsEqual("stän")) {
                        verbR = verbR.replaceLast("he", with: "nä")
                    } else if (modelR.elementsEqual("stün")) {
                        verbR = verbR.replaceLast("he", with: "nü")
                    }
                }
            case 45: // erwerben, bewerben, anwerben : [sterben] verbes -erben
                if (infinitive.hasSuffix("erben")) {
                    if (modelR.elementsEqual("sterb")) {
                    } else if (modelR.elementsEqual("stirb")) {
                        verbR = verbR.replaceLast("e", with: "i")
                    } else if (modelR.elementsEqual("starb")) {
                        verbR = verbR.replaceLast("e", with: "a")
                    } else if (modelR.elementsEqual("stürb")) {
                        verbR = verbR.replaceLast("e", with: "ü")
                    }
                }
            case 46: // betragen, schlagen, ertragen : [tragen] verbes -agen
                if (infinitive.hasSuffix("agen")) {
                    if (modelR.elementsEqual("tr")) {
                        verbR = verbR.replaceLast("ga", with: "")
                    }
                }
            case 47: // betreffen, zutreffen, umtreffen : [treffen] verbes -effen
                if (infinitive.hasSuffix("effen")) {
                    if (modelR.elementsEqual("tr")) {
                        verbR = verbR.replaceLast("ffe", with: "")
                    }
                }
            case 51: // entwerfen, auswerfen, umwerfen : [werfen] verbes -erfen
                if (infinitive.hasSuffix("erfen")) {
                    if (modelR.elementsEqual("werf")) {
                    } else if (modelR.elementsEqual("wirf")) {
                        verbR = verbR.replaceLast("e", with: "i")
                    } else if (modelR.elementsEqual("warf")) {
                        verbR = verbR.replaceLast("e", with: "a")
                    } else if (modelR.elementsEqual("würf")) {
                        verbR = verbR.replaceLast("e", with: "ü")
                    }
                }
            case 60: // entsinnen, entsinnen, rüberrinnen : [beginnen] verbes -innen
                if (infinitive.hasSuffix("innen")) {
                    if (modelR.elementsEqual("beg")) {
                        verbR = verbR.replaceLast("nni", with: "")
                    }
                }
            case 61: // gewinnen : [gewinnen] verbes -innen
                if (infinitive.hasSuffix("innen")) {
                    if (modelR.elementsEqual("gew")) {
                        verbR = verbR.replaceLast("nni", with: "")
                    }
                }
            case 62: // erscheinen, widerscheinen, bescheinen : [scheinen] verbes -einen
                if (infinitive.hasSuffix("einen")) {
                    if (modelR.elementsEqual("sch")) {
                        verbR = verbR.replaceLast("nie", with: "")
                    }
                }
            case 63: // entfallen, leichtfallen, niederfallen : [fallen] verbes -allen
                if (infinitive.hasSuffix("allen")) {
                    if (modelR.elementsEqual("f")) {
                        verbR = verbR.replaceLast("lla", with: "")
                    }
                }
            case 64: // aufrufen, anrufen, widerrufen : [rufen] verbes -ufen
                if (infinitive.hasSuffix("ufen")) {
                    if (modelR.elementsEqual("ruf")) {
                    } else if (modelR.elementsEqual("rief")) {
                        verbR = verbR.replaceLast("u", with: "ei")
                    }
                }
            case 65: break // handeln, lächeln, behandeln : [sammeln] verbes -eln
            case 66: // beschaffen, vorausschaffen, beiseiteschaffen : [schaffen] verbes -affen
                if (infinitive.hasSuffix("affen")) {
                    if (modelR.elementsEqual("sch")) {
                        verbR = verbR.replaceLast("ffa", with: "")
                    }
                }
            case 67: // auflesen, fertiglesen, nachlesen : [lesen] verbes -esen
                if (infinitive.hasSuffix("esen")) {
                    if (modelR.elementsEqual("l")) {
                        verbR = verbR.replaceLast("se", with: "")
                    }
                }
            case 68: // verlieren, zufrieren, überfrieren : [frieren] verbes -ieren
                if (infinitive.hasSuffix("ieren")) {
                    if (modelR.elementsEqual("fr")) {
                        verbR = verbR.replaceLast("rei", with: "")
                    }
                }
            case 69, 70: // pflegen, hinbewegen, zubewegen : [bewegen] verbes -egen
                if (infinitive.hasSuffix("egen")) {
                    if (modelR.elementsEqual("bew")) {
                        verbR = verbR.replaceLast("ge", with: "")
                    }
                }
            case 72: // erwachsen, entwachsen, festwachsen : [wachsen] verbes -achsen
                if (infinitive.hasSuffix("achsen")) {
                    if (modelR.elementsEqual("wachs")) {
                    } else if (modelR.elementsEqual("wächs")) {
                        verbR = verbR.replaceLast("a", with: "ä")
                    } else if (modelR.elementsEqual("wuchs")) {
                        verbR = verbR.replaceLast("a", with: "u")
                    } else if (modelR.elementsEqual("wüchs")) {
                        verbR = verbR.replaceLast("a", with: "ü")
                    }
                }
            case 73: // anfangen, einfangen, empfangen : [fangen] verbes -angen
                if (infinitive.hasSuffix("angen")) {
                    if (modelR.elementsEqual("f")) {
                        verbR = verbR.replaceLast("gna", with: "")
                    }
                }
            case 74: // anschliessen, genießen, ausschließen : [schießen] verbes -ießen
                if (infinitive.hasSuffix("ießen")) {
                    if (modelR.elementsEqual("sch")) {
                        verbR = verbR.replaceLast("ßei", with: "")
                    }
                }
            case 75: // anbieten, verbieten, gebieten : [bieten] verbes -ieten
                if (infinitive.hasSuffix("ieten")) {
                    if (modelR.elementsEqual("biet")) {
                    } else if (modelR.elementsEqual("bot")) {
                        verbR = verbR.replaceLast("ei", with: "o")
                    } else if (modelR.elementsEqual("böt")) {
                        verbR = verbR.replaceLast("ei", with: "ö")
                    }
                }
            case 76: // versenden, zuwenden, wenden : [senden] verbes -enden
                if (infinitive.hasSuffix("enden")) {
                    if (modelR.elementsEqual("send")) {
                    } else if (modelR.elementsEqual("sand")) {
                        verbR = verbR.replaceLast("e", with: "a")
                    }
                }
            case 77: // schneiden, verschneiden, erleiden : [leiden] verbes -eiden
                if (infinitive.hasSuffix("eiden")) {
                    if (modelR.elementsEqual("l")) {
                        verbR = verbR.replaceLast("die", with: "")
                    }
                }
            case 78: // unterstreichen, vergleichen, gleichen : [streichen] verbes -eichen
                if (infinitive.hasSuffix("eichen")) {
                    if (modelR.elementsEqual("str")) {
                        verbR = verbR.replaceLast("hcie", with: "")
                    }
                }
            case 79: // befehlen, stehlen, abstehlen : [empfehlen] verbes -ehlen
                if (infinitive.hasSuffix("ehlen")) {
                    if (modelR.elementsEqual("empf")) {
                        verbR = verbR.replaceLast("lhe", with: "")
                    }
                }
            case 80: //  ... : [beißen] verbes -eißen
                if (infinitive.hasSuffix("eißen")) {
                    if (modelR.elementsEqual("beiß")) {
                    } else if (modelR.elementsEqual("biss")) {
                        verbR = verbR.replaceLast("ßie", with: "ssi")
                    }
                }
            case 81: //  fliegen, heranfliegen, zubiegen : [biegen] verbes -iegen
                if (infinitive.hasSuffix("iegen")) {
                    if (modelR.elementsEqual("bieg")) {
                    } else if (modelR.elementsEqual("bog")) {
                        verbR = verbR.replaceLast("ei", with: "o")
                    } else if (modelR.elementsEqual("bög")) {
                        verbR = verbR.replaceLast("ei", with: "ö")
                    }
                }
            case 82: //  hineinbitten, ausbitten, hereinbitten : [bitten] verbes -itten
                if (infinitive.hasSuffix("itten")) {
                    if (modelR.elementsEqual("bitt")) {
                    } else if (modelR.elementsEqual("bat")) {
                        verbR = verbR.replaceLast("ti", with: "a")
                    } else if (modelR.elementsEqual("bät")) {
                        verbR = verbR.replaceLast("ti", with: "ä")
                    }
                }
            case 83: //  vermeiden, entscheiden, mitentscheiden : [scheiden] verbes -eiden
                if (infinitive.hasSuffix("eiden")) {
                    if (modelR.elementsEqual("sch")) {
                        verbR = verbR.replaceLast("die", with: "")
                    }
                }
            case 84: //  ... : [erschrecken] verbes -ecken
                if (infinitive.hasSuffix("ecken")) {
                    if (modelR.elementsEqual("erschr")) {
                        verbR = verbR.replaceLast("kce", with: "")
                    }
                }
            case 85: //  entfliehen, auseinanderfliehen : [fliehen] verbes -iehen
                if (infinitive.hasSuffix("iehen")) {
                    if (modelR.elementsEqual("fl")) {
                        verbR = verbR.replaceLast("hei", with: "")
                    }
                }
            case 87: //  begraben, untergraben, aufgraben : [graben] verbes -aben
                if (infinitive.hasSuffix("aben")) {
                    if (modelR.elementsEqual("gr")) {
                        verbR = verbR.replaceLast("ba", with: "")
                    }
                }
            case 88: //  angreifen, ergreifen, schleifen : [greifen] verbes -eifen
                if (infinitive.hasSuffix("eifen")) {
                    if (modelR.elementsEqual("gr")) {
                        verbR = verbR.replaceLast("fie", with: "")
                    }
                }
            case 89: //  anhängen, drinhängen, umhängen : [hängen] verbes -ängen
                if (infinitive.hasSuffix("ängen")) {
                    if (modelR.elementsEqual("häng")) {
                    } else if (modelR.elementsEqual("hing")) {
                        verbR = verbR.replaceLast("ä", with: "i")
                    }
                }
            case 90: //  erheben, beheben, abheben : [heben] verbes -eben
                if (infinitive.hasSuffix("eben")) {
                    if (modelR.elementsEqual("heb")) {
                    } else if (modelR.elementsEqual("hob")) {
                        verbR = verbR.replaceLast("e", with: "o")
                    } else if (modelR.elementsEqual("höb")) {
                        verbR = verbR.replaceLast("e", with: "ö")
                    }
                }
            case 91: //  gelingen, springen, klingen : [singen] verbes -ingen
                if (infinitive.hasSuffix("ingen")) {
                    if (modelR.elementsEqual("sing")) {
                    } else if (modelR.elementsEqual("sang")) {
                        verbR = verbR.replaceLast("i", with: "a")
                    } else if (modelR.elementsEqual("säng")) {
                        verbR = verbR.replaceLast("i", with: "ä")
                    }
                }
            case 92: //  hochladen, entladen, beladen : [laden] verbes -aden
                if (infinitive.hasSuffix("aden")) {
                    if (modelR.elementsEqual("lad")) {
                    } else if (modelR.elementsEqual("lud")) {
                        verbR = verbR.replaceLast("a", with: "u")
                    } else if (modelR.elementsEqual("läd")) {
                        verbR = verbR.replaceLast("a", with: "ä")
                    }
                }
            case 93: //  verzeihen, beleihen, herleihen : [leihen] verbes -eihen
                if (infinitive.hasSuffix("eihen")) {
                    if (modelR.elementsEqual("leih")) {
                    } else if (modelR.elementsEqual("lieh")) {
                        verbR = verbR.replaceLast("ie", with: "ei")
                    }
                }
            case 94: //  verraten, beraten, heiraten : [raten] verbes -aten
                if (infinitive.hasSuffix("aten")) {
                    if (modelR.elementsEqual("rat")) {
                    } else if (modelR.elementsEqual("rät")) {
                        verbR = verbR.replaceLast("a", with: "ä")
                    } else if (modelR.elementsEqual("riet")) {
                        verbR = verbR.replaceLast("a", with: "ei")
                    }
                }
            case 95: //  kriechen, zurückkriechen, verriechen : [riechen] verbes -iechen
                if (infinitive.hasSuffix("iechen")) {
                    if (modelR.elementsEqual("riech")) {
                    } else if (modelR.elementsEqual("roch")) {
                        verbR = verbR.replaceLast("ei", with: "o")
                    } else if (modelR.elementsEqual("röch")) {
                        verbR = verbR.replaceLast("ei", with: "ö")
                    }
                }
            case 97: //  speien, anspeien, beschreien : [schreien] verbes -eien
                if (infinitive.hasSuffix("eien")) {
                    if (modelR.elementsEqual("schr")) {
                        verbR = verbR.replaceLast("ie", with: "")
                    }
                }
            case 98: //  schweigen, hinabsteigen, totschweigen : [steigen] verbes -eigen
                if (infinitive.hasSuffix("eigen")) {
                    if (modelR.elementsEqual("steig")) {
                    } else if (modelR.elementsEqual("stieg")) {
                        verbR = verbR.replaceLast("ie", with: "ei")
                    }
                }
            case 99: //  ranschwimmen, verschwimmen, abschwimmen : [schwimmen] verbes -immen
                if (infinitive.hasSuffix("immen")) {
                    if (modelR.elementsEqual("schw")) {
                        verbR = verbR.replaceLast("mmi", with: "")
                    }
                }
            case 100: //  sinken, betrinken, umsinken : [trinken] verbes -inken
                if (infinitive.hasSuffix("inken")) {
                    if (modelR.elementsEqual("tr")) {
                        verbR = verbR.replaceLast("kni", with: "")
                    }
                }
            case 101: //  stossen, verstoßen, fortstossen : [stoßen] verbes -oßen
                if (infinitive.hasSuffix("oßen") || infinitive.hasSuffix("ossen")) {
                    if (modelR.elementsEqual("stoß")) {
                    } else if (modelR.elementsEqual("stöß")) {
                        verbR = verbR.replaceLast("o", with: "ö")
                    } else if (modelR.elementsEqual("stieß")) {
                        verbR = verbR.replaceLast("o", with: "ei")
                    }
                }
            case 102: //  unterbreiten, breiten, streiten : [schreiten] verbes -eiten
                if (infinitive.hasSuffix("eiten")) {
                    if (modelR.elementsEqual("schr")) {
                        verbR = verbR.replaceLast("tie", with: "")
                    }
                }
            case 103: //  beitreten, vertreten, festtreten : [treten] verbes -eten
                if (infinitive.hasSuffix("eten")) {
                    if (modelR.elementsEqual("tr")) {
                        verbR = verbR.replaceLast("te", with: "")
                    }
                }
            case 104: //  verstecken, wegstecken, durchstecken : [stecken] verbes -ecken
                if (infinitive.hasSuffix("ecken")) {
                    if (modelR.elementsEqual("steck")) {
                    } else if (modelR.elementsEqual("stak")) {
                        verbR = verbR.replaceLast("ce", with: "a")
                    } else if (modelR.elementsEqual("stäk")) {
                        verbR = verbR.replaceLast("ce", with: "ä")
                    }
                }
            case 105: //  aufwaschen, anwaschen, vorwaschen : [waschen] verbes -aschen
                if (infinitive.hasSuffix("aschen")) {
                    if (modelR.elementsEqual("wachs")) {
                    } else if (modelR.elementsEqual("wächs")) {
                        verbR = verbR.replaceLast("a", with: "ä")
                    } else if (modelR.elementsEqual("wuchs")) {
                        verbR = verbR.replaceLast("a", with: "u")
                    } else if (modelR.elementsEqual("wüchs")) {
                        verbR = verbR.replaceLast("a", with: "ü")
                    }
                }
            case 106: //  abbacken, anbacken, mitbacken : [backen] verbes -acken
                if (infinitive.hasSuffix("acken")) {
                    if (modelR.elementsEqual("back")) {
                    } else if (modelR.elementsEqual("bäck")) {
                        verbR = verbR.replaceLast("a", with: "ä")
                    } else if (modelR.elementsEqual("buk")) {
                        verbR = verbR.replaceLast("ca", with: "u")
                    } else if (modelR.elementsEqual("bük")) {
                        verbR = verbR.replaceLast("ca", with: "ü")
                    }
                }
            case 107: //  pflügen, betrügen, erlügen : [lügen] verbes -ügen
                if (infinitive.hasSuffix("ügen")) {
                    if (modelR.elementsEqual("lüg")) {
                    } else if (modelR.elementsEqual("log")) {
                        verbR = verbR.replaceLast("ü", with: "o")
                    } else if (modelR.elementsEqual("lög")) {
                        verbR = verbR.replaceLast("ü", with: "ö")
                    }
                }
            
            default:
                break
        }
        
        return verbR
    }
    
    /**
     * Replaces the radicals with the ones from the verb.
     */
    private func replaceRadicals(_ c : Conjugation, _ modelR : [String], _ verbR : [String], _ verbInfinitive : String) {
        
        let inf = removeReflexiveNotation(verbInfinitive)
        replaceInfinitiv(c, c.infinitivPrasens, inf)
        
        c.infinitivPrasens = inf
        c.partizipPrasens = replaceRadical(c.partizipPrasens, modelR, verbR)
        
        c.imperativDu = replaceRadical(c.imperativDu, modelR, verbR)
        c.imperativIhr = replaceRadical(c.imperativIhr, modelR, verbR)
        c.imperativSie = replaceRadical(c.imperativSie, modelR, verbR)
        
        c.indikativPrasensIch = replaceRadical(c.indikativPrasensIch, modelR, verbR)
        c.indikativPrasensDu = replaceRadical(c.indikativPrasensDu, modelR, verbR)
        c.indikativPrasensEr = replaceRadical(c.indikativPrasensEr, modelR, verbR)
        c.indikativPrasensWir = replaceRadical(c.indikativPrasensWir, modelR, verbR)
        c.indikativPrasensIhr = replaceRadical(c.indikativPrasensIhr, modelR, verbR)
        c.indikativPrasensSie = replaceRadical(c.indikativPrasensSie, modelR, verbR)
        
        c.indikativPrateritumIch = replaceRadical(c.indikativPrateritumIch, modelR, verbR)
        c.indikativPrateritumDu = replaceRadical(c.indikativPrateritumDu, modelR, verbR)
        c.indikativPrateritumEr = replaceRadical(c.indikativPrateritumEr, modelR, verbR)
        c.indikativPrateritumWir = replaceRadical(c.indikativPrateritumWir, modelR, verbR)
        c.indikativPrateritumIhr = replaceRadical(c.indikativPrateritumIhr, modelR, verbR)
        c.indikativPrateritumSie = replaceRadical(c.indikativPrateritumSie, modelR, verbR)
        
        c.konjunktiv1PrasensIch = replaceRadical(c.konjunktiv1PrasensIch, modelR, verbR)
        c.konjunktiv1PrasensDu = replaceRadical(c.konjunktiv1PrasensDu, modelR, verbR)
        c.konjunktiv1PrasensEr = replaceRadical(c.konjunktiv1PrasensEr, modelR, verbR)
        c.konjunktiv1PrasensWir = replaceRadical(c.konjunktiv1PrasensWir, modelR, verbR)
        c.konjunktiv1PrasensIhr = replaceRadical(c.konjunktiv1PrasensIhr, modelR, verbR)
        c.konjunktiv1PrasensSie = replaceRadical(c.konjunktiv1PrasensSie, modelR, verbR)
        
        c.konjunktiv2PrateritumIch = replaceRadical(c.konjunktiv2PrateritumIch, modelR, verbR)
        c.konjunktiv2PrateritumDu = replaceRadical(c.konjunktiv2PrateritumDu, modelR, verbR)
        c.konjunktiv2PrateritumEr = replaceRadical(c.konjunktiv2PrateritumEr, modelR, verbR)
        c.konjunktiv2PrateritumWir = replaceRadical(c.konjunktiv2PrateritumWir, modelR, verbR)
        c.konjunktiv2PrateritumIhr = replaceRadical(c.konjunktiv2PrateritumIhr, modelR, verbR)
        c.konjunktiv2PrateritumSie = replaceRadical(c.konjunktiv2PrateritumSie, modelR, verbR)
        
        // Calculate and replace participe passe only, instead of radicals for composed tenses
        var pp = c.partizipPerfekt.components(separatedBy: " ")
        let old = pp[0].elementsEqual("-") ? "" : pp[0]
        
        c.partizipPerfekt = replaceRadical(c.partizipPerfekt, modelR, verbR)
        
        pp = c.partizipPerfekt.components(separatedBy: " ")
        let new = pp[0].elementsEqual("-") ? "" : pp[0]
        
        if (!old.isEmpty && !new.isEmpty) {
            replacePartizipPerfekt(c, old, new)
        }
    }
    
    /**
     * Replaces the radical in the conjugation form.
     */
    private func replaceRadical(_ text : String, _ modelR : [String], _ verbR : [String]) -> String {
        var newText : String = text
        var radicalM : String
        var radicalV : String
        
        for i in 0 ..< modelR.count {
            radicalM = modelR[i]
            radicalV = verbR[i]
            if (!radicalM.isEmpty && !radicalV.isEmpty && text.contains(radicalM)) {
                if (newText.contains(" / ")) {
                    // if there is 2 conjugations. Like model 43 stehen. ich stände / stünde
                    newText = newText.replacingOccurrences(of: radicalM, with: radicalV)
                } else {
                    newText = ViewUtils.replaceFirst(newText, of: radicalM, with: radicalV)
                }
                
                // if it's just one form break. If it's a double form (like ich stände / stünde) continue
                if (!text.contains("/")) {
                    break
                }
            }
        }
        return newText
    }
    
    /**
     * Ads the pronoms
     */
    private func addPronoms(_ c : Conjugation) {
        // Add pronoms
        // TODO: Show pronoms in different color
        addPronounsIndikativPrasens(c)
        addPronounsIndikativPrateritum(c)
        addPronounsIndikativPerfekt(c)
        addPronounsIndikativPlusquamperfekt(c)
        addPronounsIndikativFutur1(c)
        addPronounsIndikativFutur2(c)
        
        addPronounsKonjunktiv1Prasens(c)
        addPronounsKonjunktiv1Perfekt(c)
        addPronounsKonjunktiv1Futur1(c)
        addPronounsKonjunktiv1Futur2(c)
        
        addPronounsKonjunktiv2Prateritum(c)
        addPronounsKonjunktiv2Plusquamperfekt(c)
        addPronounsKonjunktiv2Futur1(c)
        addPronounsKonjunktiv2Futur2(c)
    }
    
    private func addPronounsIndikativPrasens(_ c : Conjugation) {
        if (!c.indikativPrasensIch.elementsEqual("-")) {
            c.indikativPrasensIch = Constants.ICH + c.indikativPrasensIch
        }
        if (!c.indikativPrasensDu.elementsEqual("-")) {
            c.indikativPrasensDu = Constants.DU + c.indikativPrasensDu
        }
        if (!c.indikativPrasensEr.elementsEqual("-")) {
            c.indikativPrasensEr = Constants.ER + c.indikativPrasensEr
        }
        if (!c.indikativPrasensWir.elementsEqual("-")) {
            c.indikativPrasensWir = Constants.WIR + c.indikativPrasensWir
        }
        if (!c.indikativPrasensIhr.elementsEqual("-")) {
            c.indikativPrasensIhr = Constants.IHR + c.indikativPrasensIhr
        }
        if (!c.indikativPrasensSie.elementsEqual("-")) {
            c.indikativPrasensSie = Constants.SIE + c.indikativPrasensSie
        }
    }
    
    private func addPronounsIndikativPrateritum(_ c : Conjugation) {
        if (!c.indikativPrateritumIch.elementsEqual("-")) {
            c.indikativPrateritumIch = Constants.ICH + c.indikativPrateritumIch
        }
        if (!c.indikativPrateritumDu.elementsEqual("-")) {
            c.indikativPrateritumDu = Constants.DU + c.indikativPrateritumDu
        }
        if (!c.indikativPrateritumEr.elementsEqual("-")) {
            c.indikativPrateritumEr = Constants.ER + c.indikativPrateritumEr
        }
        if (!c.indikativPrateritumWir.elementsEqual("-")) {
            c.indikativPrateritumWir = Constants.WIR + c.indikativPrateritumWir
        }
        if (!c.indikativPrateritumIhr.elementsEqual("-")) {
            c.indikativPrateritumIhr = Constants.IHR + c.indikativPrateritumIhr
        }
        if (!c.indikativPrateritumSie.elementsEqual("-")) {
            c.indikativPrateritumSie = Constants.SIE + c.indikativPrateritumSie
        }
    }
    
    private func addPronounsIndikativPerfekt(_ c : Conjugation) {
        if (!c.indikativPerfektIch.elementsEqual("-")) {
            c.indikativPerfektIch = Constants.ICH + c.indikativPerfektIch
        }
        if (!c.indikativPerfektDu.elementsEqual("-")) {
            c.indikativPerfektDu = Constants.DU + c.indikativPerfektDu
        }
        if (!c.indikativPerfektEr.elementsEqual("-")) {
            c.indikativPerfektEr = Constants.ER + c.indikativPerfektEr
        }
        if (!c.indikativPerfektWir.elementsEqual("-")) {
            c.indikativPerfektWir = Constants.WIR + c.indikativPerfektWir
        }
        if (!c.indikativPerfektIhr.elementsEqual("-")) {
            c.indikativPerfektIhr = Constants.IHR + c.indikativPerfektIhr
        }
        if (!c.indikativPerfektSie.elementsEqual("-")) {
            c.indikativPerfektSie = Constants.SIE + c.indikativPerfektSie
        }
    }
    
    private func addPronounsIndikativPlusquamperfekt(_ c : Conjugation) {
        if (!c.indikativPlusquamperfektIch.elementsEqual("-")) {
            c.indikativPlusquamperfektIch = Constants.ICH + c.indikativPlusquamperfektIch
        }
        if (!c.indikativPlusquamperfektDu.elementsEqual("-")) {
            c.indikativPlusquamperfektDu = Constants.DU + c.indikativPlusquamperfektDu
        }
        if (!c.indikativPlusquamperfektEr.elementsEqual("-")) {
            c.indikativPlusquamperfektEr = Constants.ER + c.indikativPlusquamperfektEr
        }
        if (!c.indikativPlusquamperfektWir.elementsEqual("-")) {
            c.indikativPlusquamperfektWir = Constants.WIR + c.indikativPlusquamperfektWir
        }
        if (!c.indikativPlusquamperfektIhr.elementsEqual("-")) {
            c.indikativPlusquamperfektIhr = Constants.IHR + c.indikativPlusquamperfektIhr
        }
        if (!c.indikativPlusquamperfektSie.elementsEqual("-")) {
            c.indikativPlusquamperfektSie = Constants.SIE + c.indikativPlusquamperfektSie
        }
    }
    
    private func addPronounsIndikativFutur1(_ c : Conjugation) {
        if (!c.indikativFutur1Ich.elementsEqual("-")) {
            c.indikativFutur1Ich = Constants.ICH + c.indikativFutur1Ich
        }
        if (!c.indikativFutur1Du.elementsEqual("-")) {
            c.indikativFutur1Du = Constants.DU + c.indikativFutur1Du
        }
        if (!c.indikativFutur1Er.elementsEqual("-")) {
            c.indikativFutur1Er = Constants.ER + c.indikativFutur1Er
        }
        if (!c.indikativFutur1Wir.elementsEqual("-")) {
            c.indikativFutur1Wir = Constants.WIR + c.indikativFutur1Wir
        }
        if (!c.indikativFutur1Ihr.elementsEqual("-")) {
            c.indikativFutur1Ihr = Constants.IHR + c.indikativFutur1Ihr
        }
        if (!c.indikativFutur1Sie.elementsEqual("-")) {
            c.indikativFutur1Sie = Constants.SIE + c.indikativFutur1Sie
        }
    }
    
    private func addPronounsIndikativFutur2(_ c : Conjugation) {
        if (!c.indikativFutur2Ich.elementsEqual("-")) {
            c.indikativFutur2Ich = Constants.ICH + c.indikativFutur2Ich
        }
        if (!c.indikativFutur2Du.elementsEqual("-")) {
            c.indikativFutur2Du = Constants.DU + c.indikativFutur2Du
        }
        if (!c.indikativFutur2Er.elementsEqual("-")) {
            c.indikativFutur2Er = Constants.ER + c.indikativFutur2Er
        }
        if (!c.indikativFutur2Wir.elementsEqual("-")) {
            c.indikativFutur2Wir = Constants.WIR + c.indikativFutur2Wir
        }
        if (!c.indikativFutur2Ihr.elementsEqual("-")) {
            c.indikativFutur2Ihr = Constants.IHR + c.indikativFutur2Ihr
        }
        if (!c.indikativFutur2Sie.elementsEqual("-")) {
            c.indikativFutur2Sie = Constants.SIE + c.indikativFutur2Sie
        }
    }
    
    private func addPronounsKonjunktiv1Prasens(_ c : Conjugation) {
        if (!c.konjunktiv1PrasensIch.elementsEqual("-")) {
            c.konjunktiv1PrasensIch = Constants.ICH + c.konjunktiv1PrasensIch
        }
        if (!c.konjunktiv1PrasensDu.elementsEqual("-")) {
            c.konjunktiv1PrasensDu = Constants.DU + c.konjunktiv1PrasensDu
        }
        if (!c.konjunktiv1PrasensEr.elementsEqual("-")) {
            c.konjunktiv1PrasensEr = Constants.ER + c.konjunktiv1PrasensEr
        }
        if (!c.konjunktiv1PrasensWir.elementsEqual("-")) {
            c.konjunktiv1PrasensWir = Constants.WIR + c.konjunktiv1PrasensWir
        }
        if (!c.konjunktiv1PrasensIhr.elementsEqual("-")) {
            c.konjunktiv1PrasensIhr = Constants.IHR + c.konjunktiv1PrasensIhr
        }
        if (!c.konjunktiv1PrasensSie.elementsEqual("-")) {
            c.konjunktiv1PrasensSie = Constants.SIE + c.konjunktiv1PrasensSie
        }
    }
    
    private func addPronounsKonjunktiv1Perfekt(_ c : Conjugation) {
        if (!c.konjunktiv1PerfektIch.elementsEqual("-")) {
            c.konjunktiv1PerfektIch = Constants.ICH + c.konjunktiv1PerfektIch
        }
        if (!c.konjunktiv1PerfektDu.elementsEqual("-")) {
            c.konjunktiv1PerfektDu = Constants.DU + c.konjunktiv1PerfektDu
        }
        if (!c.konjunktiv1PerfektEr.elementsEqual("-")) {
            c.konjunktiv1PerfektEr = Constants.ER + c.konjunktiv1PerfektEr
        }
        if (!c.konjunktiv1PerfektWir.elementsEqual("-")) {
            c.konjunktiv1PerfektWir = Constants.WIR + c.konjunktiv1PerfektWir
        }
        if (!c.konjunktiv1PerfektIhr.elementsEqual("-")) {
            c.konjunktiv1PerfektIhr = Constants.IHR + c.konjunktiv1PerfektIhr
        }
        if (!c.konjunktiv1PerfektSie.elementsEqual("-")) {
            c.konjunktiv1PerfektSie = Constants.SIE + c.konjunktiv1PerfektSie
        }
    }
    
    private func addPronounsKonjunktiv1Futur1(_ c : Conjugation) {
        if (!c.konjunktiv1Futur1Ich.elementsEqual("-")) {
            c.konjunktiv1Futur1Ich = Constants.ICH + c.konjunktiv1Futur1Ich
        }
        if (!c.konjunktiv1Futur1Du.elementsEqual("-")) {
            c.konjunktiv1Futur1Du = Constants.DU + c.konjunktiv1Futur1Du
        }
        if (!c.konjunktiv1Futur1Er.elementsEqual("-")) {
            c.konjunktiv1Futur1Er = Constants.ER + c.konjunktiv1Futur1Er
        }
        if (!c.konjunktiv1Futur1Wir.elementsEqual("-")) {
            c.konjunktiv1Futur1Wir = Constants.WIR + c.konjunktiv1Futur1Wir
        }
        if (!c.konjunktiv1Futur1Ihr.elementsEqual("-")) {
            c.konjunktiv1Futur1Ihr = Constants.IHR + c.konjunktiv1Futur1Ihr
        }
        if (!c.konjunktiv1Futur1Sie.elementsEqual("-")) {
            c.konjunktiv1Futur1Sie = Constants.SIE + c.konjunktiv1Futur1Sie
        }
    }
    
    private func addPronounsKonjunktiv1Futur2(_ c : Conjugation) {
        if (!c.konjunktiv1Futur2Ich.elementsEqual("-")) {
            c.konjunktiv1Futur2Ich = Constants.ICH + c.konjunktiv1Futur2Ich
        }
        if (!c.konjunktiv1Futur2Du.elementsEqual("-")) {
            c.konjunktiv1Futur2Du = Constants.DU + c.konjunktiv1Futur2Du
        }
        if (!c.konjunktiv1Futur2Er.elementsEqual("-")) {
            c.konjunktiv1Futur2Er = Constants.ER + c.konjunktiv1Futur2Er
        }
        if (!c.konjunktiv1Futur2Wir.elementsEqual("-")) {
            c.konjunktiv1Futur2Wir = Constants.WIR + c.konjunktiv1Futur2Wir
        }
        if (!c.konjunktiv1Futur2Ihr.elementsEqual("-")) {
            c.konjunktiv1Futur2Ihr = Constants.IHR + c.konjunktiv1Futur2Ihr
        }
        if (!c.konjunktiv1Futur2Sie.elementsEqual("-")) {
            c.konjunktiv1Futur2Sie = Constants.SIE + c.konjunktiv1Futur2Sie
        }
    }
    
    private func addPronounsKonjunktiv2Prateritum(_ c : Conjugation) {
        if (!c.konjunktiv2PrateritumIch.elementsEqual("-")) {
            c.konjunktiv2PrateritumIch = Constants.ICH + c.konjunktiv2PrateritumIch
        }
        if (!c.konjunktiv2PrateritumDu.elementsEqual("-")) {
            c.konjunktiv2PrateritumDu = Constants.DU + c.konjunktiv2PrateritumDu
        }
        if (!c.konjunktiv2PrateritumEr.elementsEqual("-")) {
            c.konjunktiv2PrateritumEr = Constants.ER + c.konjunktiv2PrateritumEr
        }
        if (!c.konjunktiv2PrateritumWir.elementsEqual("-")) {
            c.konjunktiv2PrateritumWir = Constants.WIR + c.konjunktiv2PrateritumWir
        }
        if (!c.konjunktiv2PrateritumIhr.elementsEqual("-")) {
            c.konjunktiv2PrateritumIhr = Constants.IHR + c.konjunktiv2PrateritumIhr
        }
        if (!c.konjunktiv2PrateritumSie.elementsEqual("-")) {
            c.konjunktiv2PrateritumSie = Constants.SIE + c.konjunktiv2PrateritumSie
        }
    }
    
    private func addPronounsKonjunktiv2Plusquamperfekt(_ c : Conjugation) {
        if (!c.konjunktiv2PlusquamperfektIch.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektIch = Constants.ICH + c.konjunktiv2PlusquamperfektIch
        }
        if (!c.konjunktiv2PlusquamperfektDu.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektDu = Constants.DU + c.konjunktiv2PlusquamperfektDu
        }
        if (!c.konjunktiv2PlusquamperfektEr.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektEr = Constants.ER + c.konjunktiv2PlusquamperfektEr
        }
        if (!c.konjunktiv2PlusquamperfektWir.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektWir = Constants.WIR + c.konjunktiv2PlusquamperfektWir
        }
        if (!c.konjunktiv2PlusquamperfektIhr.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektIhr = Constants.IHR + c.konjunktiv2PlusquamperfektIhr
        }
        if (!c.konjunktiv2PlusquamperfektSie.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektSie = Constants.SIE + c.konjunktiv2PlusquamperfektSie
        }
    }
    
    private func addPronounsKonjunktiv2Futur1(_ c : Conjugation) {
        if (!c.konjunktiv2Futur1Ich.elementsEqual("-")) {
            c.konjunktiv2Futur1Ich = Constants.ICH + c.konjunktiv2Futur1Ich
        }
        if (!c.konjunktiv2Futur1Du.elementsEqual("-")) {
            c.konjunktiv2Futur1Du = Constants.DU + c.konjunktiv2Futur1Du
        }
        if (!c.konjunktiv2Futur1Er.elementsEqual("-")) {
            c.konjunktiv2Futur1Er = Constants.ER + c.konjunktiv2Futur1Er
        }
        if (!c.konjunktiv2Futur1Wir.elementsEqual("-")) {
            c.konjunktiv2Futur1Wir = Constants.WIR + c.konjunktiv2Futur1Wir
        }
        if (!c.konjunktiv2Futur1Ihr.elementsEqual("-")) {
            c.konjunktiv2Futur1Ihr = Constants.IHR + c.konjunktiv2Futur1Ihr
        }
        if (!c.konjunktiv2Futur1Sie.elementsEqual("-")) {
            c.konjunktiv2Futur1Sie = Constants.SIE + c.konjunktiv2Futur1Sie
        }
    }
    
    private func addPronounsKonjunktiv2Futur2(_ c : Conjugation) {
        if (!c.konjunktiv2Futur2Ich.elementsEqual("-")) {
            c.konjunktiv2Futur2Ich = Constants.ICH + c.konjunktiv2Futur2Ich
        }
        if (!c.konjunktiv2Futur2Du.elementsEqual("-")) {
            c.konjunktiv2Futur2Du = Constants.DU + c.konjunktiv2Futur2Du
        }
        if (!c.konjunktiv2Futur2Er.elementsEqual("-")) {
            c.konjunktiv2Futur2Er = Constants.ER + c.konjunktiv2Futur2Er
        }
        if (!c.konjunktiv2Futur2Wir.elementsEqual("-")) {
            c.konjunktiv2Futur2Wir = Constants.WIR + c.konjunktiv2Futur2Wir
        }
        if (!c.konjunktiv2Futur2Ihr.elementsEqual("-")) {
            c.konjunktiv2Futur2Ihr = Constants.IHR + c.konjunktiv2Futur2Ihr
        }
        if (!c.konjunktiv2Futur2Sie.elementsEqual("-")) {
            c.konjunktiv2Futur2Sie = Constants.SIE + c.konjunktiv2Futur2Sie
        }
    }
    
    private func fillConjugationDetails(_ c : Conjugation) {
        infinitivPrasens.setTitle(c.infinitivPrasens, for: .normal)
        infinitivPerfekt.setTitle(c.infinitivPerfekt, for: .normal)
        partizipPrasens.setTitle(c.partizipPrasens, for: .normal)
        partizipPerfekt.setTitle(c.partizipPerfekt, for: .normal)
        
        imperativDu.setTitle(c.imperativDu, for: .normal)
        imperativIhr.setTitle(c.imperativIhr, for: .normal)
        imperativSie.setTitle(c.imperativSie, for: .normal)
        
        indikativPrasensIch.setTitle(c.indikativPrasensIch, for: .normal)
        indikativPrasensDu.setTitle(c.indikativPrasensDu, for: .normal)
        indikativPrasensEr.setTitle(c.indikativPrasensEr, for: .normal)
        indikativPrasensWir.setTitle(c.indikativPrasensWir, for: .normal)
        indikativPrasensIhr.setTitle(c.indikativPrasensIhr, for: .normal)
        indikativPrasensSie.setTitle(c.indikativPrasensSie, for: .normal)
        
        indikativPrateritumIch.setTitle(c.indikativPrateritumIch, for: .normal)
        indikativPrateritumDu.setTitle(c.indikativPrateritumDu, for: .normal)
        indikativPrateritumEr.setTitle(c.indikativPrateritumEr, for: .normal)
        indikativPrateritumWir.setTitle(c.indikativPrateritumWir, for: .normal)
        indikativPrateritumIhr.setTitle(c.indikativPrateritumIhr, for: .normal)
        indikativPrateritumSie.setTitle(c.indikativPrateritumSie, for: .normal)
        
        indikativPerfektIch.setTitle(c.indikativPerfektIch, for: .normal)
        indikativPerfektDu.setTitle(c.indikativPerfektDu, for: .normal)
        indikativPerfektEr.setTitle(c.indikativPerfektEr, for: .normal)
        indikativPerfektWir.setTitle(c.indikativPerfektWir, for: .normal)
        indikativPerfektIhr.setTitle(c.indikativPerfektIhr, for: .normal)
        indikativPerfektSie.setTitle(c.indikativPerfektSie, for: .normal)
        
        indikativPlusquamperfektIch.setTitle(c.indikativPlusquamperfektIch, for: .normal)
        indikativPlusquamperfektDu.setTitle(c.indikativPlusquamperfektDu, for: .normal)
        indikativPlusquamperfektEr.setTitle(c.indikativPlusquamperfektEr, for: .normal)
        indikativPlusquamperfektWir.setTitle(c.indikativPlusquamperfektWir, for: .normal)
        indikativPlusquamperfektIhr.setTitle(c.indikativPlusquamperfektIhr, for: .normal)
        indikativPlusquamperfektSie.setTitle(c.indikativPlusquamperfektSie, for: .normal)
        
        indikativFutur1Ich.setTitle(c.indikativFutur1Ich, for: .normal)
        indikativFutur1Du.setTitle(c.indikativFutur1Du, for: .normal)
        indikativFutur1Er.setTitle(c.indikativFutur1Er, for: .normal)
        indikativFutur1Wir.setTitle(c.indikativFutur1Wir, for: .normal)
        indikativFutur1Ihr.setTitle(c.indikativFutur1Ihr, for: .normal)
        indikativFutur1Sie.setTitle(c.indikativFutur1Sie, for: .normal)
        
        indikativFutur2Ich.setTitle(c.indikativFutur2Ich, for: .normal)
        indikativFutur2Du.setTitle(c.indikativFutur2Du, for: .normal)
        indikativFutur2Er.setTitle(c.indikativFutur2Er, for: .normal)
        indikativFutur2Wir.setTitle(c.indikativFutur2Wir, for: .normal)
        indikativFutur2Ihr.setTitle(c.indikativFutur2Ihr, for: .normal)
        indikativFutur2Sie.setTitle(c.indikativFutur2Sie, for: .normal)
        
        konjunktiv1PrasensIch.setTitle(c.konjunktiv1PrasensIch, for: .normal)
        konjunktiv1PrasensDu.setTitle(c.konjunktiv1PrasensDu, for: .normal)
        konjunktiv1PrasensEr.setTitle(c.konjunktiv1PrasensEr, for: .normal)
        konjunktiv1PrasensWir.setTitle(c.konjunktiv1PrasensWir, for: .normal)
        konjunktiv1PrasensIhr.setTitle(c.konjunktiv1PrasensIhr, for: .normal)
        konjunktiv1PrasensSie.setTitle(c.konjunktiv1PrasensSie, for: .normal)
        
        konjunktiv1PerfektIch.setTitle(c.konjunktiv1PerfektIch, for: .normal)
        konjunktiv1PerfektDu.setTitle(c.konjunktiv1PerfektDu, for: .normal)
        konjunktiv1PerfektEr.setTitle(c.konjunktiv1PerfektEr, for: .normal)
        konjunktiv1PerfektWir.setTitle(c.konjunktiv1PerfektWir, for: .normal)
        konjunktiv1PerfektIhr.setTitle(c.konjunktiv1PerfektIhr, for: .normal)
        konjunktiv1PerfektSie.setTitle(c.konjunktiv1PerfektSie, for: .normal)
        
        konjunktiv1Futur1Ich.setTitle(c.konjunktiv1Futur1Ich, for: .normal)
        konjunktiv1Futur1Du.setTitle(c.konjunktiv1Futur1Du, for: .normal)
        konjunktiv1Futur1Er.setTitle(c.konjunktiv1Futur1Er, for: .normal)
        konjunktiv1Futur1Wir.setTitle(c.konjunktiv1Futur1Wir, for: .normal)
        konjunktiv1Futur1Ihr.setTitle(c.konjunktiv1Futur1Ihr, for: .normal)
        konjunktiv1Futur1Sie.setTitle(c.konjunktiv1Futur1Sie, for: .normal)
        
        konjunktiv1Futur2Ich.setTitle(c.konjunktiv1Futur2Ich, for: .normal)
        konjunktiv1Futur2Du.setTitle(c.konjunktiv1Futur2Du, for: .normal)
        konjunktiv1Futur2Er.setTitle(c.konjunktiv1Futur2Er, for: .normal)
        konjunktiv1Futur2Wir.setTitle(c.konjunktiv1Futur2Wir, for: .normal)
        konjunktiv1Futur2Ihr.setTitle(c.konjunktiv1Futur2Ihr, for: .normal)
        konjunktiv1Futur2Sie.setTitle(c.konjunktiv1Futur2Sie, for: .normal)
        
        konjunktiv2PrateritumIch.setTitle(c.konjunktiv2PrateritumIch, for: .normal)
        konjunktiv2PrateritumDu.setTitle(c.konjunktiv2PrateritumDu, for: .normal)
        konjunktiv2PrateritumEr.setTitle(c.konjunktiv2PrateritumEr, for: .normal)
        konjunktiv2PrateritumWir.setTitle(c.konjunktiv2PrateritumWir, for: .normal)
        konjunktiv2PrateritumIhr.setTitle(c.konjunktiv2PrateritumIhr, for: .normal)
        konjunktiv2PrateritumSie.setTitle(c.konjunktiv2PrateritumSie, for: .normal)
        
        konjunktiv2PlusquamperfektIch.setTitle(c.konjunktiv2PlusquamperfektIch, for: .normal)
        konjunktiv2PlusquamperfektDu.setTitle(c.konjunktiv2PlusquamperfektDu, for: .normal)
        konjunktiv2PlusquamperfektEr.setTitle(c.konjunktiv2PlusquamperfektEr, for: .normal)
        konjunktiv2PlusquamperfektWir.setTitle(c.konjunktiv2PlusquamperfektWir, for: .normal)
        konjunktiv2PlusquamperfektIhr.setTitle(c.konjunktiv2PlusquamperfektIhr, for: .normal)
        konjunktiv2PlusquamperfektSie.setTitle(c.konjunktiv2PlusquamperfektSie, for: .normal)
        
        konjunktiv2Futur1Ich.setTitle(c.konjunktiv2Futur1Ich, for: .normal)
        konjunktiv2Futur1Du.setTitle(c.konjunktiv2Futur1Du, for: .normal)
        konjunktiv2Futur1Er.setTitle(c.konjunktiv2Futur1Er, for: .normal)
        konjunktiv2Futur1Wir.setTitle(c.konjunktiv2Futur1Wir, for: .normal)
        konjunktiv2Futur1Ihr.setTitle(c.konjunktiv2Futur1Ihr, for: .normal)
        konjunktiv2Futur1Sie.setTitle(c.konjunktiv2Futur1Sie, for: .normal)
        
        konjunktiv2Futur2Ich.setTitle(c.konjunktiv2Futur2Ich, for: .normal)
        konjunktiv2Futur2Du.setTitle(c.konjunktiv2Futur2Du, for: .normal)
        konjunktiv2Futur2Er.setTitle(c.konjunktiv2Futur2Er, for: .normal)
        konjunktiv2Futur2Wir.setTitle(c.konjunktiv2Futur2Wir, for: .normal)
        konjunktiv2Futur2Ihr.setTitle(c.konjunktiv2Futur2Ihr, for: .normal)
        konjunktiv2Futur2Sie.setTitle(c.konjunktiv2Futur2Sie, for: .normal)
    }
    
    private func setAdjustsFontForContentSizeCategory() {
        infinitive.titleLabel?.adjustsFontForContentSizeCategory = true
        definition.titleLabel?.adjustsFontForContentSizeCategory = true
        sample1.titleLabel?.adjustsFontForContentSizeCategory = true
        sample2.titleLabel?.adjustsFontForContentSizeCategory = true
        sample3.titleLabel?.adjustsFontForContentSizeCategory = true
        
        infinitivPrasens.titleLabel?.adjustsFontForContentSizeCategory = true
        infinitivPerfekt.titleLabel?.adjustsFontForContentSizeCategory = true
        partizipPrasens.titleLabel?.adjustsFontForContentSizeCategory = true
        partizipPerfekt.titleLabel?.adjustsFontForContentSizeCategory = true

        imperativDu.titleLabel?.adjustsFontForContentSizeCategory = true
        imperativIhr.titleLabel?.adjustsFontForContentSizeCategory = true
        imperativSie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indikativPrasensIch.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPrasensDu.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPrasensEr.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPrasensWir.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPrasensIhr.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPrasensSie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indikativPrateritumIch.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPrateritumDu.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPrateritumEr.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPrateritumWir.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPrateritumIhr.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPrateritumSie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indikativPerfektIch.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPerfektDu.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPerfektEr.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPerfektWir.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPerfektIhr.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPerfektSie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indikativPlusquamperfektIch.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPlusquamperfektDu.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPlusquamperfektEr.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPlusquamperfektWir.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPlusquamperfektIhr.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativPlusquamperfektSie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indikativFutur1Ich.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativFutur1Du.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativFutur1Er.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativFutur1Wir.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativFutur1Ihr.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativFutur1Sie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indikativFutur2Ich.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativFutur2Du.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativFutur2Er.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativFutur2Wir.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativFutur2Ihr.titleLabel?.adjustsFontForContentSizeCategory = true
        indikativFutur2Sie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        konjunktiv1PrasensIch.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1PrasensDu.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1PrasensEr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1PrasensWir.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1PrasensIhr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1PrasensSie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        konjunktiv1PerfektIch.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1PerfektDu.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1PerfektEr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1PerfektWir.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1PerfektIhr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1PerfektSie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        konjunktiv1Futur1Ich.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1Futur1Du.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1Futur1Er.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1Futur1Wir.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1Futur1Ihr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1Futur1Sie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        konjunktiv1Futur2Ich.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1Futur2Du.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1Futur2Er.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1Futur2Wir.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1Futur2Ihr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv1Futur2Sie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        konjunktiv2PrateritumIch.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2PrateritumDu.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2PrateritumEr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2PrateritumWir.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2PrateritumIhr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2PrateritumSie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        konjunktiv2PlusquamperfektIch.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2PlusquamperfektDu.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2PlusquamperfektEr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2PlusquamperfektWir.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2PlusquamperfektIhr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2PlusquamperfektSie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        konjunktiv2Futur1Ich.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2Futur1Du.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2Futur1Er.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2Futur1Wir.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2Futur1Ihr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2Futur1Sie.titleLabel?.adjustsFontForContentSizeCategory = true
        
        konjunktiv2Futur2Ich.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2Futur2Du.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2Futur2Er.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2Futur2Wir.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2Futur2Ihr.titleLabel?.adjustsFontForContentSizeCategory = true
        konjunktiv2Futur2Sie.titleLabel?.adjustsFontForContentSizeCategory = true
    }
    
    
    // MARK: Speak button
    @IBAction func speakButton(_ sender: UIButton) {
        
        switch (sender) {
        case infinitive, definition, sample1, sample2, sample3,
             infinitivPrasens, infinitivPerfekt,
             partizipPrasens, partizipPerfekt,
             imperativDu, imperativIhr, imperativSie,
             
             indikativPrasensIch, indikativPrasensDu, indikativPrasensEr,
             indikativPrasensWir, indikativPrasensIhr, indikativPrasensSie,
             indikativPrateritumIch, indikativPrateritumDu, indikativPrateritumEr,
             indikativPrateritumWir, indikativPrateritumIhr, indikativPrateritumSie,
             indikativPerfektIch, indikativPerfektDu, indikativPerfektEr,
             indikativPerfektWir, indikativPerfektIhr, indikativPerfektSie,
             indikativPlusquamperfektIch, indikativPlusquamperfektDu, indikativPlusquamperfektEr,
             indikativPlusquamperfektWir, indikativPlusquamperfektIhr, indikativPlusquamperfektSie,
             indikativFutur1Ich, indikativFutur1Du, indikativFutur1Er,
             indikativFutur1Wir, indikativFutur1Ihr, indikativFutur1Sie,
             indikativFutur2Ich, indikativFutur2Du, indikativFutur2Er,
             indikativFutur2Wir, indikativFutur2Ihr, indikativFutur2Sie,
             
             konjunktiv1PrasensIch, konjunktiv1PrasensDu, konjunktiv1PrasensEr,
             konjunktiv1PrasensWir, konjunktiv1PrasensIhr, konjunktiv1PrasensSie,
             konjunktiv1PerfektIch, konjunktiv1PerfektDu, konjunktiv1PerfektEr,
             konjunktiv1PerfektWir, konjunktiv1PerfektIhr, konjunktiv1PerfektSie,
             konjunktiv1Futur1Ich, konjunktiv1Futur1Du, konjunktiv1Futur1Er,
             konjunktiv1Futur1Wir, konjunktiv1Futur1Ihr, konjunktiv1Futur1Sie,
             konjunktiv1Futur2Ich, konjunktiv1Futur2Du, konjunktiv1Futur2Er,
             konjunktiv1Futur2Wir, konjunktiv1Futur2Ihr, konjunktiv1Futur2Sie,
             
             konjunktiv2PrateritumIch, konjunktiv2PrateritumDu, konjunktiv2PrateritumEr,
             konjunktiv2PrateritumWir, konjunktiv2PrateritumIhr, konjunktiv2PrateritumSie,
             konjunktiv2PlusquamperfektIch, konjunktiv2PlusquamperfektDu, konjunktiv2PlusquamperfektEr,
             konjunktiv2PlusquamperfektWir, konjunktiv2PlusquamperfektIhr, konjunktiv2PlusquamperfektSie,
             konjunktiv2Futur1Ich, konjunktiv2Futur1Du, konjunktiv2Futur1Er,
             konjunktiv2Futur1Wir, konjunktiv2Futur1Ihr, konjunktiv2Futur1Sie,
             konjunktiv2Futur2Ich, konjunktiv2Futur2Du, konjunktiv2Futur2Er,
             konjunktiv2Futur2Wir, konjunktiv2Futur2Ihr, konjunktiv2Futur2Sie:
            
            let text : String = sender.title(for: .normal)!
            speaker.speak(text)
            
        default:
            break
        }
    }
    
    // MARK: - Share action
    @IBAction func share(_ sender: Any) {
        let string : String = createShareText()
        let activityVC = UIActivityViewController(activityItems: [string], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
    
    private func getVerbTypeString() -> String {
        switch (verb.type) {
            case 1: return "schwaches"
            case 2: return "starkes"
            case 3: return "unregelmäßiges"
            default: return "schwaches"
        }
    }
    
    /**
     * Create the text to share.
     */
    private func createShareText() -> String {
        let text : String = "Verbe: \(verb.infinitive)"
            + "\n\nInfinitiv Präsens: \(conjugation.infinitivPrasens)"
            + "\nInfinitiv Perfekt: \(conjugation.infinitivPerfekt)"
            + "\nPartizip Präsens: \(conjugation.partizipPrasens)"
            + "\nPartizip Perfekt: \(conjugation.partizipPerfekt)"
            + "\n\nTyp: " + getVerbTypeString()
            + "\n\nDéfinition:\n\(verb.definition)"
            + "\n\nBeispiele:"
            + "\n 1. \(verb.sample1)"
            + "\n 2. \(verb.sample2)"
            + "\n 3. \(verb.sample3)"
            + "\n\nImperativ:"
            + "\n" + conjugation.imperativDu
            + "\n" + conjugation.imperativIhr
            + "\n" + conjugation.imperativSie
            + "\n\nIndikativ Präsens:"
            + "\n" + conjugation.indikativPrasensIch
            + "\n" + conjugation.indikativPrasensDu
            + "\n" + conjugation.indikativPrasensEr
            + "\n" + conjugation.indikativPrasensWir
            + "\n" + conjugation.indikativPrasensIhr
            + "\n" + conjugation.indikativPrasensSie
            + "\n\nIndikativ Präteritum:"
            + "\n" + conjugation.indikativPrateritumIch
            + "\n" + conjugation.indikativPrateritumDu
            + "\n" + conjugation.indikativPrateritumEr
            + "\n" + conjugation.indikativPrateritumWir
            + "\n" + conjugation.indikativPrateritumIhr
            + "\n" + conjugation.indikativPrateritumSie
            + "\n\nIndikativ Perfekt:"
            + "\n" + conjugation.indikativPerfektIch
            + "\n" + conjugation.indikativPerfektDu
            + "\n" + conjugation.indikativPerfektEr
            + "\n" + conjugation.indikativPerfektWir
            + "\n" + conjugation.indikativPerfektIhr
            + "\n" + conjugation.indikativPerfektSie
            + "\n\nIndikativ Plusquamperfekt:"
            + "\n" + conjugation.indikativPlusquamperfektIch
            + "\n" + conjugation.indikativPlusquamperfektDu
            + "\n" + conjugation.indikativPlusquamperfektEr
            + "\n" + conjugation.indikativPlusquamperfektWir
            + "\n" + conjugation.indikativPlusquamperfektIhr
            + "\n" + conjugation.indikativPlusquamperfektSie
            + "\n\nIndikativ Futur I:"
            + "\n" + conjugation.indikativFutur1Ich
            + "\n" + conjugation.indikativFutur1Du
            + "\n" + conjugation.indikativFutur1Er
            + "\n" + conjugation.indikativFutur1Wir
            + "\n" + conjugation.indikativFutur1Ihr
            + "\n" + conjugation.indikativFutur1Sie
            + "\n\nIndikativ Futur II:"
            + "\n" + conjugation.indikativFutur2Ich
            + "\n" + conjugation.indikativFutur2Du
            + "\n" + conjugation.indikativFutur2Er
            + "\n" + conjugation.indikativFutur2Wir
            + "\n" + conjugation.indikativFutur2Ihr
            + "\n" + conjugation.indikativFutur2Sie
            + "\n\nKonjunktiv I Präsens:"
            + "\n" + conjugation.konjunktiv1PrasensIch
            + "\n" + conjugation.konjunktiv1PrasensDu
            + "\n" + conjugation.konjunktiv1PrasensEr
            + "\n" + conjugation.konjunktiv1PrasensWir
            + "\n" + conjugation.konjunktiv1PrasensIhr
            + "\n" + conjugation.konjunktiv1PrasensSie
            + "\n\nKonjunktiv I Perfekt:"
            + "\n" + conjugation.konjunktiv1PerfektIch
            + "\n" + conjugation.konjunktiv1PerfektDu
            + "\n" + conjugation.konjunktiv1PerfektEr
            + "\n" + conjugation.konjunktiv1PerfektWir
            + "\n" + conjugation.konjunktiv1PerfektIhr
            + "\n" + conjugation.konjunktiv1PerfektSie
            + "\n\nKonjunktiv I Futur I:"
            + "\n" + conjugation.konjunktiv1Futur1Ich
            + "\n" + conjugation.konjunktiv1Futur1Du
            + "\n" + conjugation.konjunktiv1Futur1Er
            + "\n" + conjugation.konjunktiv1Futur1Wir
            + "\n" + conjugation.konjunktiv1Futur1Ihr
            + "\n" + conjugation.konjunktiv1Futur1Sie
            + "\n\nKonjunktiv I Futur II:"
            + "\n" + conjugation.konjunktiv1Futur2Ich
            + "\n" + conjugation.konjunktiv1Futur2Du
            + "\n" + conjugation.konjunktiv1Futur2Er
            + "\n" + conjugation.konjunktiv1Futur2Wir
            + "\n" + conjugation.konjunktiv1Futur2Ihr
            + "\n" + conjugation.konjunktiv1Futur2Sie
            + "\n\nKonjunktiv II Präteritum:"
            + "\n" + conjugation.konjunktiv2PrateritumIch
            + "\n" + conjugation.konjunktiv2PrateritumDu
            + "\n" + conjugation.konjunktiv2PrateritumEr
            + "\n" + conjugation.konjunktiv2PrateritumWir
            + "\n" + conjugation.konjunktiv2PrateritumIhr
            + "\n" + conjugation.konjunktiv2PrateritumSie
            + "\n\nKonjunktiv II Plusquamperfekt:"
            + "\n" + conjugation.konjunktiv2PlusquamperfektIch
            + "\n" + conjugation.konjunktiv2PlusquamperfektDu
            + "\n" + conjugation.konjunktiv2PlusquamperfektEr
            + "\n" + conjugation.konjunktiv2PlusquamperfektWir
            + "\n" + conjugation.konjunktiv2PlusquamperfektIhr
            + "\n" + conjugation.konjunktiv2PlusquamperfektSie
            + "\n\nKonjunktiv II Futur I:"
            + "\n" + conjugation.konjunktiv2Futur1Ich
            + "\n" + conjugation.konjunktiv2Futur1Du
            + "\n" + conjugation.konjunktiv2Futur1Er
            + "\n" + conjugation.konjunktiv2Futur1Wir
            + "\n" + conjugation.konjunktiv2Futur1Ihr
            + "\n" + conjugation.konjunktiv2Futur1Sie
            + "\n\nKonjunktiv II Futur II:"
            + "\n" + conjugation.konjunktiv2Futur2Ich
            + "\n" + conjugation.konjunktiv2Futur2Du
            + "\n" + conjugation.konjunktiv2Futur2Er
            + "\n" + conjugation.konjunktiv2Futur2Wir
            + "\n" + conjugation.konjunktiv2Futur2Ihr
            + "\n" + conjugation.konjunktiv2Futur2Sie
        return text
    }
}

// MARK: - VerbDetailsViewController (AdMob banner)
/*
extension VerbDetailsViewController: GADBannerViewDelegate {
    
    // Detect when the device changed orientation.
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if banner != nil && banner.isDescendant(of: stack) {
            stack.removeArrangedSubview(banner)
            banner.isHidden = true // fix old banner remain drawn when switching from horizontal to vertical
        }
        banner = ViewUtils.createAdMobBanner(self, self, adUnitID)
    }
    
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        if !banner.isDescendant(of: stack) {
            // Add the banner to the stack when an ad is received
            stack.addArrangedSubview(banner)
        }
    }
}*/
