//
//  VerbDetailsViewController.swift
//  DeutscheVerbeniOS
//
//  Created by xengar on 2018-08-09.
//  Copyright © 2018 xengar. All rights reserved.
//

import UIKit
//import GoogleMobileAds

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
    
    
    // MARK: - Verb Conjugations
    
    private func processConjugation(_ verb : Verb, _ c : Conjugation) {
        var isOnlyInfinitive = false
        var isOnlyIlIls = false
        var isOnlyIlIlsIndicatif = false
        var isRestrictedLikeFrire = false
        var isImpersonnel = false
        
        if (!c.infinitivPrasens.isEmpty
            && !c.infinitivPrasens.elementsEqual(verb.infinitive)) {
            // if we need, conjugate the verb model.
            
            var isEtre = false
            var isAvoir = false
            var isPronominal = false
            var isParticipePasseInvariable = false
            
            if (!verb.notes.isEmpty) {
                let aux : String = verb.notes.replacingOccurrences(of: ", ", with: ",")
                let arrayNotes = aux.split(separator: ",")
                for note in arrayNotes {
                    if (note.elementsEqual("être ou avoir")) {
                        isAvoir = true     // uses both auxiliars
                        isEtre = true
                    } else if (note.elementsEqual("avoir")) {
                        isAvoir = true     // uses auxiliar avoir
                    } else if (note.elementsEqual("être")) {
                        isEtre = true      // uses auxiliar être
                    } else if (note.elementsEqual("P")) {
                        isPronominal = true
                    } else if (note.elementsEqual("I") || note.elementsEqual("Ti")) {
                        isParticipePasseInvariable = true // do not add accords in pronominals
                    } else if (note.elementsEqual("seulement a l'infinitif")) {
                        isOnlyInfinitive = true
                    } else if (note.elementsEqual("seulement a l'inf. au part. présent et aux 3es pers.")
                        || note.elementsEqual("seulement a l'inf. et a la 3e personne")) {
                        isOnlyIlIls = true
                    } else if (note.elementsEqual("seulement aux 3es pers. de l'indicatif")) {
                        isOnlyIlIlsIndicatif = true
                    } else if (note.elementsEqual("seulement a l'inf. au part. passé au singulier de l'ind. présent et futur du cond. de l'impératif et aux temps composés")) {
                        isRestrictedLikeFrire = true
                    } else if (note.elementsEqual("imp.")) {
                        isImpersonnel = true
                    }
                }
            }
            // all pronominals conjugate with auxiliar être
            if (isPronominal) { isEtre = true }
            
            conjugateVerb(c, verb.infinitive, isPronominal)
            // check if the verb uses other auxiliar verb and replace it. Like partir, mourir, s'ecrier
            //reviewAuxiliar(c, isEtre, isAvoir)
            if (isPronominal) {
                addReflexive(c, isParticipePasseInvariable)
            }
            if (isParticipePasseInvariable) {
                setParticipePasseAsInvariable(c)
            }
            // TODO: Optional - Add accord de participe with persons. Like disparaître
        }
        addPronoms(c)
        
        if (isOnlyInfinitive) {
            ignoreConjugations(c)
        } else if (isOnlyIlIls) {
            // Seulement a la 3e personne du singulier et du pluriel. Like advenir, s'ensuivre
            ignoreAllPersonsExceptIlAndIls(c)
        } else if (isOnlyIlIlsIndicatif) {
            ignoreAllPersonsExceptIlAndIlsIndicatif(c)
        } else if (isImpersonnel) {
            ignoreAllPersonsExceptIl(c)
        } else if (isRestrictedLikeFrire) {
            ignoreIndicatifPresentNousVousIls(c)
            ignoreIndicatifImperfait(c)
            ignoreIndicatifPasseSimple(c)
            ignoreSubjonctifPresent(c)
            ignoreSubjonctifImperfait(c)
            ignoreImperatifNousVous(c)
        }
    }
    
    /**
     * Conjugates the verb according to the model.
     */
    private func conjugateVerb(_ c : Conjugation, _ verbInfinitive : String, _ isPronominal : Bool) {
        // Generate verb radicals for each time and person based on the radical's model.
        var modelRadicals = [String]()
        var verbRadicals = [String]()
        let modelRs : String = c.radicals.replacingOccurrences(of: ", ", with: ",")
        if (!modelRs.isEmpty) {
            let arrayModelRs = modelRs.split(separator: ",")
            for modelR in arrayModelRs {
                modelRadicals.append(String(modelR))
                let verbR : String = generateRadical(verbInfinitive, String(modelR), c.id, isPronominal)
                verbRadicals.append(verbR)
            }
            replaceRadicals(c, modelRadicals, verbRadicals, verbInfinitive)
        }
        
        // Exceptions to the conjugation model
        //replaceAccents(c, verbInfinitive)
        replaceConjugationModel(c, verbInfinitive)
        replaceParticipePasse(c, verbInfinitive)
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
    
    /**
     * Known Exceptions for the participe passe in conjugation model.
     */
    private func replaceParticipePasse(_ c : Conjugation, _ verbInfinitive : String) {
        
        var old = ""
        var new = ""
        
        switch (c.id) {
        case 20: // finir
            if (verbInfinitive.contains("maudire")) {
                old = "maudi"
                new = "maudit"
                c.partizipPerfekt = "maudit (e)"
            }
        case 46: // mouvoir
            if (verbInfinitive.contains("promouvoir")) {
                old = "promû"
                new = "promu"
                c.partizipPerfekt = "promu (u, ue, us, ues)"
            } else if (verbInfinitive.contains("émouvoir")) {
                old = "émû"
                new = "ému"
                c.partizipPerfekt = "ému (u, ue, us, ues)"
            }
        case 77: // conclure
            if (verbInfinitive.contains("inclure")) {
                old = "inclu"
                new = "inclus"
                c.partizipPerfekt = "inclus (e, es)"
            } else if (verbInfinitive.contains("occlure")) {
                old = "occlu"
                new = "occlus"
                c.partizipPerfekt = "occlus (e, es)"
            }
        case 78: // absoudre
            if (verbInfinitive.contains("résoudre")) {
                old = "résous"
                new = "résolu"
                c.partizipPerfekt = "résolu (u, ue, us, ues)"
            }
        case 87: // confire
            if (verbInfinitive.contains("circoncire")) {
                old = "circoncit"
                new = "circoncis"
                c.partizipPerfekt = "circoncis"
            } else if (verbInfinitive.contains("suffire")) {
                old = "suffit"
                new = "suffi"
                c.partizipPerfekt = "suffi"
            }
        default:
            break
        }
        
        if (!old.isEmpty && !new.isEmpty) {
            replaceParticipePasse(c, old, new)
        }
    }
    
    private func replaceParticipePasse(_ c : Conjugation, _ old : String, _ new : String) {
        c.infinitivPerfekt = c.infinitivPerfekt.replacingOccurrences(of: old, with: new)
        
        c.indikativPrateritumIch = c.indikativPrateritumIch.replacingOccurrences(of: old, with: new)
        c.indikativPrateritumDu = c.indikativPrateritumDu.replacingOccurrences(of: old, with: new)
        c.indikativPrateritumEr = c.indikativPrateritumEr.replacingOccurrences(of: old, with: new)
        c.indikativPrateritumWir = c.indikativPrateritumWir.replacingOccurrences(of: old, with: new)
        c.indikativPrateritumIhr = c.indikativPrateritumIhr.replacingOccurrences(of: old, with: new)
        c.indikativPrateritumSie = c.indikativPrateritumSie.replacingOccurrences(of: old, with: new)
        
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
        
        c.konjunktiv2Futur2Ich = c.konjunktiv2Futur2Ich.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur2Du = c.konjunktiv2Futur2Du.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur2Er = c.konjunktiv2Futur2Er.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur2Wir = c.konjunktiv2Futur2Wir.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur2Ihr = c.konjunktiv2Futur2Ihr.replacingOccurrences(of: old, with: new)
        c.konjunktiv2Futur2Sie = c.konjunktiv2Futur2Sie.replacingOccurrences(of: old, with: new)
        
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
    }
    
    /**
     * Exceptions for the conjugation model. Cases when the model changes by rule.
     */
    private func replaceConjugationModel(_ c : Conjugation, _ verbInfinitive : String) {
        if (c.id == 84) { // dire
            if (verbInfinitive.contains("contredire") || verbInfinitive.contains("dédire")
                || verbInfinitive.contains("interdire") || verbInfinitive.contains("médire")
                || verbInfinitive.contains("prédire")) {
                c.indikativPrasensIhr = c.indikativPrasensIhr.replacingOccurrences(of: "dites", with: "disez")
            }
        }
    }
    
    /**
     * Known Exceptions for the accents in conjugation model.
     */ /*
    private func replaceAccents(_ c : Conjugation, _ verbInfinitive : String) {
        if (c.id == 73 && !verbInfinitive.elementsEqual("croître")) {
            // NOTE: all verbes, except croître : accroître, décroître, recroître
            // conjugate without some accents
            c.indikativPrasensIch = c.indikativPrasensIch.replacingOccurrences(of: "î", with: "i")
            c.indikativPrasensDu = c.indikativPrasensDu.replacingOccurrences(of: "î", with: "i")
            
            c.indikativFutur1Ich = c.indikativFutur1Ich.replacingOccurrences(of: "û", with: "u")
            c.indikativFutur1Du = c.indikativFutur1Du.replacingOccurrences(of: "û", with: "u")
            c.indikativFutur1Er = c.indikativFutur1Er.replacingOccurrences(of: "û", with: "u")
            c.indikativFutur1Sie = c.indikativFutur1Sie.replacingOccurrences(of: "û", with: "u")
            
            c.indikativPerfektIch = c.indikativPerfektIch.replacingOccurrences(of: "û", with: "u")
            c.indikativPerfektDu = c.indikativPerfektDu.replacingOccurrences(of: "û", with: "u")
            c.indikativPerfektWir = c.indikativPerfektWir.replacingOccurrences(of: "û", with: "u")
            c.indikativPerfektIhr = c.indikativPerfektIhr.replacingOccurrences(of: "û", with: "u")
            c.indikativPerfektSie = c.indikativPerfektSie.replacingOccurrences(of: "û", with: "u")
            
            c.imperativDu = c.imperativDu.replacingOccurrences(of: "î", with: "i")
            
            c.infinitivPerfekt = c.infinitivPerfekt.replacingOccurrences(of: "crû", with: "cru")
            c.partizipPerfekt = c.partizipPerfekt.replacingOccurrences(of: "crû", with: "cru")
            
            c.indikativPrateritumIch = c.indikativPrateritumIch.replacingOccurrences(of: "crû", with: "cru")
            c.indikativPrateritumDu = c.indikativPrateritumDu.replacingOccurrences(of: "crû", with: "cru")
            c.indikativPrateritumEr = c.indikativPrateritumEr.replacingOccurrences(of: "crû", with: "cru")
            c.indikativPrateritumWir = c.indikativPrateritumWir.replacingOccurrences(of: "crû", with: "cru")
            c.indikativPrateritumIhr = c.indikativPrateritumIhr.replacingOccurrences(of: "crû", with: "cru")
            c.indikativPrateritumSie = c.indikativPrateritumSie.replacingOccurrences(of: "crû", with: "cru")
            
            c.indikativPlusquamperfektIch = c.indikativPlusquamperfektIch.replacingOccurrences(of: "crû", with: "cru")
            c.indikativPlusquamperfektDu = c.indikativPlusquamperfektDu.replacingOccurrences(of: "crû", with: "cru")
            c.indikativPlusquamperfektEr = c.indikativPlusquamperfektEr.replacingOccurrences(of: "crû", with: "cru")
            c.indikativPlusquamperfektWir = c.indikativPlusquamperfektWir.replacingOccurrences(of: "crû", with: "cru")
            c.indikativPlusquamperfektIhr = c.indikativPlusquamperfektIhr.replacingOccurrences(of: "crû", with: "cru")
            c.indikativPlusquamperfektSie = c.indikativPlusquamperfektSie.replacingOccurrences(of: "crû", with: "cru")
            
            c.indikativFutur2Ich = c.indikativFutur2Ich.replacingOccurrences(of: "crû", with: "cru")
            c.indikativFutur2Du = c.indikativFutur2Du.replacingOccurrences(of: "crû", with: "cru")
            c.indikativFutur2Er = c.indikativFutur2Er.replacingOccurrences(of: "crû", with: "cru")
            c.indikativFutur2Wir = c.indikativFutur2Wir.replacingOccurrences(of: "crû", with: "cru")
            c.indikativFutur2Ihr = c.indikativFutur2Ihr.replacingOccurrences(of: "crû", with: "cru")
            c.indikativFutur2Sie = c.indikativFutur2Sie.replacingOccurrences(of: "crû", with: "cru")
            
            c.konjunktiv1PerfektIch = c.konjunktiv1PerfektIch.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv1PerfektDu = c.konjunktiv1PerfektDu.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv1PerfektEr = c.konjunktiv1PerfektEr.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv1PerfektWir = c.konjunktiv1PerfektWir.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv1PerfektIhr = c.konjunktiv1PerfektIhr.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv1PerfektSie = c.konjunktiv1PerfektSie.replacingOccurrences(of: "crû", with: "cru")
            
            c.konjunktiv2Futur2Ich = c.konjunktiv2Futur2Ich.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2Futur2Du = c.konjunktiv2Futur2Du.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2Futur2Er = c.konjunktiv2Futur2Er.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2Futur2Wir = c.konjunktiv2Futur2Wir.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2Futur2Ihr = c.konjunktiv2Futur2Ihr.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2Futur2Sie = c.konjunktiv2Futur2Sie.replacingOccurrences(of: "crû", with: "cru")
            
            c.konjunktiv2PrateritumIch = c.konjunktiv2PrateritumIch.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2PrateritumDu = c.konjunktiv2PrateritumDu.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2PrateritumWir = c.konjunktiv2PrateritumWir.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2PrateritumIhr = c.konjunktiv2PrateritumIhr.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2PrateritumSie = c.konjunktiv2PrateritumSie.replacingOccurrences(of: "crû", with: "cru")
            
            c.konjunktiv1Futur2Ich = c.konjunktiv1Futur2Ich.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv1Futur2Du = c.konjunktiv1Futur2Du.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv1Futur2Er = c.konjunktiv1Futur2Er.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv1Futur2Wir = c.konjunktiv1Futur2Wir.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv1Futur2Ihr = c.konjunktiv1Futur2Ihr.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv1Futur2Sie = c.konjunktiv1Futur2Sie.replacingOccurrences(of: "crû", with: "cru")
            
            c.konjunktiv2PlusquamperfektIch = c.konjunktiv2PlusquamperfektIch.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2PlusquamperfektDu = c.konjunktiv2PlusquamperfektDu.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2PlusquamperfektEr = c.konjunktiv2PlusquamperfektEr.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2PlusquamperfektWir = c.konjunktiv2PlusquamperfektWir.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2PlusquamperfektIhr = c.konjunktiv2PlusquamperfektIhr.replacingOccurrences(of: "crû", with: "cru")
            c.konjunktiv2PlusquamperfektSie = c.konjunktiv2PlusquamperfektSie.replacingOccurrences(of: "crû", with: "cru")
        }
        else if (c.id == 20 && verbInfinitive.contains("amuïr")) {
            // Restore circunflex accent
            c.indikativPrasensIch = c.indikativPrasensIch.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPrasensDu = c.indikativPrasensDu.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPrasensEr = c.indikativPrasensEr.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPrasensWir = c.indikativPrasensWir.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPrasensIhr = c.indikativPrasensIhr.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPrasensSie = c.indikativPrasensSie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indikativPrateritumIch = c.indikativPrateritumIch.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPrateritumDu = c.indikativPrateritumDu.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPrateritumEr = c.indikativPrateritumEr.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPrateritumWir = c.indikativPrateritumWir.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPrateritumIhr = c.indikativPrateritumIhr.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPrateritumSie = c.indikativPrateritumSie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indikativPerfektIch = c.indikativPerfektIch.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPerfektDu = c.indikativPerfektDu.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPerfektEr = c.indikativPerfektEr.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPerfektWir = c.indikativPerfektWir.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPerfektIhr = c.indikativPerfektIhr.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPerfektSie = c.indikativPerfektSie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indikativPlusquamperfektIch = c.indikativPlusquamperfektIch.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPlusquamperfektDu = c.indikativPlusquamperfektDu.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPlusquamperfektEr = c.indikativPlusquamperfektEr.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPlusquamperfektWir = c.indikativPlusquamperfektWir.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPlusquamperfektIhr = c.indikativPlusquamperfektIhr.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativPlusquamperfektSie = c.indikativPlusquamperfektSie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indikativFutur1Ich = c.indikativFutur1Ich.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativFutur1Du = c.indikativFutur1Du.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativFutur1Er = c.indikativFutur1Er.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativFutur1Sie = c.indikativFutur1Sie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indikativFutur2Ich = c.indikativFutur2Ich.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativFutur2Du = c.indikativFutur2Du.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativFutur2Er = c.indikativFutur2Er.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativFutur2Wir = c.indikativFutur2Wir.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativFutur2Ihr = c.indikativFutur2Ihr.replacingOccurrences(of: "amui", with: "amuï")
            c.indikativFutur2Sie = c.indikativFutur2Sie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.konjunktiv1PrasensIch = c.konjunktiv1PrasensIch.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1PrasensDu = c.konjunktiv1PrasensDu.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1PrasensEr = c.konjunktiv1PrasensEr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1PrasensWir = c.konjunktiv1PrasensWir.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1PrasensIhr = c.konjunktiv1PrasensIhr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1PrasensSie = c.konjunktiv1PrasensSie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.konjunktiv1PerfektIch = c.konjunktiv1PerfektIch.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1PerfektDu = c.konjunktiv1PerfektDu.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1PerfektEr = c.konjunktiv1PerfektEr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1PerfektWir = c.konjunktiv1PerfektWir.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1PerfektIhr = c.konjunktiv1PerfektIhr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1PerfektSie = c.konjunktiv1PerfektSie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.konjunktiv2Futur1Ich = c.konjunktiv2Futur1Ich.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2Futur1Du = c.konjunktiv2Futur1Du.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2Futur1Er = c.konjunktiv2Futur1Er.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2Futur1Wir = c.konjunktiv2Futur1Wir.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2Futur1Ihr = c.konjunktiv2Futur1Ihr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2Futur1Sie = c.konjunktiv2Futur1Sie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.konjunktiv2Futur2Ich = c.konjunktiv2Futur2Ich.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2Futur2Du = c.konjunktiv2Futur2Du.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2Futur2Er = c.konjunktiv2Futur2Er.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2Futur2Wir = c.konjunktiv2Futur2Wir.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2Futur2Ihr = c.konjunktiv2Futur2Ihr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2Futur2Sie = c.konjunktiv2Futur2Sie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.konjunktiv1Futur1Ich = c.konjunktiv1Futur1Ich.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1Futur1Du = c.konjunktiv1Futur1Du.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1Futur1Er = c.konjunktiv1Futur1Er.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1Futur1Wir = c.konjunktiv1Futur1Wir.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1Futur1Ihr = c.konjunktiv1Futur1Ihr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1Futur1Sie = c.konjunktiv1Futur1Sie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.konjunktiv1Futur2Ich = c.konjunktiv1Futur2Ich.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1Futur2Du = c.konjunktiv1Futur2Du.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1Futur2Er = c.konjunktiv1Futur2Er.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1Futur2Wir = c.konjunktiv1Futur2Wir.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1Futur2Ihr = c.konjunktiv1Futur2Ihr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv1Futur2Sie = c.konjunktiv1Futur2Sie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.konjunktiv2PrateritumIch = c.konjunktiv2PrateritumIch.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2PrateritumDu = c.konjunktiv2PrateritumDu.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2PrateritumEr = c.konjunktiv2PrateritumEr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2PrateritumWir = c.konjunktiv2PrateritumWir.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2PrateritumIhr = c.konjunktiv2PrateritumIhr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2PrateritumSie = c.konjunktiv2PrateritumSie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.konjunktiv2PlusquamperfektIch = c.konjunktiv2PlusquamperfektIch.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2PlusquamperfektDu = c.konjunktiv2PlusquamperfektDu.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2PlusquamperfektEr = c.konjunktiv2PlusquamperfektEr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2PlusquamperfektWir = c.konjunktiv2PlusquamperfektWir.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2PlusquamperfektIhr = c.konjunktiv2PlusquamperfektIhr.replacingOccurrences(of: "amui", with: "amuï")
            c.konjunktiv2PlusquamperfektSie = c.konjunktiv2PlusquamperfektSie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.imperativDu = c.imperativDu.replacingOccurrences(of: "amui", with: "amuï")
            c.imperativIhr = c.imperativIhr.replacingOccurrences(of: "amui", with: "amuï")
            c.imperativSie = c.imperativSie.replacingOccurrences(of: "amui", with: "amuï")
            
            c.infinitivPerfekt = c.infinitivPerfekt.replacingOccurrences(of: "amui", with: "amuï")
            c.partizipPrasens = c.partizipPrasens.replacingOccurrences(of: "amui", with: "amuï")
            c.partizipPerfekt = c.partizipPerfekt.replacingOccurrences(of: "amui", with: "amuï")
        }
    } */
    
    /**
     * Generates the verb radical based on the model.
     */
    private func generateRadical(_ infinitive : String, _ modelR : String, _ id : Int, _ isPronominal : Bool) -> String {
        var verbR : String = infinitive
        // remove termination
        if (infinitive.hasSuffix("er") || infinitive.hasSuffix("ir") || infinitive.hasSuffix("re")) {
            verbR = String(infinitive.prefix(infinitive.count - 2))
        }
        
        // TODO: Check all models (after 40+)
        // know models
        switch (id) {
        case 8:
            // placer, plaçer : verbes en -cer
            if (modelR.contains("ç")) {
                verbR = infinitive.hasSuffix("cer") ? infinitive.replacingOccurrences(of: "cer", with: "ç") : verbR
            }
            
        case 10:
            // peser, pèser : verbes ayant un e muet à l'avant dèrniere syllabe de l'infinitif: verbes en e(.)er
            if (modelR.contains("è") && verbR.contains("e")) {
                // replace last "e" with "è"
                let reversed : String = ViewUtils.replaceFirst(String(verbR.reversed()), of: "e", with: "è")
                verbR = String(reversed.reversed())
            }
            
        case 11:
            // céder, cède : verbes ayant un e muet à l'avant dèrniere syllabe de l'infinitif: verbes en é(.)er
            if (modelR.contains("è") && verbR.contains("é")) {
                // replace last "é" with "è"
                let reversed : String = ViewUtils.replaceFirst(String(verbR.reversed()), of: "é", with: "è")
                verbR = String(reversed.reversed())
            }
            
        case 12:
            // jeter, jetter : verbes en -eler ou -eter, doublant 1 ou t devant e muet
            if (modelR.contains("tt")) {
                verbR = verbR.hasSuffix("l") ? verbR + "l" : verbR
                verbR = verbR.hasSuffix("t") ? verbR + "t" : verbR
            }
            
        case 13:
            // model, modèl : verbes en -eler ou -eter, changeant e en è devant syllabe muette
            if (modelR.contains("è")) {
                verbR = infinitive.hasSuffix("eler") ? infinitive.replacingOccurrences(of: "eler", with: "èl") : verbR
                verbR = infinitive.hasSuffix("eter") ? infinitive.replacingOccurrences(of: "eter", with: "èt") : verbR
            }
            
        case 15:
            // assiéger, assiège : verbes en -éger
            if (modelR.contains("è") && verbR.contains("é")) {
                // replace last "é" with "è"
                let reversed : String = ViewUtils.replaceFirst(String(verbR.reversed()), of: "é", with: "è")
                verbR = String(reversed.reversed())
            }
            
        case 17:
            // paie / paye : verbes en -ayer
            if (modelR.contains("i")) {
                verbR = infinitive.hasSuffix("ayer") ? infinitive.replacingOccurrences(of: "ayer", with: "ai") : verbR
            }
            
        case 18:
            // broyer, broie : verbes en -oyer, -uyer
            if (modelR.contains("i")) {
                verbR = infinitive.hasSuffix("oyer") ? infinitive.replacingOccurrences(of: "oyer", with: "oi") : verbR
                verbR = infinitive.hasSuffix("uyer") ? infinitive.replacingOccurrences(of: "uyer", with: "ui") : verbR
            }
            
        case 19:
            // envoyer, envoie, enverra : all verbes, envoyer, renvoyer, s'envoyer, se renvoyer, avoyer
            if (modelR.contains("i")) {
                verbR = infinitive.hasSuffix("yer") ? infinitive.replacingOccurrences(of: "yer", with: "i") : verbR
            } else if (modelR.contains("enverr")) {
                // 2 special cases for enverr
                verbR = infinitive.hasSuffix("envoyer") ? infinitive.replacingOccurrences(of: "envoyer", with: "enverr") : verbR
                verbR = infinitive.hasSuffix("avoyer") ? infinitive.replacingOccurrences(of: "avoyer", with: "avoier") : verbR
            }
            
        case 20:
            // finir: all verbes.  known exceptions: s'amuïr
            if (modelR.contains("fin")) {
                verbR = infinitive.hasSuffix("amuïr") ? infinitive.replacingOccurrences(of: "amuïr", with: "amu") : verbR
                verbR = infinitive.hasSuffix("maudire") ? infinitive.replacingOccurrences(of: "maudire", with: "maud") : verbR
            }
            
        case 21:
            // haïr est le seul verbe
            if (modelR.contains("ha")) {
                verbR = infinitive.hasSuffix("haïr") ? infinitive.replacingOccurrences(of: "haïr", with: "ha") : verbR
            }
            
        case 24:
            // tenir, tiens, tinsse, tînt : verbes -enir
            if (modelR.contains("ten")) {
                verbR = infinitive.hasSuffix("enir") ? infinitive.replacingOccurrences(of: "enir", with: "en") : verbR
            } else if (modelR.contains("tien")) {
                verbR = infinitive.hasSuffix("enir") ? infinitive.replacingOccurrences(of: "enir", with: "ien") : verbR
            } else if (modelR.contains("tin")) {
                verbR = infinitive.hasSuffix("enir") ? infinitive.replacingOccurrences(of: "enir", with: "in") : verbR
            } else if (modelR.contains("tîn")) {
                verbR = infinitive.hasSuffix("enir") ? infinitive.replacingOccurrences(of: "enir", with: "în") : verbR
            }
            
        case 25:
            // acquerir : verbes en -érir
            if (modelR.contains("acqu")) {
                verbR = infinitive.hasSuffix("érir") ? infinitive.replacingOccurrences(of: "érir", with: "") : verbR
            }
            
        case 26:
            // sentir : verbes eb -tir
            if (modelR.elementsEqual("sen")) {
                verbR = infinitive.hasSuffix("tir") ? infinitive.replacingOccurrences(of: "tir", with: "") : verbR
            } else if (modelR.elementsEqual("senti")) {
                verbR = infinitive.hasSuffix("tir") ? infinitive.replacingOccurrences(of: "tir", with: "ti") : verbR
            }
            
        case 28:
            // souffrir, souffert : verbes en -vrir, frir
            if (modelR.contains("couve")) {
                verbR = infinitive.hasSuffix("vrir") ? infinitive.replacingOccurrences(of: "vrir", with: "ve") : verbR
                verbR = infinitive.hasSuffix("frir") ? infinitive.replacingOccurrences(of: "frir", with: "fe") : verbR
            }
            
        case 32:
            // bouillir, bous : all verbes, known: bouillir, debouillir, racabouillir
            if (modelR.elementsEqual("bou")) {
                verbR = infinitive.hasSuffix("bouillir") ? infinitive.replacingOccurrences(of: "bouillir", with: "bou") : verbR
            }
            
        case 33:
            // dormir, dors : all verbes, known: dormir, endormir, rendormir
            if (modelR.elementsEqual("dor")) {
                verbR = infinitive.hasSuffix("dormir") ? infinitive.replacingOccurrences(of: "dormir", with: "dor") : verbR
            }
            
        case 35:
            // mourir, meurs : all verbes, known: mourir, se mourir
            if (modelR.contains("meur")) {
                verbR = infinitive.hasSuffix("mourir") ? infinitive.replacingOccurrences(of: "mourir", with: "meur") : verbR
            }
            
        case 36:
            // servir, sers : all verbes, known: servir, desservir, reservir
            if (modelR.elementsEqual("ser")) {
                verbR = infinitive.hasSuffix("servir") ? infinitive.replacingOccurrences(of: "servir", with: "ser") : verbR
            }
            
        case 40:
            // recevoir : verbes en -cevoir, all known: recevoir, apercevoir, concevoir, decevoir, percevoir
            if (modelR.elementsEqual("re")) {
                verbR = infinitive.hasSuffix("cevoir") ? infinitive.replacingOccurrences(of: "cevoir", with: "") : verbR
            } else if (modelR.elementsEqual("reçu")) {
                verbR = infinitive.hasSuffix("cevoir") ? infinitive.replacingOccurrences(of: "cevoir", with: "çu") : verbR
            } else if (modelR.elementsEqual("rece")) {
                verbR = infinitive.hasSuffix("cevoir") ? infinitive.replacingOccurrences(of: "cevoir", with: "ce") : verbR
            }
            
        case 41:
            // voir, vu : all verbes, known: voir, entrevoir, prevoir, revoir
            if (modelR.elementsEqual("voi")) {
                verbR = infinitive.hasSuffix("voir") ? infinitive.replacingOccurrences(of: "voir", with: "voi") : verbR
            } else if (modelR.elementsEqual("voy")) {
                verbR = infinitive.hasSuffix("voir") ? infinitive.replacingOccurrences(of: "voir", with: "voy") : verbR
            } else if (modelR.elementsEqual("vi")) {
                verbR = infinitive.hasSuffix("voir") ? infinitive.replacingOccurrences(of: "voir", with: "vi") : verbR
            } else if (modelR.elementsEqual("vî")) {
                verbR = infinitive.hasSuffix("voir") ? infinitive.replacingOccurrences(of: "voir", with: "vî") : verbR
            } else if (modelR.elementsEqual("verr")) {
                if (infinitive.elementsEqual("prévoir")) { // this is an exception
                    verbR = "prévoir" // Futur Simple and Conditionnel Present
                } else {
                    verbR = infinitive.hasSuffix("voir") ? infinitive.replacingOccurrences(of: "voir", with: "verr") : verbR
                }
            } else if (modelR.elementsEqual("vu")) {
                verbR = infinitive.hasSuffix("voir") ? infinitive.replacingOccurrences(of: "voir", with: "vu") : verbR
            }
            
        case 42:
            // pourvoir, pourvu : all verbes, known: pourvoir, depourvoir
            if (modelR.elementsEqual("pourv")) {
                verbR = infinitive.hasSuffix("pourvoir") ? infinitive.replacingOccurrences(of: "pourvoir", with: "pourv") : verbR
            }
            
        case 44:
            // devoir, dois : all verbes, known: devoir, redevoir
            if (modelR.elementsEqual("d")) {
                verbR = infinitive.hasSuffix("devoir") ? infinitive.replacingOccurrences(of: "devoir", with: "d") : verbR
            }
            
        case 45:
            // pouvoir, pu : all verbes, known: pouvoir
            if (modelR.elementsEqual("p")) {
                verbR = infinitive.hasSuffix("pouvoir") ? infinitive.replacingOccurrences(of: "pouvoir", with: "p") : verbR
            }
            
        case 46:
            // mouvoir, mu : all verbes, known: mouvoir, émouvoir, promouvoir
            if (modelR.elementsEqual("m")) {
                verbR = infinitive.hasSuffix("mouvoir") ? infinitive.replacingOccurrences(of: "mouvoir", with: "m") : verbR
            }
            
        case 47:
            // pleuvoir, plu : all verbes, known: pleuvoir, repleuvoir
            if (modelR.elementsEqual("pl")) {
                verbR = infinitive.hasSuffix("pleuvoir") ? infinitive.replacingOccurrences(of: "pleuvoir", with: "pl") : verbR
            }
            
        case 49:
            // valoir, valu : all verbes, known: valoir, équivaloir, prévaloir, revaloir
            if (modelR.elementsEqual("va")) {
                verbR = infinitive.hasSuffix("valoir") ? infinitive.replacingOccurrences(of: "valoir", with: "va") : verbR
            }
            
        case 50:
            // vouloir, veux : all verbes, known: vouloir, revouloir
            if (modelR.elementsEqual("veu")) {
                verbR = infinitive.hasSuffix("vouloir") ? infinitive.replacingOccurrences(of: "vouloir", with: "veu") : verbR
            } else if (modelR.elementsEqual("voul")) {
                verbR = infinitive.hasSuffix("vouloir") ? infinitive.replacingOccurrences(of: "vouloir", with: "voul") : verbR
            } else if (modelR.elementsEqual("voud")) {
                verbR = infinitive.hasSuffix("vouloir") ? infinitive.replacingOccurrences(of: "vouloir", with: "voud") : verbR
            }
            
        case 51:
            // asseoir : all verbes, known: asseoir, rasseoir,
            if (modelR.elementsEqual("ass")) {
                verbR = infinitive.hasSuffix("asseoir") ? infinitive.replacingOccurrences(of: "asseoir", with: "ass") : verbR
            }
            
        case 59:
            // prendre, pris : all verbes,
            // known: prendre, apprendre, comprendre, déprendre, désapprendre, entreprendre, s'éprendre,
            //        se méprendre, rapprendre, reapprendre, reprendre, surprendre
            if (modelR.elementsEqual("pr")) {
                verbR = infinitive.hasSuffix("prendre") ? infinitive.replacingOccurrences(of: "prendre", with: "pr") : verbR
            }
            
        case 60:
            // battre, battu : all verbes,
            // known: battre, abattre, combattre, contrebattre, debattre, ebattre, embattre, rabattre, rebattre
            if (modelR.elementsEqual("bat")) {
                verbR = infinitive.hasSuffix("battre") ? infinitive.replacingOccurrences(of: "battre", with: "bat") : verbR
            }
            
        case 61:
            // mettre, mis : all verbes,
            // known: mettre, admettre, commettre, compromettre, demettre, emettre, (.)mettre
            if (modelR.elementsEqual("met")) {
                verbR = infinitive.hasSuffix("mettre") ? infinitive.replacingOccurrences(of: "mettre", with: "met") : verbR
            } else if (modelR.elementsEqual("mi")) {
                verbR = infinitive.hasSuffix("mettre") ? infinitive.replacingOccurrences(of: "mettre", with: "mi") : verbR
            } else if (modelR.elementsEqual("mî")) {
                verbR = infinitive.hasSuffix("mettre") ? infinitive.replacingOccurrences(of: "mettre", with: "mî") : verbR
            }
            
        case 62:
            // peindre, peignez : all verbes,
            // known: peindre, astreindre, ceindre,  (.)eindre
            if (modelR.elementsEqual("pei")) {
                verbR = infinitive.hasSuffix("eindre") ? infinitive.replacingOccurrences(of: "eindre", with: "ei") : verbR
            }
            
        case 63:
            // joindre, joins : all verbes,
            // known: joindre, adjoindre, conjoindre, disjoindre, enjoindre, rejoindre, oindre, poindre
            if (modelR.elementsEqual("joi")) {
                verbR = infinitive.hasSuffix("oindre") ? infinitive.replacingOccurrences(of: "oindre", with: "oi") : verbR
            }
            
        case 64:
            // craindre, craint : all verbes,
            // known: craindre, contraindre, plaindre
            if (modelR.elementsEqual("crai")) {
                verbR = infinitive.hasSuffix("aindre") ? infinitive.replacingOccurrences(of: "aindre", with: "ai") : verbR
            }
            
        case 65:
            // vaincre, vaincu : all verbes,
            // known: vaincre, convaincre
            if (modelR.elementsEqual("vain")) {
                verbR = infinitive.hasSuffix("vaincre") ? infinitive.replacingOccurrences(of: "vaincre", with: "vain") : verbR
            }
            
        case 66:
            // traire, trait : all verbes,
            // known: traire, abstraire, distraire, extraire, retraire, raire, soustraire, braire
            if (modelR.elementsEqual("tra")) {
                verbR = infinitive.hasSuffix("raire") ? infinitive.replacingOccurrences(of: "raire", with: "ra") : verbR
            }
            
        case 67:
            // faire, fait : all verbes,
            // known: faire, contrefaire, defaire, forfaire, malfaire, mefaire, parfaire, redefaire,
            //        refaire, satisfaire, surfaire
            if (modelR.elementsEqual("f")) {
                verbR = infinitive.hasSuffix("faire") ? infinitive.replacingOccurrences(of: "faire", with: "f") : verbR
            }
            
        case 68:
            // plaire, plait : all verbes,
            // known: plaire, complaire, déplaire, taire
            if (modelR.elementsEqual("pl")) {
                verbR = infinitive.hasSuffix("aire") ? infinitive.replacingOccurrences(of: "aire", with: "") : verbR
            }
            
        case 69:
            // connaître, connu : all verbes,
            // known: connaître, méconnaître, reconnaître, paraître, apparaître, comparaître,
            //        disparaître, réapparaître, recomparaître, reparaître, transparaître
            if (modelR.elementsEqual("conn")) {
                verbR = infinitive.hasSuffix("aître") ? infinitive.replacingOccurrences(of: "aître", with: "") : verbR
            }
            
        case 70:
            // naître, né : all verbes, known: naître, renaître
            if (modelR.elementsEqual("na")) {
                verbR = infinitive.hasSuffix("naître") ? infinitive.replacingOccurrences(of: "naître", with: "na") : verbR
            } else if (modelR.elementsEqual("né")) {
                verbR = infinitive.hasSuffix("naître") ? infinitive.replacingOccurrences(of: "naître", with: "né") : verbR
            }
            
        case 73:
            // croître, crû : all verbes, known: croître, accroître, décroître, recroître
            if (modelR.elementsEqual("cr")) {
                verbR = infinitive.hasSuffix("croître") ? infinitive.replacingOccurrences(of: "croître", with: "cr") : verbR
            }
            
        case 74:
            // croire, cru : all verbes, known: croire, accroire
            if (modelR.elementsEqual("cr")) {
                verbR = infinitive.hasSuffix("croire") ? infinitive.replacingOccurrences(of: "croire", with: "cr") : verbR
            }
            
        case 75:
            // boire, bu : all verbes, known: boire, emboire
            if (modelR.elementsEqual("b")) {
                verbR = infinitive.hasSuffix("boire") ? infinitive.replacingOccurrences(of: "boire", with: "b") : verbR
            }
            
        case 76:
            // clore, clos : all verbes, known: clore, déclore, éclore, enclore, forclore
            if (modelR.elementsEqual("cl")) {
                verbR = infinitive.hasSuffix("clore") ? infinitive.replacingOccurrences(of: "clore", with: "cl") : verbR
            }
            
        case 77:
            // conclure, conclu : all verbes, known: conclure, exclure, inclure, occlure, reclure
            if (modelR.elementsEqual("con")) {
                verbR = infinitive.hasSuffix("clure") ? infinitive.replacingOccurrences(of: "clure", with: "") : verbR
            }
            
        case 78:
            // absoudre, absous : all verbes, known: absoudre, dissoudre, résoudre
            if (modelR.elementsEqual("abso")) {
                verbR = infinitive.hasSuffix("soudre") ? infinitive.replacingOccurrences(of: "soudre", with: "so") : verbR
            }
            
        case 79:
            // coudre, cousu : all verbes, known: coudre, découdre, recoudre
            if (modelR.elementsEqual("cou")) {
                verbR = infinitive.hasSuffix("coudre") ? infinitive.replacingOccurrences(of: "coudre", with: "cou") : verbR
            }
            
        case 80:
            // moudre, moulu : all verbes, known: moudre, émoudre, remoudre
            if (modelR.elementsEqual("mou")) {
                verbR = infinitive.hasSuffix("moudre") ? infinitive.replacingOccurrences(of: "moudre", with: "mou") : verbR
            }
            
        case 81:
            // suivre, suivi : all verbes, known: suivre, ensuivre, poursuivre
            if (modelR.elementsEqual("sui")) {
                verbR = infinitive.hasSuffix("suivre") ? infinitive.replacingOccurrences(of: "suivre", with: "sui") : verbR
            }
            
        case 82:
            // vivre, vécu : all verbes, known: vivre, revivre, survivre
            if (modelR.elementsEqual("viv, vi, véc")) {
                verbR = infinitive.hasSuffix("vivre") ? infinitive.replacingOccurrences(of: "vivre", with: "viv") : verbR
            } else if (modelR.elementsEqual("vi")) {
                verbR = infinitive.hasSuffix("vivre") ? infinitive.replacingOccurrences(of: "vivre", with: "vi") : verbR
            } else if (modelR.elementsEqual("véc")) {
                verbR = infinitive.hasSuffix("vivre") ? infinitive.replacingOccurrences(of: "vivre", with: "véc") : verbR
            }
            
        case 83:
            // lire, lu : all verbes, known: lire, élire, réélire, relire
            if (modelR.elementsEqual("l")) {
                verbR = infinitive.hasSuffix("lire") ? infinitive.replacingOccurrences(of: "lire", with: "l") : verbR
            }
            
        case 84:
            // dire, dit : all verbes, known: dire, contredire, dédire, interdire, médire, prédire, redire
            if (modelR.elementsEqual("d")) {
                verbR = infinitive.hasSuffix("dire") ? infinitive.replacingOccurrences(of: "dire", with: "d") : verbR
            }
            
        case 85:
            // rire, ri : all verbes, known: rire, sourire
            if (modelR.elementsEqual("rir, r")) {
                verbR = infinitive.hasSuffix("rire") ? infinitive.replacingOccurrences(of: "rire", with: "rir") : verbR
            } else if (modelR.elementsEqual("r")) {
                verbR = infinitive.hasSuffix("rire") ? infinitive.replacingOccurrences(of: "rire", with: "r") : verbR
            }
            
        case 86:
            // écrire, écrit : all verbes,
            // known: écrire, circonscrire, décrire, inscrire, prescrire, proscrire, récrire,
            //        réinscrire, retranscrire, souscrire, transcrire
            if (modelR.elementsEqual("écri")) {
                verbR = infinitive.hasSuffix("crire") ? infinitive.replacingOccurrences(of: "crire", with: "cri") : verbR
            }
            
        case 87:
            // confire, confit : all verbes,
            // known: confire, déconfire, circoncire, frire, suffire
            if (modelR.elementsEqual("conf")) {
                verbR = infinitive.hasSuffix("ire") ? infinitive.replacingOccurrences(of: "ire", with: "") : verbR
            }
            
        case 88:
            // cuire, cuit : all verbes,
            // known: cuire, recuire, conduire, deduire, econduire, enduire, introduire, produire, (.)uire
            if (modelR.elementsEqual("cui")) {
                verbR = infinitive.hasSuffix("uire") ? infinitive.replacingOccurrences(of: "uire", with: "ui") : verbR
            }
            
        default:
            break
        }
        
        //remove se or s'
        if (isPronominal){
            verbR = verbR.hasPrefix("s'") ? verbR.replacingOccurrences(of: "s'", with: "") : verbR
            verbR = verbR.hasPrefix("se ") ? verbR.replacingOccurrences(of: "se ", with: "") : verbR
        }
        return verbR
    }
    
    /**
     * Replaces the radicals with the ones from the verb.
     */
    private func replaceRadicals(_ c : Conjugation, _ modelR : [String], _ verbR : [String], _ verbInfinitive : String) {
        
        c.infinitivPrasens = verbInfinitive
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
        
        c.indikativPerfektIch = replaceRadical(c.indikativPerfektIch, modelR, verbR)
        c.indikativPerfektDu = replaceRadical(c.indikativPerfektDu, modelR, verbR)
        c.indikativPerfektEr = replaceRadical(c.indikativPerfektEr, modelR, verbR)
        c.indikativPerfektWir = replaceRadical(c.indikativPerfektWir, modelR, verbR)
        c.indikativPerfektIhr = replaceRadical(c.indikativPerfektIhr, modelR, verbR)
        c.indikativPerfektSie = replaceRadical(c.indikativPerfektSie, modelR, verbR)
        
        c.indikativFutur1Ich = replaceRadical(c.indikativFutur1Ich, modelR, verbR)
        c.indikativFutur1Du = replaceRadical(c.indikativFutur1Du, modelR, verbR)
        c.indikativFutur1Er = replaceRadical(c.indikativFutur1Er, modelR, verbR)
        c.indikativFutur1Wir = replaceRadical(c.indikativFutur1Wir, modelR, verbR)
        c.indikativFutur1Ihr = replaceRadical(c.indikativFutur1Ihr, modelR, verbR)
        c.indikativFutur1Sie = replaceRadical(c.indikativFutur1Sie, modelR, verbR)
        
        c.konjunktiv1PrasensIch = replaceRadical(c.konjunktiv1PrasensIch, modelR, verbR)
        c.konjunktiv1PrasensDu = replaceRadical(c.konjunktiv1PrasensDu, modelR, verbR)
        c.konjunktiv1PrasensEr = replaceRadical(c.konjunktiv1PrasensEr, modelR, verbR)
        c.konjunktiv1PrasensWir = replaceRadical(c.konjunktiv1PrasensWir, modelR, verbR)
        c.konjunktiv1PrasensIhr = replaceRadical(c.konjunktiv1PrasensIhr, modelR, verbR)
        c.konjunktiv1PrasensSie = replaceRadical(c.konjunktiv1PrasensSie, modelR, verbR)
        
        c.konjunktiv2Futur1Ich = replaceRadical(c.konjunktiv2Futur1Ich, modelR, verbR)
        c.konjunktiv2Futur1Du = replaceRadical(c.konjunktiv2Futur1Du, modelR, verbR)
        c.konjunktiv2Futur1Er = replaceRadical(c.konjunktiv2Futur1Er, modelR, verbR)
        c.konjunktiv2Futur1Wir = replaceRadical(c.konjunktiv2Futur1Wir, modelR, verbR)
        c.konjunktiv2Futur1Ihr = replaceRadical(c.konjunktiv2Futur1Ihr, modelR, verbR)
        c.konjunktiv2Futur1Sie = replaceRadical(c.konjunktiv2Futur1Sie, modelR, verbR)
        
        c.konjunktiv1Futur1Ich = replaceRadical(c.konjunktiv1Futur1Ich, modelR, verbR)
        c.konjunktiv1Futur1Du = replaceRadical(c.konjunktiv1Futur1Du, modelR, verbR)
        c.konjunktiv1Futur1Er = replaceRadical(c.konjunktiv1Futur1Er, modelR, verbR)
        c.konjunktiv1Futur1Wir = replaceRadical(c.konjunktiv1Futur1Wir, modelR, verbR)
        c.konjunktiv1Futur1Ihr = replaceRadical(c.konjunktiv1Futur1Ihr, modelR, verbR)
        c.konjunktiv1Futur1Sie = replaceRadical(c.konjunktiv1Futur1Sie, modelR, verbR)
        
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
            replaceParticipePasse(c, old, new)
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
                    // if there is 2 conjugations. Like model 51 asseoir. je rassieds / rassois
                    newText = newText.replacingOccurrences(of: radicalM, with: radicalV)
                } else {
                    newText = ViewUtils.replaceFirst(newText, of: radicalM, with: radicalV)
                }
                
                // if it's just one form, if it's a double form (like Je pay / paye) continue
                if (!text.contains("/")) {
                    break
                }
            }
        }
        return newText
    }
    
    
    /**
     * Checks if the verb uses other auxiliar verb and replace it.
     */ /*
    private func reviewAuxiliar(_ c : Conjugation, _ isEtre : Bool, _ isAvoir : Bool) {
        
        if (!isEtre && !isAvoir) { return }
        
        let wordsAvoir : [String] = ["avoir", "ayant", "ayant", "aie", "ayons", "ayez",
                                     "ai", "as", "a", "avons", "avez", "ont",                        // IndicatifPasseCompose
            "avais", "avais", "avait", "avions", "aviez", "avaient",        // IndicatifPlusQueParfait
            "eus", "eus", "eut", "eûmes", "eûtes", "eurent",                // IndicatifPasseAnterieur
            "aurai", "auras", "aura", "aurons", "aurez", "auront",          // IndicatifFuturAnterieur
            "aurais", "aurais", "aurait", "aurions", "auriez", "auraient",  // ConditionnelPasse
            "aie", "aies", "ait", "ayons", "ayez", "aient",                 // SubjonctifPasse
            "eusse", "eusses", "eût", "eussions", "eussiez", "eussent",     // SubjonctifPlusQueParfait
        ]
        let wordsEtre : [String] = ["être", "étant", "étant", "sois", "soyons", "soyez",
                                    "suis", "es", "est", "sommes", "êtes", "sont",                  // IndicatifPasseCompose
            "étais", "étais", "était", "étions", "étiez", "étaient",        // IndicatifPlusQueParfait
            "fus", "fus", "fut", "fûmes", "fûtes", "furent",                // IndicatifPasseAnterieur
            "serai", "seras", "sera", "serons", "serez", "seront",          // IndicatifFuturAnterieur
            "serais", "serais", "serait", "serions", "seriez", "seraient",  // ConditionnelPasse
            "sois", "sois", "soit", "soyons", "soyez", "soient",            // SubjonctifPasse
            "fusse", "fusses", "fût", "fussions", "fussiez", "fussent",     // SubjonctifPlusQueParfait
        ]
        let wordsEtreAvoir : [String] = ["être ou avoir", "étant ou ayant", "étant ou ayant",
                                         "sois ou aie", "soyons ou ayons", "soyez ou ayez",
                                         "suis ou ai", "es ou as", "est ou a",
                                         "sommes ou avons", "êtes ou avez", "sont ou ont",                   // IndicatifPasseCompose
            "étais ou avais", "étais ou avais", "était ou avait",
            "étions ou avions", "étiez ou aviez", "étaient ou avaient",         // IndicatifPlusQueParfait
            "fus ou eus", "fus ou eus", "fut ou eut",
            "fûmes ou eûmes", "fûtes ou eûtes", "furent ou eurent",             // IndicatifPasseAnterieur
            "serai ou aurai", "seras ou auras", "sera ou aura",
            "serons ou aurons", "serez ou aurez", "seront ou auront",           // IndicatifFuturAnterieur
            "serais ou aurais", "serais ou aurais", "serait ou aurait",
            "serions ou aurions", "seriez ou auriez", "seraient ou auraient",   // ConditionnelPasse
            "sois ou aie", "sois ou aies", "soit ou ait",
            "soyons ou ayons", "soyez ou ayez", "soient ou aient",              // SubjonctifPasse
            "fusse ou eusse", "fusses ou eusses", "fût ou eût",
            "fussions ou eussions", "fussiez ou eussiez", "fussent ou eussent", // SubjonctifPlusQueParfait
        ]
        
        // change auxiliar verb
        if (isAvoir && isEtre) {
            if (c.infinitivPerfekt.contains("avoir")) {
                //  Like: sortir, renter
                //replaceAuxiliar(c, wordsAvoir, wordsEtreAvoir)
            } else if (c.infinitivPerfekt.contains("être")) {
                //replaceAuxiliar(c, wordsEtre, wordsEtreAvoir)
            }
        } else if (c.infinitivPerfekt.contains("avoir") && isEtre && !isAvoir) {
            //  Like: partir, mourir, s'ecrier
            //replaceAuxiliar(c, wordsAvoir, wordsEtre)
        } else if (c.infinitivPerfekt.contains("être") && !isEtre && isAvoir) {
            //replaceAuxiliar(c, wordsEtre, wordsAvoir)
        }
    }*/
    
    /**
     * Replaces a list of strings with another list.
     * Both list should refer to the same conjugation item in the same order.
     */ /*
    private func replaceAuxiliar(_ c : Conjugation, _ words : [String], _ replaces : [String]) {
        // NOTE: Items to replace must come in the same order
        for index in 0 ..< words.count {
            let word : String = words[index]
            let replace : String = replaces[index]
            
            switch (index) {
            case 0:     c.infinitivPerfekt = ViewUtils.replaceFirst(c.infinitivPerfekt, of: word, with: replace)
            case 1:     c.participePasse2 = ViewUtils.replaceFirst(c.participePasse2, of: word, with: replace)
            case 2:     c.gerondifPasse = ViewUtils.replaceFirst(c.gerondifPasse, of: word, with: replace)
            case 3:     c.imperatifPasseTu = ViewUtils.replaceFirst(c.imperatifPasseTu, of: word, with: replace)
            case 4:     c.imperatifPasseNous = ViewUtils.replaceFirst(c.imperatifPasseNous, of: word, with: replace)
            case 5:     c.imperatifPasseVous = ViewUtils.replaceFirst(c.imperatifPasseVous, of: word, with: replace)
                
            case 6:     c.indikativPrateritumIch = ViewUtils.replaceFirst(c.indikativPrateritumIch, of: word, with: replace)
            case 7:     c.indikativPrateritumDu = ViewUtils.replaceFirst(c.indikativPrateritumDu, of: word, with: replace)
            case 8:     c.indikativPrateritumEr = ViewUtils.replaceFirst(c.indikativPrateritumEr, of: word, with: replace)
            case 9:     c.indikativPrateritumWir = ViewUtils.replaceFirst(c.indikativPrateritumWir, of: word, with: replace)
            case 10:    c.indikativPrateritumIhr = ViewUtils.replaceFirst(c.indikativPrateritumIhr, of: word, with: replace)
            case 11:    c.indikativPrateritumSie = ViewUtils.replaceFirst(c.indikativPrateritumSie, of: word, with: replace)
                
            case 12:    c.indikativPlusquamperfektIch = ViewUtils.replaceFirst(c.indikativPlusquamperfektIch, of: word, with: replace)
            case 13:    c.indikativPlusquamperfektDu = ViewUtils.replaceFirst(c.indikativPlusquamperfektDu, of: word, with: replace)
            case 14:    c.indikativPlusquamperfektEr = ViewUtils.replaceFirst(c.indikativPlusquamperfektEr, of: word, with: replace)
            case 15:    c.indikativPlusquamperfektWir = ViewUtils.replaceFirst(c.indikativPlusquamperfektWir, of: word, with: replace)
            case 16:    c.indikativPlusquamperfektIhr = ViewUtils.replaceFirst(c.indikativPlusquamperfektIhr, of: word, with: replace)
            case 17:    c.indikativPlusquamperfektSie = ViewUtils.replaceFirst(c.indikativPlusquamperfektSie, of: word, with: replace)
                
            case 18:    c.indikativFutur2Ich = ViewUtils.replaceFirst(c.indikativFutur2Ich, of: word, with: replace)
            case 19:    c.indikativFutur2Du = ViewUtils.replaceFirst(c.indikativFutur2Du, of: word, with: replace)
            case 20:    c.indikativFutur2Er = ViewUtils.replaceFirst(c.indikativFutur2Er, of: word, with: replace)
            case 21:    c.indikativFutur2Wir = ViewUtils.replaceFirst(c.indikativFutur2Wir, of: word, with: replace)
            case 22:    c.indikativFutur2Ihr = ViewUtils.replaceFirst(c.indikativFutur2Ihr, of: word, with: replace)
            case 23:    c.indikativFutur2Sie = ViewUtils.replaceFirst(c.indikativFutur2Sie, of: word, with: replace)
                
            case 24:    c.konjunktiv1PerfektIch = ViewUtils.replaceFirst(c.konjunktiv1PerfektIch, of: word, with: replace)
            case 25:    c.konjunktiv1PerfektDu = ViewUtils.replaceFirst(c.konjunktiv1PerfektDu, of: word, with: replace)
            case 26:    c.konjunktiv1PerfektEr = ViewUtils.replaceFirst(c.konjunktiv1PerfektEr, of: word, with: replace)
            case 27:    c.konjunktiv1PerfektWir = ViewUtils.replaceFirst(c.konjunktiv1PerfektWir, of: word, with: replace)
            case 28:    c.konjunktiv1PerfektIhr = ViewUtils.replaceFirst(c.konjunktiv1PerfektIhr, of: word, with: replace)
            case 29:    c.konjunktiv1PerfektSie = ViewUtils.replaceFirst(c.konjunktiv1PerfektSie, of: word, with: replace)
                
            case 30:    c.konjunktiv2Futur2Ich = ViewUtils.replaceFirst(c.konjunktiv2Futur2Ich, of: word, with: replace)
            case 31:    c.konjunktiv2Futur2Du = ViewUtils.replaceFirst(c.konjunktiv2Futur2Du, of: word, with: replace)
            case 32:    c.konjunktiv2Futur2Er = ViewUtils.replaceFirst(c.konjunktiv2Futur2Er, of: word, with: replace)
            case 33:    c.konjunktiv2Futur2Wir = ViewUtils.replaceFirst(c.konjunktiv2Futur2Wir, of: word, with: replace)
            case 34:    c.konjunktiv2Futur2Ihr = ViewUtils.replaceFirst(c.konjunktiv2Futur2Ihr, of: word, with: replace)
            case 35:    c.konjunktiv2Futur2Sie = ViewUtils.replaceFirst(c.konjunktiv2Futur2Sie, of: word, with: replace)
                
            case 36:    c.konjunktiv1Futur2Ich = ViewUtils.replaceFirst(c.konjunktiv1Futur2Ich, of: word, with: replace)
            case 37:    c.konjunktiv1Futur2Du = ViewUtils.replaceFirst(c.konjunktiv1Futur2Du, of: word, with: replace)
            case 38:    c.konjunktiv1Futur2Er = ViewUtils.replaceFirst(c.konjunktiv1Futur2Er, of: word, with: replace)
            case 39:    c.konjunktiv1Futur2Wir = ViewUtils.replaceFirst(c.konjunktiv1Futur2Wir, of: word, with: replace)
            case 40:    c.konjunktiv1Futur2Ihr = ViewUtils.replaceFirst(c.konjunktiv1Futur2Ihr, of: word, with: replace)
            case 41:    c.konjunktiv1Futur2Sie = ViewUtils.replaceFirst(c.konjunktiv1Futur2Sie, of: word, with: replace)
                
            case 42:    c.konjunktiv2PlusquamperfektIch = ViewUtils.replaceFirst(c.konjunktiv2PlusquamperfektIch, of: word, with: replace)
            case 43:    c.konjunktiv2PlusquamperfektDu = ViewUtils.replaceFirst(c.konjunktiv2PlusquamperfektDu, of: word, with: replace)
            case 44:    c.konjunktiv2PlusquamperfektEr = ViewUtils.replaceFirst(c.konjunktiv2PlusquamperfektEr, of: word, with: replace)
            case 45:    c.konjunktiv2PlusquamperfektWir = ViewUtils.replaceFirst(c.konjunktiv2PlusquamperfektWir, of: word, with: replace)
            case 46:    c.konjunktiv2PlusquamperfektIhr = ViewUtils.replaceFirst(c.konjunktiv2PlusquamperfektIhr, of: word, with: replace)
            case 47:    c.konjunktiv2PlusquamperfektSie = ViewUtils.replaceFirst(c.konjunktiv2PlusquamperfektSie, of: word, with: replace)
            default:    ()
            }
        }
    } */
    
    
    /**
     * Ads the reflexive pronoms and accord of participe passe
     */
    private func addReflexive(_ c : Conjugation, _ ppInv : Bool) {
        // Add pronoms
        // TODO: Show pronoms in different color
        /*addReflexiveIndicatifPresent(c)
        addReflexiveIndicatifPasseCompose(c, ppInv)
        addReflexiveIndicatifImperfait(c)
        addReflexiveIndicatifPlusQueParfait(c, ppInv)
        addReflexiveIndicatifPasseSimple(c)
        addReflexiveIndicatifPasseAnterieur(c, ppInv)
        addReflexiveIndicatifFuturSimple(c)
        addReflexiveIndicatifFuturAnterieur(c, ppInv)
        addReflexiveConditionnelPresent(c)
        addReflexiveConditionnelPasse(c, ppInv)
        addReflexiveSubjonctifPresent(c)
        addReflexiveSubjonctifPasse(c, ppInv)
        addReflexiveSubjonctifImperfait(c)
        addReflexiveSubjonctifPlusQueParfait(c, ppInv)
        addReflexiveImperatif(c, ppInv)
        addReflexiveInfinitive(c, ppInv)
        addReflexiveParticipe(c, ppInv)
        addReflexiveGerondif(c, ppInv) */
    }
    
    /*
    private func addReflexiveGerondif(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.gerondifPresent.replacingOccurrences(of: "en ", with: "")
        if (!text.elementsEqual("-")) {
            c.gerondifPresent = ViewUtils.useApostrophe(text) ? "en " + Constants.SEA + text : "en " + Constants.SE + text
        }
        text = c.gerondifPasse.replacingOccurrences(of: "en ", with: "")
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? "en " + Constants.SEA + text : "en " + Constants.SE + text
            c.gerondifPasse = ppInv ? text : text + "(e)(s)"
        }
    }
    
    private func addReflexiveParticipe(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.partizipPrasens
        if (!text.elementsEqual("-")) {
            c.partizipPrasens = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        text = c.partizipPerfekt
        if (!text.elementsEqual("-")) {
            c.partizipPerfekt = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        text = c.participePasse2
        if (!text.elementsEqual("-")) {
            c.participePasse2 = ppInv ? text : text + "(e)(s)"
        }
    }
    
    private func addReflexiveInfinitive(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.infinitivPerfekt
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.infinitivPerfekt = ppInv ? text : text + "(e)(s)"
        }
    }
    
    private func addReflexiveImperatif(_ c : Conjugation, _ ppInv : Bool) {
        if (!c.imperativDu.elementsEqual("-")) {
            c.imperativDu = c.imperativDu + "-toi"
        }
        if (!c.imperativIhr.elementsEqual("-")) {
            c.imperativIhr = c.imperativIhr + "-nous"
        }
        if (!c.imperativSie.elementsEqual("-")) {
            c.imperativSie = c.imperativSie + "-vous"
        }
        
        var text : String = c.imperatifPasseTu
        if (!text.elementsEqual("-")) {
            c.imperatifPasseTu = ppInv ? text : text + "(e)"
        }
        text = c.imperatifPasseNous
        if (!text.elementsEqual("-")) {
            c.imperatifPasseNous = ppInv ? text : text + "(e)s"
        }
        text = c.imperatifPasseVous
        if (!text.elementsEqual("-")) {
            c.imperatifPasseVous = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveSubjonctifPlusQueParfait(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.konjunktiv2PlusquamperfektIch
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.konjunktiv2PlusquamperfektIch = ppInv ? text : text + "(e)"
        }
        text = c.konjunktiv2PlusquamperfektDu
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.konjunktiv2PlusquamperfektDu = ppInv ? text : text + "(e)"
        }
        text = c.konjunktiv2PlusquamperfektEr
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.konjunktiv2PlusquamperfektEr = ppInv ? text : text + "(e)"
        }
        if (!c.konjunktiv2PlusquamperfektWir.elementsEqual("-")) {
            text = Constants.NOUS + c.konjunktiv2PlusquamperfektWir
            c.konjunktiv2PlusquamperfektWir = ppInv ? text : text + "(e)s"
        }
        if (!c.konjunktiv2PlusquamperfektIhr.elementsEqual("-")) {
            text = Constants.VOUS + c.konjunktiv2PlusquamperfektIhr
            c.konjunktiv2PlusquamperfektIhr = ppInv ? text : text + "(e)s"
        }
        text = c.konjunktiv2PlusquamperfektSie
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.konjunktiv2PlusquamperfektSie = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveSubjonctifImperfait(_ c : Conjugation) {
        var text : String = c.konjunktiv2PrateritumIch
        if (!text.elementsEqual("-")) {
            c.konjunktiv2PrateritumIch = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.konjunktiv2PrateritumDu
        if (!text.elementsEqual("-")) {
            c.konjunktiv2PrateritumDu = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.konjunktiv2PrateritumEr
        if (!text.elementsEqual("-")) {
            c.konjunktiv2PrateritumEr = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.konjunktiv2PrateritumWir.elementsEqual("-")) {
            c.konjunktiv2PrateritumWir = Constants.NOUS + c.konjunktiv2PrateritumWir
        }
        if (!c.konjunktiv2PrateritumIhr.elementsEqual("-")) {
            c.konjunktiv2PrateritumIhr = Constants.VOUS + c.konjunktiv2PrateritumIhr
        }
        text = c.konjunktiv2PrateritumSie
        if (!text.elementsEqual("-")) {
            c.konjunktiv2PrateritumSie = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveSubjonctifPasse(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.konjunktiv1Futur2Ich
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.konjunktiv1Futur2Ich = ppInv ? text : text + "(e)"
        }
        text = c.konjunktiv1Futur2Du
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.konjunktiv1Futur2Du = ppInv ? text : text + "(e)"
        }
        text = c.konjunktiv1Futur2Er
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.konjunktiv1Futur2Er = ppInv ? text : text + "(e)"
        }
        if (!c.konjunktiv1Futur2Wir.elementsEqual("-")) {
            text = Constants.NOUS + c.konjunktiv1Futur2Wir
            c.konjunktiv1Futur2Wir = ppInv ? text : text + "(e)s"
        }
        if (!c.konjunktiv1Futur2Ihr.elementsEqual("-")) {
            text = Constants.VOUS + c.konjunktiv1Futur2Ihr
            c.konjunktiv1Futur2Ihr = ppInv ? text : text + "(e)s"
        }
        text = c.konjunktiv1Futur2Sie
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.konjunktiv1Futur2Sie = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveSubjonctifPresent(_ c : Conjugation) {
        var text : String = c.konjunktiv1Futur1Ich
        if (!text.elementsEqual("-")) {
            c.konjunktiv1Futur1Ich = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.konjunktiv1Futur1Du
        if (!text.elementsEqual("-")) {
            c.konjunktiv1Futur1Du = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.konjunktiv1Futur1Er
        if (!text.elementsEqual("-")) {
            c.konjunktiv1Futur1Er = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.konjunktiv1Futur1Wir.elementsEqual("-")) {
            c.konjunktiv1Futur1Wir = Constants.NOUS + c.konjunktiv1Futur1Wir
        }
        if (!c.konjunktiv1Futur1Ihr.elementsEqual("-")) {
            c.konjunktiv1Futur1Ihr = Constants.VOUS + c.konjunktiv1Futur1Ihr
        }
        text = c.konjunktiv1Futur1Sie
        if (!text.elementsEqual("-")) {
            c.konjunktiv1Futur1Sie = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveConditionnelPasse(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.konjunktiv2Futur2Ich
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.konjunktiv2Futur2Ich = ppInv ? text : text + "(e)"
        }
        text = c.konjunktiv2Futur2Du
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.konjunktiv2Futur2Du = ppInv ? text : text + "(e)"
        }
        text = c.konjunktiv2Futur2Er
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.konjunktiv2Futur2Er = ppInv ? text : text + "(e)"
        }
        if (!c.konjunktiv2Futur2Wir.elementsEqual("-")) {
            text = Constants.NOUS + c.konjunktiv2Futur2Wir
            c.konjunktiv2Futur2Wir = ppInv ? text : text + "(e)s"
        }
        if (!c.konjunktiv2Futur2Ihr.elementsEqual("-")) {
            text = Constants.VOUS + c.konjunktiv2Futur2Ihr
            c.konjunktiv2Futur2Ihr = ppInv ? text : text + "(e)s"
        }
        text = c.konjunktiv2Futur2Sie
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.konjunktiv2Futur2Sie = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveConditionnelPresent(_ c : Conjugation) {
        var text : String = c.konjunktiv2Futur1Ich
        if (!text.elementsEqual("-")) {
            c.konjunktiv2Futur1Ich = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.konjunktiv2Futur1Du
        if (!text.elementsEqual("-")) {
            c.konjunktiv2Futur1Du = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.konjunktiv2Futur1Er
        if (!text.elementsEqual("-")) {
            c.konjunktiv2Futur1Er = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.konjunktiv2Futur1Wir.elementsEqual("-")) {
            c.konjunktiv2Futur1Wir = Constants.NOUS + c.konjunktiv2Futur1Wir
        }
        if (!c.konjunktiv2Futur1Ihr.elementsEqual("-")) {
            c.konjunktiv2Futur1Ihr = Constants.VOUS + c.konjunktiv2Futur1Ihr
        }
        text = c.konjunktiv2Futur1Sie
        if (!text.elementsEqual("-")) {
            c.konjunktiv2Futur1Sie = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveIndicatifFuturAnterieur(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.konjunktiv1PerfektIch
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.konjunktiv1PerfektIch = ppInv ? text : text + "(e)"
        }
        text = c.konjunktiv1PerfektDu
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.konjunktiv1PerfektDu = ppInv ? text : text + "(e)"
        }
        text = c.konjunktiv1PerfektEr
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.konjunktiv1PerfektEr = ppInv ? text : text + "(e)"
        }
        if (!c.konjunktiv1PerfektWir.elementsEqual("-")) {
            text = Constants.NOUS + c.konjunktiv1PerfektWir
            c.konjunktiv1PerfektWir = ppInv ? text : text + "(e)s"
        }
        if (!c.konjunktiv1PerfektIhr.elementsEqual("-")) {
            text = Constants.VOUS + c.konjunktiv1PerfektIhr
            c.konjunktiv1PerfektIhr = ppInv ? text : text + "(e)s"
        }
        text = c.konjunktiv1PerfektSie
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.konjunktiv1PerfektSie = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveIndicatifFuturSimple(_ c : Conjugation) {
        var text : String = c.konjunktiv1PrasensIch
        if (!text.elementsEqual("-")) {
            c.konjunktiv1PrasensIch = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.konjunktiv1PrasensDu
        if (!text.elementsEqual("-")) {
            c.konjunktiv1PrasensDu = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.konjunktiv1PrasensEr
        if (!text.elementsEqual("-")) {
            c.konjunktiv1PrasensEr = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.konjunktiv1PrasensWir.elementsEqual("-")) {
            c.konjunktiv1PrasensWir = Constants.NOUS + c.konjunktiv1PrasensWir
        }
        if (!c.konjunktiv1PrasensIhr.elementsEqual("-")) {
            c.konjunktiv1PrasensIhr = Constants.VOUS + c.konjunktiv1PrasensIhr
        }
        text = c.konjunktiv1PrasensSie
        if (!text.elementsEqual("-")) {
            c.konjunktiv1PrasensSie = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveIndicatifPasseAnterieur(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.indikativFutur2Ich
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.indikativFutur2Ich = ppInv ? text : text + "(e)"
        }
        text = c.indikativFutur2Du
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.indikativFutur2Du = ppInv ? text : text + "(e)"
        }
        text = c.indikativFutur2Er
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indikativFutur2Er = ppInv ? text : text + "(e)"
        }
        if (!c.indikativFutur2Wir.elementsEqual("-")) {
            text = Constants.NOUS + c.indikativFutur2Wir
            c.indikativFutur2Wir = ppInv ? text : text + "(e)s"
        }
        if (!c.indikativFutur2Ihr.elementsEqual("-")) {
            text = Constants.VOUS + c.indikativFutur2Ihr
            c.indikativFutur2Ihr = ppInv ? text : text + "(e)s"
        }
        text = c.indikativFutur2Sie
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indikativFutur2Sie = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveIndicatifPasseSimple(_ c : Conjugation) {
        var text : String = c.indikativFutur1Ich
        if (!text.elementsEqual("-")) {
            c.indikativFutur1Ich = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.indikativFutur1Du
        if (!text.elementsEqual("-")) {
            c.indikativFutur1Du = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.indikativFutur1Er
        if (!text.elementsEqual("-")) {
            c.indikativFutur1Er = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.indikativFutur1Wir.elementsEqual("-")) {
            c.indikativFutur1Wir = Constants.NOUS + c.indikativFutur1Wir
        }
        if (!c.indikativFutur1Ihr.elementsEqual("-")) {
            c.indikativFutur1Ihr = Constants.VOUS + c.indikativFutur1Ihr
        }
        text = c.indikativFutur1Sie
        if (!text.elementsEqual("-")) {
            c.indikativFutur1Sie = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveIndicatifPlusQueParfait(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.indikativPlusquamperfektIch
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.indikativPlusquamperfektIch = ppInv ? text : text + "(e)"
        }
        text = c.indikativPlusquamperfektDu
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.indikativPlusquamperfektDu = ppInv ? text : text + "(e)"
        }
        text = c.indikativPlusquamperfektEr
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indikativPlusquamperfektEr = ppInv ? text : text + "(e)"
        }
        if (!c.indikativPlusquamperfektWir.elementsEqual("-")) {
            text = Constants.NOUS + c.indikativPlusquamperfektWir
            c.indikativPlusquamperfektWir = ppInv ? text : text + "(e)s"
        }
        if (!c.indikativPlusquamperfektIhr.elementsEqual("-")) {
            text = Constants.VOUS + c.indikativPlusquamperfektIhr
            c.indikativPlusquamperfektIhr = ppInv ? text : text + "(e)s"
        }
        text = c.indikativPlusquamperfektSie
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indikativPlusquamperfektSie = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveIndicatifImperfait(_ c : Conjugation) {
        var text : String = c.indikativPerfektIch
        if (!text.elementsEqual("-")) {
            c.indikativPerfektIch = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.indikativPerfektDu
        if (!text.elementsEqual("-")) {
            c.indikativPerfektDu = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.indikativPerfektEr
        if (!text.elementsEqual("-")) {
            c.indikativPerfektEr = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.indikativPerfektWir.elementsEqual("-")) {
            c.indikativPerfektWir = Constants.NOUS + c.indikativPerfektWir
        }
        if (!c.indikativPerfektIhr.elementsEqual("-")) {
            c.indikativPerfektIhr = Constants.VOUS + c.indikativPerfektIhr
        }
        text = c.indikativPerfektSie
        if (!text.elementsEqual("-")) {
            c.indikativPerfektSie = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveIndicatifPasseCompose(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.indikativPrateritumIch
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.indikativPrateritumIch = ppInv ? text : text + "(e)"
        }
        text = c.indikativPrateritumDu
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.indikativPrateritumDu = ppInv ? text : text + "(e)"
        }
        text = c.indikativPrateritumEr
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indikativPrateritumEr = ppInv ? text : text + "(e)"
        }
        if (!c.indikativPrateritumWir.elementsEqual("-")) {
            text = Constants.NOUS + c.indikativPrateritumWir
            c.indikativPrateritumWir = ppInv ? text : text + "(e)s"
        }
        if (!c.indikativPrateritumIhr.elementsEqual("-")) {
            text = Constants.VOUS + c.indikativPrateritumIhr
            c.indikativPrateritumIhr = ppInv ? text : text + "(e)s"
        }
        text = c.indikativPrateritumSie
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indikativPrateritumSie = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveIndicatifPresent(_ c : Conjugation) {
        var text : String = c.indikativPrasensIch
        if (!text.elementsEqual("-")) {
            c.indikativPrasensIch = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.indikativPrasensDu
        if (!text.elementsEqual("-")) {
            c.indikativPrasensDu = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.indikativPrasensEr
        if (!text.elementsEqual("-")) {
            c.indikativPrasensEr = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.indikativPrasensWir.elementsEqual("-")) {
            c.indikativPrasensWir = Constants.NOUS + c.indikativPrasensWir
        }
        if (!c.indikativPrasensIhr.elementsEqual("-")) {
            c.indikativPrasensIhr = Constants.VOUS + c.indikativPrasensIhr
        }
        text = c.indikativPrasensSie
        if (!text.elementsEqual("-")) {
            c.indikativPrasensSie = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }*/
    
    
    /**
     * Ads the pronoms
     */
    private func addPronoms(_ c : Conjugation) {
        // Add pronoms
        // TODO: Show pronoms in different color
        addPronomsIndicatifPresent(c)
        addPronomsIndicatifPasseCompose(c)
        addPronomsIndicatifImperfait(c)
        addPronomsIndicatifPlusQueParfait(c)
        addPronomsIndicatifPasseSimple(c)
        addPronomsIndicatifPasseAnterieur(c)
        addPronomsIndicatifFuturSimple(c)
        addPronomsIndicatifFuturAnterieur(c)
        addPronomsConditionnelPresent(c)
        addPronomsConditionnelPasse(c)
        addPronomsSubjonctifPresent(c)
        addPronomsSubjonctifPasse(c)
        addPronomsSubjonctifImperfait(c)
        addPronomsSubjonctifPlusQueParfait(c)
    }
    
    private func addPronomsSubjonctifPlusQueParfait(_ c : Conjugation) {
        let text : String = c.konjunktiv2PlusquamperfektIch
        if (!text.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektIch = ViewUtils.useApostrophe(text) ? Constants.QUE + Constants.JEA + text : Constants.QUE + Constants.JE + text
        }
        if (!c.konjunktiv2PlusquamperfektDu.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektDu = Constants.QUE + Constants.TU + c.konjunktiv2PlusquamperfektDu
        }
        if (!c.konjunktiv2PlusquamperfektEr.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektEr = Constants.QUEA + Constants.IL + c.konjunktiv2PlusquamperfektEr
        }
        if (!c.konjunktiv2PlusquamperfektWir.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektWir = Constants.QUE + Constants.NOUS + c.konjunktiv2PlusquamperfektWir
        }
        if (!c.konjunktiv2PlusquamperfektIhr.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektIhr = Constants.QUE + Constants.VOUS + c.konjunktiv2PlusquamperfektIhr
        }
        if (!c.konjunktiv2PlusquamperfektSie.elementsEqual("-")) {
            c.konjunktiv2PlusquamperfektSie = Constants.QUEA + Constants.ILS + c.konjunktiv2PlusquamperfektSie
        }
    }
    
    private func addPronomsSubjonctifImperfait(_ c : Conjugation) {
        let text : String = c.konjunktiv2PrateritumIch
        if (!text.elementsEqual("-")) {
            c.konjunktiv2PrateritumIch = ViewUtils.useApostrophe(text) ? Constants.QUE + Constants.JEA + text : Constants.QUE + Constants.JE + text
        }
        if (!c.konjunktiv2PrateritumDu.elementsEqual("-")) {
            c.konjunktiv2PrateritumDu = Constants.QUE + Constants.TU + c.konjunktiv2PrateritumDu
        }
        if (!c.konjunktiv2PrateritumEr.elementsEqual("-")) {
            c.konjunktiv2PrateritumEr = Constants.QUEA + Constants.IL + c.konjunktiv2PrateritumEr
        }
        if (!c.konjunktiv2PrateritumWir.elementsEqual("-")) {
            c.konjunktiv2PrateritumWir = Constants.QUE + Constants.NOUS + c.konjunktiv2PrateritumWir
        }
        if (!c.konjunktiv2PrateritumIhr.elementsEqual("-")) {
            c.konjunktiv2PrateritumIhr = Constants.QUE + Constants.VOUS + c.konjunktiv2PrateritumIhr
        }
        if (!c.konjunktiv2PrateritumSie.elementsEqual("-")) {
            c.konjunktiv2PrateritumSie = Constants.QUEA + Constants.ILS + c.konjunktiv2PrateritumSie
        }
    }
    
    private func addPronomsSubjonctifPasse(_ c : Conjugation) {
        let text : String = c.konjunktiv1Futur2Ich
        if (!text.elementsEqual("-")) {
            c.konjunktiv1Futur2Ich = ViewUtils.useApostrophe(text) ? Constants.QUE + Constants.JEA + text : Constants.QUE + Constants.JE + text
        }
        if (!c.konjunktiv1Futur2Du.elementsEqual("-")) {
            c.konjunktiv1Futur2Du = Constants.QUE + Constants.TU + c.konjunktiv1Futur2Du
        }
        if (!c.konjunktiv1Futur2Er.elementsEqual("-")) {
            c.konjunktiv1Futur2Er = Constants.QUEA + Constants.IL + c.konjunktiv1Futur2Er
        }
        if (!c.konjunktiv1Futur2Wir.elementsEqual("-")) {
            c.konjunktiv1Futur2Wir = Constants.QUE + Constants.NOUS + c.konjunktiv1Futur2Wir
        }
        if (!c.konjunktiv1Futur2Ihr.elementsEqual("-")) {
            c.konjunktiv1Futur2Ihr = Constants.QUE + Constants.VOUS + c.konjunktiv1Futur2Ihr
        }
        if (!c.konjunktiv1Futur2Sie.elementsEqual("-")) {
            c.konjunktiv1Futur2Sie = Constants.QUEA + Constants.ILS + c.konjunktiv1Futur2Sie
        }
    }
    
    private func addPronomsSubjonctifPresent(_ c : Conjugation) {
        let text : String = c.konjunktiv1Futur1Ich
        if (!text.elementsEqual("-")) {
            c.konjunktiv1Futur1Ich = ViewUtils.useApostrophe(text) ? Constants.QUE + Constants.JEA + text : Constants.QUE + Constants.JE + text
        }
        if (!c.konjunktiv1Futur1Du.elementsEqual("-")) {
            c.konjunktiv1Futur1Du = Constants.QUE + Constants.TU + c.konjunktiv1Futur1Du
        }
        if (!c.konjunktiv1Futur1Er.elementsEqual("-")) {
            c.konjunktiv1Futur1Er = Constants.QUEA + Constants.IL + c.konjunktiv1Futur1Er
        }
        if (!c.konjunktiv1Futur1Wir.elementsEqual("-")) {
            c.konjunktiv1Futur1Wir = Constants.QUE + Constants.NOUS + c.konjunktiv1Futur1Wir
        }
        if (!c.konjunktiv1Futur1Ihr.elementsEqual("-")) {
            c.konjunktiv1Futur1Ihr = Constants.QUE + Constants.VOUS + c.konjunktiv1Futur1Ihr
        }
        if (!c.konjunktiv1Futur1Sie.elementsEqual("-")) {
            c.konjunktiv1Futur1Sie = Constants.QUEA + Constants.ILS + c.konjunktiv1Futur1Sie
        }
    }
    
    private func addPronomsConditionnelPasse(_ c : Conjugation) {
        let text : String = c.konjunktiv2Futur2Ich
        if (!text.elementsEqual("-")) {
            c.konjunktiv2Futur2Ich = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.konjunktiv2Futur2Du.elementsEqual("-")) {
            c.konjunktiv2Futur2Du = Constants.TU + c.konjunktiv2Futur2Du
        }
        if (!c.konjunktiv2Futur2Er.elementsEqual("-")) {
            c.konjunktiv2Futur2Er = Constants.IL + c.konjunktiv2Futur2Er
        }
        if (!c.konjunktiv2Futur2Wir.elementsEqual("-")) {
            c.konjunktiv2Futur2Wir = Constants.NOUS + c.konjunktiv2Futur2Wir
        }
        if (!c.konjunktiv2Futur2Ihr.elementsEqual("-")) {
            c.konjunktiv2Futur2Ihr = Constants.VOUS + c.konjunktiv2Futur2Ihr
        }
        if (!c.konjunktiv2Futur2Sie.elementsEqual("-")) {
            c.konjunktiv2Futur2Sie = Constants.ILS + c.konjunktiv2Futur2Sie
        }
    }
    
    private func addPronomsConditionnelPresent(_ c : Conjugation) {
        let text : String = c.konjunktiv2Futur1Ich
        if (!text.elementsEqual("-")) {
            c.konjunktiv2Futur1Ich = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.konjunktiv2Futur1Du.elementsEqual("-")) {
            c.konjunktiv2Futur1Du = Constants.TU + c.konjunktiv2Futur1Du
        }
        if (!c.konjunktiv2Futur1Er.elementsEqual("-")) {
            c.konjunktiv2Futur1Er = Constants.IL + c.konjunktiv2Futur1Er
        }
        if (!c.konjunktiv2Futur1Wir.elementsEqual("-")) {
            c.konjunktiv2Futur1Wir = Constants.NOUS + c.konjunktiv2Futur1Wir
        }
        if (!c.konjunktiv2Futur1Ihr.elementsEqual("-")) {
            c.konjunktiv2Futur1Ihr = Constants.VOUS + c.konjunktiv2Futur1Ihr
        }
        if (!c.konjunktiv2Futur1Sie.elementsEqual("-")) {
            c.konjunktiv2Futur1Sie = Constants.ILS + c.konjunktiv2Futur1Sie
        }
    }
    
    private func addPronomsIndicatifFuturAnterieur(_ c : Conjugation) {
        let text : String = c.konjunktiv1PerfektIch
        if (!text.elementsEqual("-")) {
            c.konjunktiv1PerfektIch = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.konjunktiv1PerfektDu.elementsEqual("-")) {
            c.konjunktiv1PerfektDu = Constants.TU + c.konjunktiv1PerfektDu
        }
        if (!c.konjunktiv1PerfektEr.elementsEqual("-")) {
            c.konjunktiv1PerfektEr = Constants.IL + c.konjunktiv1PerfektEr
        }
        if (!c.konjunktiv1PerfektWir.elementsEqual("-")) {
            c.konjunktiv1PerfektWir = Constants.NOUS + c.konjunktiv1PerfektWir
        }
        if (!c.konjunktiv1PerfektIhr.elementsEqual("-")) {
            c.konjunktiv1PerfektIhr = Constants.VOUS + c.konjunktiv1PerfektIhr
        }
        if (!c.konjunktiv1PerfektSie.elementsEqual("-")) {
            c.konjunktiv1PerfektSie = Constants.ILS + c.konjunktiv1PerfektSie
        }
    }
    
    private func addPronomsIndicatifFuturSimple(_ c : Conjugation) {
        let text : String = c.konjunktiv1PrasensIch
        if (!text.elementsEqual("-")) {
            c.konjunktiv1PrasensIch = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.konjunktiv1PrasensDu.elementsEqual("-")) {
            c.konjunktiv1PrasensDu = Constants.TU + c.konjunktiv1PrasensDu
        }
        if (!c.konjunktiv1PrasensEr.elementsEqual("-")) {
            c.konjunktiv1PrasensEr = Constants.IL + c.konjunktiv1PrasensEr
        }
        if (!c.konjunktiv1PrasensWir.elementsEqual("-")) {
            c.konjunktiv1PrasensWir = Constants.NOUS + c.konjunktiv1PrasensWir
        }
        if (!c.konjunktiv1PrasensIhr.elementsEqual("-")) {
            c.konjunktiv1PrasensIhr = Constants.VOUS + c.konjunktiv1PrasensIhr
        }
        if (!c.konjunktiv1PrasensSie.elementsEqual("-")) {
            c.konjunktiv1PrasensSie = Constants.ILS + c.konjunktiv1PrasensSie
        }
    }
    
    private func addPronomsIndicatifPasseAnterieur(_ c : Conjugation) {
        let text : String = c.indikativFutur2Ich
        if (!text.elementsEqual("-")) {
            c.indikativFutur2Ich = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indikativFutur2Du.elementsEqual("-")) {
            c.indikativFutur2Du = Constants.TU + c.indikativFutur2Du
        }
        if (!c.indikativFutur2Er.elementsEqual("-")) {
            c.indikativFutur2Er = Constants.IL + c.indikativFutur2Er
        }
        if (!c.indikativFutur2Wir.elementsEqual("-")) {
            c.indikativFutur2Wir = Constants.NOUS + c.indikativFutur2Wir
        }
        if (!c.indikativFutur2Ihr.elementsEqual("-")) {
            c.indikativFutur2Ihr = Constants.VOUS + c.indikativFutur2Ihr
        }
        if (!c.indikativFutur2Sie.elementsEqual("-")) {
            c.indikativFutur2Sie = Constants.ILS + c.indikativFutur2Sie
        }
    }
    
    private func addPronomsIndicatifPasseSimple(_ c : Conjugation) {
        let text : String = c.indikativFutur1Ich
        if (!text.elementsEqual("-")) {
            c.indikativFutur1Ich = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indikativFutur1Du.elementsEqual("-")) {
            c.indikativFutur1Du = Constants.TU + c.indikativFutur1Du
        }
        if (!c.indikativFutur1Er.elementsEqual("-")) {
            c.indikativFutur1Er = Constants.IL + c.indikativFutur1Er
        }
        if (!c.indikativFutur1Wir.elementsEqual("-")) {
            c.indikativFutur1Wir = Constants.NOUS + c.indikativFutur1Wir
        }
        if (!c.indikativFutur1Ihr.elementsEqual("-")) {
            c.indikativFutur1Ihr = Constants.VOUS + c.indikativFutur1Ihr
        }
        if (!c.indikativFutur1Sie.elementsEqual("-")) {
            c.indikativFutur1Sie = Constants.ILS + c.indikativFutur1Sie
        }
    }
    
    private func addPronomsIndicatifPlusQueParfait(_ c : Conjugation) {
        let text : String = c.indikativPlusquamperfektIch
        if (!text.elementsEqual("-")) {
            c.indikativPlusquamperfektIch = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indikativPlusquamperfektDu.elementsEqual("-")) {
            c.indikativPlusquamperfektDu = Constants.TU + c.indikativPlusquamperfektDu
        }
        if (!c.indikativPlusquamperfektEr.elementsEqual("-")) {
            c.indikativPlusquamperfektEr = Constants.IL + c.indikativPlusquamperfektEr
        }
        if (!c.indikativPlusquamperfektWir.elementsEqual("-")) {
            c.indikativPlusquamperfektWir = Constants.NOUS + c.indikativPlusquamperfektWir
        }
        if (!c.indikativPlusquamperfektIhr.elementsEqual("-")) {
            c.indikativPlusquamperfektIhr = Constants.VOUS + c.indikativPlusquamperfektIhr
        }
        if (!c.indikativPlusquamperfektSie.elementsEqual("-")) {
            c.indikativPlusquamperfektSie = Constants.ILS + c.indikativPlusquamperfektSie
        }
    }
    
    private func addPronomsIndicatifImperfait(_ c : Conjugation) {
        let text : String = c.indikativPerfektIch
        if (!text.elementsEqual("-")) {
            c.indikativPerfektIch = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indikativPerfektDu.elementsEqual("-")) {
            c.indikativPerfektDu = Constants.TU + c.indikativPerfektDu
        }
        if (!c.indikativPerfektEr.elementsEqual("-")) {
            c.indikativPerfektEr = Constants.IL + c.indikativPerfektEr
        }
        if (!c.indikativPerfektWir.elementsEqual("-")) {
            c.indikativPerfektWir = Constants.NOUS + c.indikativPerfektWir
        }
        if (!c.indikativPerfektIhr.elementsEqual("-")) {
            c.indikativPerfektIhr = Constants.VOUS + c.indikativPerfektIhr
        }
        if (!c.indikativPerfektSie.elementsEqual("-")) {
            c.indikativPerfektSie = Constants.ILS + c.indikativPerfektSie
        }
    }
    
    private func addPronomsIndicatifPasseCompose(_ c : Conjugation) {
        let text : String = c.indikativPrateritumIch
        if (!text.elementsEqual("-")) {
            c.indikativPrateritumIch = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indikativPrateritumDu.elementsEqual("-")) {
            c.indikativPrateritumDu = Constants.TU + c.indikativPrateritumDu
        }
        if (!c.indikativPrateritumEr.elementsEqual("-")) {
            c.indikativPrateritumEr = Constants.IL + c.indikativPrateritumEr
        }
        if (!c.indikativPrateritumWir.elementsEqual("-")) {
            c.indikativPrateritumWir = Constants.NOUS + c.indikativPrateritumWir
        }
        if (!c.indikativPrateritumIhr.elementsEqual("-")) {
            c.indikativPrateritumIhr = Constants.VOUS + c.indikativPrateritumIhr
        }
        if (!c.indikativPrateritumSie.elementsEqual("-")) {
            c.indikativPrateritumSie = Constants.ILS + c.indikativPrateritumSie
        }
    }
    
    private func addPronomsIndicatifPresent(_ c : Conjugation) {
        let text : String = c.indikativPrasensIch
        if (!text.elementsEqual("-")) {
            c.indikativPrasensIch = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indikativPrasensDu.elementsEqual("-")) {
            c.indikativPrasensDu = Constants.TU + c.indikativPrasensDu
        }
        if (!c.indikativPrasensEr.elementsEqual("-")) {
            c.indikativPrasensEr = Constants.IL + c.indikativPrasensEr
        }
        if (!c.indikativPrasensWir.elementsEqual("-")) {
            c.indikativPrasensWir = Constants.NOUS + c.indikativPrasensWir
        }
        if (!c.indikativPrasensIhr.elementsEqual("-")) {
            c.indikativPrasensIhr = Constants.VOUS + c.indikativPrasensIhr
        }
        if (!c.indikativPrasensSie.elementsEqual("-")) {
            c.indikativPrasensSie = Constants.ILS + c.indikativPrasensSie
        }
    }
    
    /**
     * Marks the conjugations as "-"
     */
    private func ignoreConjugations(_ c : Conjugation) {
        ignoreIndicatifPresent(c)
        ignoreIndicatifPasseCompose(c)
        ignoreIndicatifImperfait(c)
        ignoreIndicatifPlusQueParfait(c)
        ignoreIndicatifPasseSimple(c)
        ignoreIndicatifPasseAnterieur(c)
        ignoreIndicatifFuturSimple(c)
        ignoreIndicatifFuturAnterieur(c)
        ignoreConditionnelPresent(c)
        ignoreConditionnelPasse(c)
        ignoreSubjonctifPresent(c)
        ignoreSubjonctifPasse(c)
        ignoreSubjonctifImperfait(c)
        ignoreSubjonctifPlusQueParfait(c)
        
        ignoreImperatif(c)
        c.infinitivPerfekt = "-"
        c.partizipPrasens = "-"
        c.partizipPerfekt = "-"
    }
    
    private func ignoreIndicatifPresent(_ c : Conjugation) {
        c.indikativPrasensIch = "-"
        c.indikativPrasensDu = "-"
        c.indikativPrasensEr = "-"
        c.indikativPrasensWir = "-"
        c.indikativPrasensIhr = "-"
        c.indikativPrasensSie = "-"
    }
    
    private func ignoreIndicatifPresentNousVousIls(_ c : Conjugation) {
        c.indikativPrasensWir = "-"
        c.indikativPrasensIhr = "-"
        c.indikativPrasensSie = "-"
    }
    
    private func ignoreIndicatifPasseCompose(_ c : Conjugation) {
        c.indikativPrateritumIch = "-"
        c.indikativPrateritumDu = "-"
        c.indikativPrateritumEr = "-"
        c.indikativPrateritumWir = "-"
        c.indikativPrateritumIhr = "-"
        c.indikativPrateritumSie = "-"
    }
    
    private func ignoreIndicatifImperfait(_ c : Conjugation) {
        c.indikativPerfektIch = "-"
        c.indikativPerfektDu = "-"
        c.indikativPerfektEr = "-"
        c.indikativPerfektWir = "-"
        c.indikativPerfektIhr = "-"
        c.indikativPerfektSie = "-"
    }
    
    private func ignoreIndicatifPlusQueParfait(_ c : Conjugation) {
        c.indikativPlusquamperfektIch = "-"
        c.indikativPlusquamperfektDu = "-"
        c.indikativPlusquamperfektEr = "-"
        c.indikativPlusquamperfektWir = "-"
        c.indikativPlusquamperfektIhr = "-"
        c.indikativPlusquamperfektSie = "-"
    }
    
    private func ignoreIndicatifPasseSimple(_ c : Conjugation) {
        c.indikativFutur1Ich = "-"
        c.indikativFutur1Du = "-"
        c.indikativFutur1Er = "-"
        c.indikativFutur1Wir = "-"
        c.indikativFutur1Ihr = "-"
        c.indikativFutur1Sie = "-"
    }
    
    private func ignoreIndicatifPasseAnterieur(_ c : Conjugation) {
        c.indikativFutur2Ich = "-"
        c.indikativFutur2Du = "-"
        c.indikativFutur2Er = "-"
        c.indikativFutur2Wir = "-"
        c.indikativFutur2Ihr = "-"
        c.indikativFutur2Sie = "-"
    }
    
    private func ignoreIndicatifFuturSimple(_ c : Conjugation) {
        c.konjunktiv1PrasensIch = "-"
        c.konjunktiv1PrasensDu = "-"
        c.konjunktiv1PrasensEr = "-"
        c.konjunktiv1PrasensWir = "-"
        c.konjunktiv1PrasensIhr = "-"
        c.konjunktiv1PrasensSie = "-"
    }
    
    private func ignoreIndicatifFuturAnterieur(_ c : Conjugation) {
        c.konjunktiv1PerfektIch = "-"
        c.konjunktiv1PerfektDu = "-"
        c.konjunktiv1PerfektEr = "-"
        c.konjunktiv1PerfektWir = "-"
        c.konjunktiv1PerfektIhr = "-"
        c.konjunktiv1PerfektSie = "-"
    }
    
    private func ignoreConditionnelPresent(_ c : Conjugation) {
        c.konjunktiv2Futur1Ich = "-"
        c.konjunktiv2Futur1Du = "-"
        c.konjunktiv2Futur1Er = "-"
        c.konjunktiv2Futur1Wir = "-"
        c.konjunktiv2Futur1Ihr = "-"
        c.konjunktiv2Futur1Sie = "-"
    }
    
    private func ignoreConditionnelPasse(_ c : Conjugation) {
        c.konjunktiv2Futur2Ich = "-"
        c.konjunktiv2Futur2Du = "-"
        c.konjunktiv2Futur2Er = "-"
        c.konjunktiv2Futur2Wir = "-"
        c.konjunktiv2Futur2Ihr = "-"
        c.konjunktiv2Futur2Sie = "-"
    }
    
    private func ignoreSubjonctifPresent(_ c : Conjugation) {
        c.konjunktiv1Futur1Ich = "-"
        c.konjunktiv1Futur1Du = "-"
        c.konjunktiv1Futur1Er = "-"
        c.konjunktiv1Futur1Wir = "-"
        c.konjunktiv1Futur1Ihr = "-"
        c.konjunktiv1Futur1Sie = "-"
    }
    
    private func ignoreSubjonctifPasse(_ c : Conjugation) {
        c.konjunktiv1Futur2Ich = "-"
        c.konjunktiv1Futur2Du = "-"
        c.konjunktiv1Futur2Er = "-"
        c.konjunktiv1Futur2Wir = "-"
        c.konjunktiv1Futur2Ihr = "-"
        c.konjunktiv1Futur2Sie = "-"
    }
    
    private func ignoreSubjonctifImperfait(_ c : Conjugation) {
        c.konjunktiv2PrateritumIch = "-"
        c.konjunktiv2PrateritumDu = "-"
        c.konjunktiv2PrateritumEr = "-"
        c.konjunktiv2PrateritumWir = "-"
        c.konjunktiv2PrateritumIhr = "-"
        c.konjunktiv2PrateritumSie = "-"
    }
    
    private func ignoreSubjonctifPlusQueParfait(_ c : Conjugation) {
        c.konjunktiv2PlusquamperfektIch = "-"
        c.konjunktiv2PlusquamperfektDu = "-"
        c.konjunktiv2PlusquamperfektEr = "-"
        c.konjunktiv2PlusquamperfektWir = "-"
        c.konjunktiv2PlusquamperfektIhr = "-"
        c.konjunktiv2PlusquamperfektSie = "-"
    }
    
    private func ignoreImperatif(_ c : Conjugation) {
        c.imperativDu = "-"
        c.imperativIhr = "-"
        c.imperativSie = "-"
    }
    
    private func ignoreImperatifNousVous(_ c : Conjugation) {
        c.imperativIhr = "-"
        c.imperativSie = "-"
    }
    
    /**
     * Marks the conjugations as "-" for all persons except il
     */
    private func ignoreAllPersonsExceptIl(_ c : Conjugation) {
        c.indikativPrasensIch = "-"
        c.indikativPrasensDu = "-"
        c.indikativPrasensWir = "-"
        c.indikativPrasensIhr = "-"
        c.indikativPrasensSie = "-"
        
        c.indikativPrateritumIch = "-"
        c.indikativPrateritumDu = "-"
        c.indikativPrateritumWir = "-"
        c.indikativPrateritumIhr = "-"
        c.indikativPrateritumSie = "-"
        
        c.indikativPerfektIch = "-"
        c.indikativPerfektDu = "-"
        c.indikativPerfektWir = "-"
        c.indikativPerfektIhr = "-"
        c.indikativPerfektSie = "-"
        
        c.indikativPlusquamperfektIch = "-"
        c.indikativPlusquamperfektDu = "-"
        c.indikativPlusquamperfektWir = "-"
        c.indikativPlusquamperfektIhr = "-"
        c.indikativPlusquamperfektSie = "-"
        
        c.indikativFutur1Ich = "-"
        c.indikativFutur1Du = "-"
        c.indikativFutur1Wir = "-"
        c.indikativFutur1Ihr = "-"
        c.indikativFutur1Sie = "-"
        
        c.indikativFutur2Ich = "-"
        c.indikativFutur2Du = "-"
        c.indikativFutur2Wir = "-"
        c.indikativFutur2Ihr = "-"
        c.indikativFutur2Sie = "-"
        
        c.konjunktiv1PrasensIch = "-"
        c.konjunktiv1PrasensDu = "-"
        c.konjunktiv1PrasensWir = "-"
        c.konjunktiv1PrasensIhr = "-"
        c.konjunktiv1PrasensSie = "-"
        
        c.konjunktiv1PerfektIch = "-"
        c.konjunktiv1PerfektDu = "-"
        c.konjunktiv1PerfektWir = "-"
        c.konjunktiv1PerfektIhr = "-"
        c.konjunktiv1PerfektSie = "-"
        
        c.konjunktiv2Futur1Ich = "-"
        c.konjunktiv2Futur1Du = "-"
        c.konjunktiv2Futur1Wir = "-"
        c.konjunktiv2Futur1Ihr = "-"
        c.konjunktiv2Futur1Sie = "-"
        
        c.konjunktiv2Futur2Ich = "-"
        c.konjunktiv2Futur2Du = "-"
        c.konjunktiv2Futur2Wir = "-"
        c.konjunktiv2Futur2Ihr = "-"
        c.konjunktiv2Futur2Sie = "-"
        
        c.konjunktiv1Futur1Ich = "-"
        c.konjunktiv1Futur1Du = "-"
        c.konjunktiv1Futur1Wir = "-"
        c.konjunktiv1Futur1Ihr = "-"
        c.konjunktiv1Futur1Sie = "-"
        
        c.konjunktiv1Futur2Ich = "-"
        c.konjunktiv1Futur2Du = "-"
        c.konjunktiv1Futur2Wir = "-"
        c.konjunktiv1Futur2Ihr = "-"
        c.konjunktiv1Futur2Sie = "-"
        
        c.konjunktiv2PrateritumIch = "-"
        c.konjunktiv2PrateritumDu = "-"
        c.konjunktiv2PrateritumWir = "-"
        c.konjunktiv2PrateritumIhr = "-"
        c.konjunktiv2PrateritumSie = "-"
        
        c.konjunktiv2PlusquamperfektIch = "-"
        c.konjunktiv2PlusquamperfektDu = "-"
        c.konjunktiv2PlusquamperfektWir = "-"
        c.konjunktiv2PlusquamperfektIhr = "-"
        c.konjunktiv2PlusquamperfektSie = "-"
        
        ignoreImperatif(c)
    }
    
    /**
     * Marks the conjugations as "-" for all persons except il and ils.
     */
    private func ignoreAllPersonsExceptIlAndIls(_ c : Conjugation) {
        c.indikativPrasensIch = "-"
        c.indikativPrasensDu = "-"
        c.indikativPrasensWir = "-"
        c.indikativPrasensIhr = "-"
        
        c.indikativPrateritumIch = "-"
        c.indikativPrateritumDu = "-"
        c.indikativPrateritumWir = "-"
        c.indikativPrateritumIhr = "-"
        
        c.indikativPerfektIch = "-"
        c.indikativPerfektDu = "-"
        c.indikativPerfektWir = "-"
        c.indikativPerfektIhr = "-"
        
        c.indikativPlusquamperfektIch = "-"
        c.indikativPlusquamperfektDu = "-"
        c.indikativPlusquamperfektWir = "-"
        c.indikativPlusquamperfektIhr = "-"
        
        c.indikativFutur1Ich = "-"
        c.indikativFutur1Du = "-"
        c.indikativFutur1Wir = "-"
        c.indikativFutur1Ihr = "-"
        
        c.indikativFutur2Ich = "-"
        c.indikativFutur2Du = "-"
        c.indikativFutur2Wir = "-"
        c.indikativFutur2Ihr = "-"
        
        c.konjunktiv1PrasensIch = "-"
        c.konjunktiv1PrasensDu = "-"
        c.konjunktiv1PrasensWir = "-"
        c.konjunktiv1PrasensIhr = "-"
        
        c.konjunktiv1PerfektIch = "-"
        c.konjunktiv1PerfektDu = "-"
        c.konjunktiv1PerfektWir = "-"
        c.konjunktiv1PerfektIhr = "-"
        
        c.konjunktiv2Futur1Ich = "-"
        c.konjunktiv2Futur1Du = "-"
        c.konjunktiv2Futur1Wir = "-"
        c.konjunktiv2Futur1Ihr = "-"
        
        c.konjunktiv2Futur2Ich = "-"
        c.konjunktiv2Futur2Du = "-"
        c.konjunktiv2Futur2Wir = "-"
        c.konjunktiv2Futur2Ihr = "-"
        
        c.konjunktiv1Futur1Ich = "-"
        c.konjunktiv1Futur1Du = "-"
        c.konjunktiv1Futur1Wir = "-"
        c.konjunktiv1Futur1Ihr = "-"
        
        c.konjunktiv1Futur2Ich = "-"
        c.konjunktiv1Futur2Du = "-"
        c.konjunktiv1Futur2Wir = "-"
        c.konjunktiv1Futur2Ihr = "-"
        
        c.konjunktiv2PrateritumIch = "-"
        c.konjunktiv2PrateritumDu = "-"
        c.konjunktiv2PrateritumWir = "-"
        c.konjunktiv2PrateritumIhr = "-"
        
        c.konjunktiv2PlusquamperfektIch = "-"
        c.konjunktiv2PlusquamperfektDu = "-"
        c.konjunktiv2PlusquamperfektWir = "-"
        c.konjunktiv2PlusquamperfektIhr = "-"
        
        ignoreImperatif(c)
    }
    
    private func ignoreAllPersonsExceptIlAndIlsIndicatif(_ c : Conjugation) {
        c.indikativPrasensIch = "-"
        c.indikativPrasensDu = "-"
        c.indikativPrasensWir = "-"
        c.indikativPrasensIhr = "-"
        
        ignoreIndicatifPasseCompose(c)
        
        c.indikativPerfektIch = "-"
        c.indikativPerfektDu = "-"
        c.indikativPerfektWir = "-"
        c.indikativPerfektIhr = "-"
        
        ignoreIndicatifPlusQueParfait(c)
        
        c.indikativFutur1Ich = "-"
        c.indikativFutur1Du = "-"
        c.indikativFutur1Wir = "-"
        c.indikativFutur1Ihr = "-"
        
        ignoreIndicatifPasseAnterieur(c)
        
        c.konjunktiv1PrasensIch = "-"
        c.konjunktiv1PrasensDu = "-"
        c.konjunktiv1PrasensWir = "-"
        c.konjunktiv1PrasensIhr = "-"
        
        ignoreIndicatifFuturAnterieur(c)
        
        c.konjunktiv2Futur1Ich = "-"
        c.konjunktiv2Futur1Du = "-"
        c.konjunktiv2Futur1Wir = "-"
        c.konjunktiv2Futur1Ihr = "-"
        
        ignoreConditionnelPasse(c)
        ignoreSubjonctifPresent(c)
        ignoreSubjonctifPasse(c)
        ignoreSubjonctifImperfait(c)
        ignoreSubjonctifPlusQueParfait(c)
        ignoreImperatif(c)
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
