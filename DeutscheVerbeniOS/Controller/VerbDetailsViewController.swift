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
    let speaker = Speaker("fr-FR")
    
    @IBOutlet weak var infinitive : UIButton!
    @IBOutlet weak var group : UILabel!
    @IBOutlet weak var translation : UILabel!
    @IBOutlet weak var definitionLabel : UILabel!
    @IBOutlet weak var definition : UIButton!
    @IBOutlet weak var examples : UILabel!
    @IBOutlet weak var sample1 : UIButton!
    @IBOutlet weak var sample2 : UIButton!
    @IBOutlet weak var sample3 : UIButton!
    @IBOutlet weak var image : UIImageView!
    
    @IBOutlet weak var infinitivePresent : UIButton!
    @IBOutlet weak var infinitivePasse : UIButton!
    @IBOutlet weak var participePresent : UIButton!
    @IBOutlet weak var participePasse1 : UIButton!
    @IBOutlet weak var participePasse2 : UIButton!
    @IBOutlet weak var gerondifPresent : UIButton!
    @IBOutlet weak var gerondifPasse : UIButton!
    @IBOutlet weak var imperatifPresentTu : UIButton!
    @IBOutlet weak var imperatifPresentNous : UIButton!
    @IBOutlet weak var imperatifPresentVous : UIButton!
    @IBOutlet weak var imperatifPasseTu : UIButton!
    @IBOutlet weak var imperatifPasseNous : UIButton!
    @IBOutlet weak var imperatifPasseVous : UIButton!
    
    @IBOutlet weak var indicatifPresentJe : UIButton!
    @IBOutlet weak var indicatifPresentTu : UIButton!
    @IBOutlet weak var indicatifPresentIl : UIButton!
    @IBOutlet weak var indicatifPresentNous : UIButton!
    @IBOutlet weak var indicatifPresentVous : UIButton!
    @IBOutlet weak var indicatifPresentIls : UIButton!
    @IBOutlet weak var indicatifPasseComposeJe : UIButton!
    @IBOutlet weak var indicatifPasseComposeTu : UIButton!
    @IBOutlet weak var indicatifPasseComposeIl : UIButton!
    @IBOutlet weak var indicatifPasseComposeNous : UIButton!
    @IBOutlet weak var indicatifPasseComposeVous : UIButton!
    @IBOutlet weak var indicatifPasseComposeIls : UIButton!
    @IBOutlet weak var indicatifImperfaitJe : UIButton!
    @IBOutlet weak var indicatifImperfaitTu : UIButton!
    @IBOutlet weak var indicatifImperfaitIl : UIButton!
    @IBOutlet weak var indicatifImperfaitNous : UIButton!
    @IBOutlet weak var indicatifImperfaitVous : UIButton!
    @IBOutlet weak var indicatifImperfaitIls : UIButton!
    @IBOutlet weak var indicatifPlusQueParfaitJe : UIButton!
    @IBOutlet weak var indicatifPlusQueParfaitTu : UIButton!
    @IBOutlet weak var indicatifPlusQueParfaitIl : UIButton!
    @IBOutlet weak var indicatifPlusQueParfaitNous : UIButton!
    @IBOutlet weak var indicatifPlusQueParfaitVous : UIButton!
    @IBOutlet weak var indicatifPlusQueParfaitIls : UIButton!
    @IBOutlet weak var indicatifPasseSimpleJe : UIButton!
    @IBOutlet weak var indicatifPasseSimpleTu : UIButton!
    @IBOutlet weak var indicatifPasseSimpleIl : UIButton!
    @IBOutlet weak var indicatifPasseSimpleNous : UIButton!
    @IBOutlet weak var indicatifPasseSimpleVous : UIButton!
    @IBOutlet weak var indicatifPasseSimpleIls : UIButton!
    @IBOutlet weak var indicatifPasseAnterieurJe : UIButton!
    @IBOutlet weak var indicatifPasseAnterieurTu : UIButton!
    @IBOutlet weak var indicatifPasseAnterieurIl : UIButton!
    @IBOutlet weak var indicatifPasseAnterieurNous : UIButton!
    @IBOutlet weak var indicatifPasseAnterieurVous : UIButton!
    @IBOutlet weak var indicatifPasseAnterieurIls : UIButton!
    @IBOutlet weak var indicatifFuturSimpleJe : UIButton!
    @IBOutlet weak var indicatifFuturSimpleTu : UIButton!
    @IBOutlet weak var indicatifFuturSimpleIl : UIButton!
    @IBOutlet weak var indicatifFuturSimpleNous : UIButton!
    @IBOutlet weak var indicatifFuturSimpleVous : UIButton!
    @IBOutlet weak var indicatifFuturSimpleIls : UIButton!
    @IBOutlet weak var indicatifFuturAnterieurJe : UIButton!
    @IBOutlet weak var indicatifFuturAnterieurTu : UIButton!
    @IBOutlet weak var indicatifFuturAnterieurIl : UIButton!
    @IBOutlet weak var indicatifFuturAnterieurNous : UIButton!
    @IBOutlet weak var indicatifFuturAnterieurVous : UIButton!
    @IBOutlet weak var indicatifFuturAnterieurIls : UIButton!
    
    @IBOutlet weak var subjonctifPresentJe : UIButton!
    @IBOutlet weak var subjonctifPresentTu : UIButton!
    @IBOutlet weak var subjonctifPresentIl : UIButton!
    @IBOutlet weak var subjonctifPresentNous : UIButton!
    @IBOutlet weak var subjonctifPresentVous : UIButton!
    @IBOutlet weak var subjonctifPresentIls : UIButton!
    @IBOutlet weak var subjonctifPasseJe : UIButton!
    @IBOutlet weak var subjonctifPasseTu : UIButton!
    @IBOutlet weak var subjonctifPasseIl : UIButton!
    @IBOutlet weak var subjonctifPasseNous : UIButton!
    @IBOutlet weak var subjonctifPasseVous : UIButton!
    @IBOutlet weak var subjonctifPasseIls : UIButton!
    @IBOutlet weak var subjonctifImperfaitJe : UIButton!
    @IBOutlet weak var subjonctifImperfaitTu : UIButton!
    @IBOutlet weak var subjonctifImperfaitIl : UIButton!
    @IBOutlet weak var subjonctifImperfaitNous : UIButton!
    @IBOutlet weak var subjonctifImperfaitVous : UIButton!
    @IBOutlet weak var subjonctifImperfaitIls : UIButton!
    @IBOutlet weak var subjonctifPlusQueParfaitJe : UIButton!
    @IBOutlet weak var subjonctifPlusQueParfaitTu : UIButton!
    @IBOutlet weak var subjonctifPlusQueParfaitIl : UIButton!
    @IBOutlet weak var subjonctifPlusQueParfaitNous : UIButton!
    @IBOutlet weak var subjonctifPlusQueParfaitVous : UIButton!
    @IBOutlet weak var subjonctifPlusQueParfaitIls : UIButton!
    
    @IBOutlet weak var conditionnelPresentJe : UIButton!
    @IBOutlet weak var conditionnelPresentTu : UIButton!
    @IBOutlet weak var conditionnelPresentIl : UIButton!
    @IBOutlet weak var conditionnelPresentNous : UIButton!
    @IBOutlet weak var conditionnelPresentVous : UIButton!
    @IBOutlet weak var conditionnelPresentIls : UIButton!
    @IBOutlet weak var conditionnelPasseJe : UIButton!
    @IBOutlet weak var conditionnelPasseTu : UIButton!
    @IBOutlet weak var conditionnelPasseIl : UIButton!
    @IBOutlet weak var conditionnelPasseNous : UIButton!
    @IBOutlet weak var conditionnelPasseVous : UIButton!
    @IBOutlet weak var conditionnelPasseIls : UIButton!
    
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
        group.text = "\(verb.group) group"
        
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
        
        if (!c.infinitivePresent.isEmpty
            && !c.infinitivePresent.elementsEqual(verb.infinitive)) {
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
            reviewAuxiliar(c, isEtre, isAvoir)
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
        replaceAccents(c, verbInfinitive)
        replaceConjugationModel(c, verbInfinitive)
        replaceParticipePasse(c, verbInfinitive)
    }
    
    private func setParticipePasseAsInvariable(_ c : Conjugation) {
        // TODO: Ensure conjugations are invariable
        if (c.participePasse1.contains("(") ) {
            var token = c.participePasse1.components(separatedBy: "(")
            c.participePasse1 = "\(token[0])(invar.)"
        } else {
            c.participePasse1 = c.participePasse1 + " (invar.)"
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
                c.participePasse1 = "maudit (e)"
            }
        case 46: // mouvoir
            if (verbInfinitive.contains("promouvoir")) {
                old = "promû"
                new = "promu"
                c.participePasse1 = "promu (u, ue, us, ues)"
            } else if (verbInfinitive.contains("émouvoir")) {
                old = "émû"
                new = "ému"
                c.participePasse1 = "ému (u, ue, us, ues)"
            }
        case 77: // conclure
            if (verbInfinitive.contains("inclure")) {
                old = "inclu"
                new = "inclus"
                c.participePasse1 = "inclus (e, es)"
            } else if (verbInfinitive.contains("occlure")) {
                old = "occlu"
                new = "occlus"
                c.participePasse1 = "occlus (e, es)"
            }
        case 78: // absoudre
            if (verbInfinitive.contains("résoudre")) {
                old = "résous"
                new = "résolu"
                c.participePasse1 = "résolu (u, ue, us, ues)"
            }
        case 87: // confire
            if (verbInfinitive.contains("circoncire")) {
                old = "circoncit"
                new = "circoncis"
                c.participePasse1 = "circoncis"
            } else if (verbInfinitive.contains("suffire")) {
                old = "suffit"
                new = "suffi"
                c.participePasse1 = "suffi"
            }
        default:
            break
        }
        
        if (!old.isEmpty && !new.isEmpty) {
            replaceParticipePasse(c, old, new)
        }
    }
    
    private func replaceParticipePasse(_ c : Conjugation, _ old : String, _ new : String) {
        c.infinitivePasse = c.infinitivePasse.replacingOccurrences(of: old, with: new)
        
        c.participePasse2 = c.participePasse2.replacingOccurrences(of: old, with: new)
        c.gerondifPasse = c.gerondifPasse.replacingOccurrences(of: old, with: new)
        
        c.imperatifPasseTu = c.imperatifPasseTu.replacingOccurrences(of: old, with: new)
        c.imperatifPasseNous = c.imperatifPasseNous.replacingOccurrences(of: old, with: new)
        c.imperatifPasseVous = c.imperatifPasseVous.replacingOccurrences(of: old, with: new)
        
        c.indicatifPasseComposeJe = c.indicatifPasseComposeJe.replacingOccurrences(of: old, with: new)
        c.indicatifPasseComposeTu = c.indicatifPasseComposeTu.replacingOccurrences(of: old, with: new)
        c.indicatifPasseComposeIl = c.indicatifPasseComposeIl.replacingOccurrences(of: old, with: new)
        c.indicatifPasseComposeNous = c.indicatifPasseComposeNous.replacingOccurrences(of: old, with: new)
        c.indicatifPasseComposeVous = c.indicatifPasseComposeVous.replacingOccurrences(of: old, with: new)
        c.indicatifPasseComposeIls = c.indicatifPasseComposeIls.replacingOccurrences(of: old, with: new)
        
        c.indicatifPlusQueParfaitJe = c.indicatifPlusQueParfaitJe.replacingOccurrences(of: old, with: new)
        c.indicatifPlusQueParfaitTu = c.indicatifPlusQueParfaitTu.replacingOccurrences(of: old, with: new)
        c.indicatifPlusQueParfaitIl = c.indicatifPlusQueParfaitIl.replacingOccurrences(of: old, with: new)
        c.indicatifPlusQueParfaitNous = c.indicatifPlusQueParfaitNous.replacingOccurrences(of: old, with: new)
        c.indicatifPlusQueParfaitVous = c.indicatifPlusQueParfaitVous.replacingOccurrences(of: old, with: new)
        c.indicatifPlusQueParfaitIls = c.indicatifPlusQueParfaitIls.replacingOccurrences(of: old, with: new)
        
        c.indicatifPasseAnterieurJe = c.indicatifPasseAnterieurJe.replacingOccurrences(of: old, with: new)
        c.indicatifPasseAnterieurTu = c.indicatifPasseAnterieurTu.replacingOccurrences(of: old, with: new)
        c.indicatifPasseAnterieurIl = c.indicatifPasseAnterieurIl.replacingOccurrences(of: old, with: new)
        c.indicatifPasseAnterieurNous = c.indicatifPasseAnterieurNous.replacingOccurrences(of: old, with: new)
        c.indicatifPasseAnterieurVous = c.indicatifPasseAnterieurVous.replacingOccurrences(of: old, with: new)
        c.indicatifPasseAnterieurIls = c.indicatifPasseAnterieurIls.replacingOccurrences(of: old, with: new)
        
        c.indicatifFuturAnterieurJe = c.indicatifFuturAnterieurJe.replacingOccurrences(of: old, with: new)
        c.indicatifFuturAnterieurTu = c.indicatifFuturAnterieurTu.replacingOccurrences(of: old, with: new)
        c.indicatifFuturAnterieurIl = c.indicatifFuturAnterieurIl.replacingOccurrences(of: old, with: new)
        c.indicatifFuturAnterieurNous = c.indicatifFuturAnterieurNous.replacingOccurrences(of: old, with: new)
        c.indicatifFuturAnterieurVous = c.indicatifFuturAnterieurVous.replacingOccurrences(of: old, with: new)
        c.indicatifFuturAnterieurIls = c.indicatifFuturAnterieurIls.replacingOccurrences(of: old, with: new)
        
        c.conditionnelPasseJe = c.conditionnelPasseJe.replacingOccurrences(of: old, with: new)
        c.conditionnelPasseTu = c.conditionnelPasseTu.replacingOccurrences(of: old, with: new)
        c.conditionnelPasseIl = c.conditionnelPasseIl.replacingOccurrences(of: old, with: new)
        c.conditionnelPasseNous = c.conditionnelPasseNous.replacingOccurrences(of: old, with: new)
        c.conditionnelPasseVous = c.conditionnelPasseVous.replacingOccurrences(of: old, with: new)
        c.conditionnelPasseIls = c.conditionnelPasseIls.replacingOccurrences(of: old, with: new)
        
        c.subjonctifPasseJe = c.subjonctifPasseJe.replacingOccurrences(of: old, with: new)
        c.subjonctifPasseTu = c.subjonctifPasseTu.replacingOccurrences(of: old, with: new)
        c.subjonctifPasseIl = c.subjonctifPasseIl.replacingOccurrences(of: old, with: new)
        c.subjonctifPasseNous = c.subjonctifPasseNous.replacingOccurrences(of: old, with: new)
        c.subjonctifPasseVous = c.subjonctifPasseVous.replacingOccurrences(of: old, with: new)
        c.subjonctifPasseIls = c.subjonctifPasseIls.replacingOccurrences(of: old, with: new)
        
        c.subjonctifPlusQueParfaitJe = c.subjonctifPlusQueParfaitJe.replacingOccurrences(of: old, with: new)
        c.subjonctifPlusQueParfaitTu = c.subjonctifPlusQueParfaitTu.replacingOccurrences(of: old, with: new)
        c.subjonctifPlusQueParfaitIl = c.subjonctifPlusQueParfaitIl.replacingOccurrences(of: old, with: new)
        c.subjonctifPlusQueParfaitNous = c.subjonctifPlusQueParfaitNous.replacingOccurrences(of: old, with: new)
        c.subjonctifPlusQueParfaitVous = c.subjonctifPlusQueParfaitVous.replacingOccurrences(of: old, with: new)
        c.subjonctifPlusQueParfaitIls = c.subjonctifPlusQueParfaitIls.replacingOccurrences(of: old, with: new)
    }
    
    /**
     * Exceptions for the conjugation model. Cases when the model changes by rule.
     */
    private func replaceConjugationModel(_ c : Conjugation, _ verbInfinitive : String) {
        if (c.id == 84) { // dire
            if (verbInfinitive.contains("contredire") || verbInfinitive.contains("dédire")
                || verbInfinitive.contains("interdire") || verbInfinitive.contains("médire")
                || verbInfinitive.contains("prédire")) {
                c.indicatifPresentVous = c.indicatifPresentVous.replacingOccurrences(of: "dites", with: "disez")
            }
        }
    }
    
    /**
     * Known Exceptions for the accents in conjugation model.
     */
    private func replaceAccents(_ c : Conjugation, _ verbInfinitive : String) {
        if (c.id == 73 && !verbInfinitive.elementsEqual("croître")) {
            // NOTE: all verbes, except croître : accroître, décroître, recroître
            // conjugate without some accents
            c.indicatifPresentJe = c.indicatifPresentJe.replacingOccurrences(of: "î", with: "i")
            c.indicatifPresentTu = c.indicatifPresentTu.replacingOccurrences(of: "î", with: "i")
            
            c.indicatifPasseSimpleJe = c.indicatifPasseSimpleJe.replacingOccurrences(of: "û", with: "u")
            c.indicatifPasseSimpleTu = c.indicatifPasseSimpleTu.replacingOccurrences(of: "û", with: "u")
            c.indicatifPasseSimpleIl = c.indicatifPasseSimpleIl.replacingOccurrences(of: "û", with: "u")
            c.indicatifPasseSimpleIls = c.indicatifPasseSimpleIls.replacingOccurrences(of: "û", with: "u")
            
            c.indicatifImperfaitJe = c.indicatifImperfaitJe.replacingOccurrences(of: "û", with: "u")
            c.indicatifImperfaitTu = c.indicatifImperfaitTu.replacingOccurrences(of: "û", with: "u")
            c.indicatifImperfaitNous = c.indicatifImperfaitNous.replacingOccurrences(of: "û", with: "u")
            c.indicatifImperfaitVous = c.indicatifImperfaitVous.replacingOccurrences(of: "û", with: "u")
            c.indicatifImperfaitIls = c.indicatifImperfaitIls.replacingOccurrences(of: "û", with: "u")
            
            c.imperatifPresentTu = c.imperatifPresentTu.replacingOccurrences(of: "î", with: "i")
            c.imperatifPasseTu = c.imperatifPasseTu.replacingOccurrences(of: "crû", with: "cru")
            c.imperatifPasseNous = c.imperatifPasseNous.replacingOccurrences(of: "crû", with: "cru")
            c.imperatifPasseVous = c.imperatifPasseVous.replacingOccurrences(of: "crû", with: "cru")
            
            c.infinitivePasse = c.infinitivePasse.replacingOccurrences(of: "crû", with: "cru")
            c.participePasse1 = c.participePasse1.replacingOccurrences(of: "crû", with: "cru")
            c.participePasse2 = c.participePasse2.replacingOccurrences(of: "crû", with: "cru")
            c.gerondifPasse = c.gerondifPasse.replacingOccurrences(of: "crû", with: "cru")
            
            c.indicatifPasseComposeJe = c.indicatifPasseComposeJe.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPasseComposeTu = c.indicatifPasseComposeTu.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPasseComposeIl = c.indicatifPasseComposeIl.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPasseComposeNous = c.indicatifPasseComposeNous.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPasseComposeVous = c.indicatifPasseComposeVous.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPasseComposeIls = c.indicatifPasseComposeIls.replacingOccurrences(of: "crû", with: "cru")
            
            c.indicatifPlusQueParfaitJe = c.indicatifPlusQueParfaitJe.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPlusQueParfaitTu = c.indicatifPlusQueParfaitTu.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPlusQueParfaitIl = c.indicatifPlusQueParfaitIl.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPlusQueParfaitNous = c.indicatifPlusQueParfaitNous.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPlusQueParfaitVous = c.indicatifPlusQueParfaitVous.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPlusQueParfaitIls = c.indicatifPlusQueParfaitIls.replacingOccurrences(of: "crû", with: "cru")
            
            c.indicatifPasseAnterieurJe = c.indicatifPasseAnterieurJe.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPasseAnterieurTu = c.indicatifPasseAnterieurTu.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPasseAnterieurIl = c.indicatifPasseAnterieurIl.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPasseAnterieurNous = c.indicatifPasseAnterieurNous.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPasseAnterieurVous = c.indicatifPasseAnterieurVous.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifPasseAnterieurIls = c.indicatifPasseAnterieurIls.replacingOccurrences(of: "crû", with: "cru")
            
            c.indicatifFuturAnterieurJe = c.indicatifFuturAnterieurJe.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifFuturAnterieurTu = c.indicatifFuturAnterieurTu.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifFuturAnterieurIl = c.indicatifFuturAnterieurIl.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifFuturAnterieurNous = c.indicatifFuturAnterieurNous.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifFuturAnterieurVous = c.indicatifFuturAnterieurVous.replacingOccurrences(of: "crû", with: "cru")
            c.indicatifFuturAnterieurIls = c.indicatifFuturAnterieurIls.replacingOccurrences(of: "crû", with: "cru")
            
            c.conditionnelPasseJe = c.conditionnelPasseJe.replacingOccurrences(of: "crû", with: "cru")
            c.conditionnelPasseTu = c.conditionnelPasseTu.replacingOccurrences(of: "crû", with: "cru")
            c.conditionnelPasseIl = c.conditionnelPasseIl.replacingOccurrences(of: "crû", with: "cru")
            c.conditionnelPasseNous = c.conditionnelPasseNous.replacingOccurrences(of: "crû", with: "cru")
            c.conditionnelPasseVous = c.conditionnelPasseVous.replacingOccurrences(of: "crû", with: "cru")
            c.conditionnelPasseIls = c.conditionnelPasseIls.replacingOccurrences(of: "crû", with: "cru")
            
            c.subjonctifImperfaitJe = c.subjonctifImperfaitJe.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifImperfaitTu = c.subjonctifImperfaitTu.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifImperfaitNous = c.subjonctifImperfaitNous.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifImperfaitVous = c.subjonctifImperfaitVous.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifImperfaitIls = c.subjonctifImperfaitIls.replacingOccurrences(of: "crû", with: "cru")
            
            c.subjonctifPasseJe = c.subjonctifPasseJe.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifPasseTu = c.subjonctifPasseTu.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifPasseIl = c.subjonctifPasseIl.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifPasseNous = c.subjonctifPasseNous.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifPasseVous = c.subjonctifPasseVous.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifPasseIls = c.subjonctifPasseIls.replacingOccurrences(of: "crû", with: "cru")
            
            c.subjonctifPlusQueParfaitJe = c.subjonctifPlusQueParfaitJe.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifPlusQueParfaitTu = c.subjonctifPlusQueParfaitTu.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifPlusQueParfaitIl = c.subjonctifPlusQueParfaitIl.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifPlusQueParfaitNous = c.subjonctifPlusQueParfaitNous.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifPlusQueParfaitVous = c.subjonctifPlusQueParfaitVous.replacingOccurrences(of: "crû", with: "cru")
            c.subjonctifPlusQueParfaitIls = c.subjonctifPlusQueParfaitIls.replacingOccurrences(of: "crû", with: "cru")
        }
        else if (c.id == 20 && verbInfinitive.contains("amuïr")) {
            // Restore circunflex accent
            c.indicatifPresentJe = c.indicatifPresentJe.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPresentTu = c.indicatifPresentTu.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPresentIl = c.indicatifPresentIl.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPresentNous = c.indicatifPresentNous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPresentVous = c.indicatifPresentVous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPresentIls = c.indicatifPresentIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indicatifPasseComposeJe = c.indicatifPasseComposeJe.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseComposeTu = c.indicatifPasseComposeTu.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseComposeIl = c.indicatifPasseComposeIl.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseComposeNous = c.indicatifPasseComposeNous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseComposeVous = c.indicatifPasseComposeVous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseComposeIls = c.indicatifPasseComposeIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indicatifImperfaitJe = c.indicatifImperfaitJe.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifImperfaitTu = c.indicatifImperfaitTu.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifImperfaitIl = c.indicatifImperfaitIl.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifImperfaitNous = c.indicatifImperfaitNous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifImperfaitVous = c.indicatifImperfaitVous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifImperfaitIls = c.indicatifImperfaitIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indicatifPlusQueParfaitJe = c.indicatifPlusQueParfaitJe.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPlusQueParfaitTu = c.indicatifPlusQueParfaitTu.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPlusQueParfaitIl = c.indicatifPlusQueParfaitIl.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPlusQueParfaitNous = c.indicatifPlusQueParfaitNous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPlusQueParfaitVous = c.indicatifPlusQueParfaitVous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPlusQueParfaitIls = c.indicatifPlusQueParfaitIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indicatifPasseSimpleJe = c.indicatifPasseSimpleJe.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseSimpleTu = c.indicatifPasseSimpleTu.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseSimpleIl = c.indicatifPasseSimpleIl.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseSimpleIls = c.indicatifPasseSimpleIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indicatifPasseAnterieurJe = c.indicatifPasseAnterieurJe.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseAnterieurTu = c.indicatifPasseAnterieurTu.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseAnterieurIl = c.indicatifPasseAnterieurIl.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseAnterieurNous = c.indicatifPasseAnterieurNous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseAnterieurVous = c.indicatifPasseAnterieurVous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifPasseAnterieurIls = c.indicatifPasseAnterieurIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indicatifFuturSimpleJe = c.indicatifFuturSimpleJe.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifFuturSimpleTu = c.indicatifFuturSimpleTu.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifFuturSimpleIl = c.indicatifFuturSimpleIl.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifFuturSimpleNous = c.indicatifFuturSimpleNous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifFuturSimpleVous = c.indicatifFuturSimpleVous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifFuturSimpleIls = c.indicatifFuturSimpleIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.indicatifFuturAnterieurJe = c.indicatifFuturAnterieurJe.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifFuturAnterieurTu = c.indicatifFuturAnterieurTu.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifFuturAnterieurIl = c.indicatifFuturAnterieurIl.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifFuturAnterieurNous = c.indicatifFuturAnterieurNous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifFuturAnterieurVous = c.indicatifFuturAnterieurVous.replacingOccurrences(of: "amui", with: "amuï")
            c.indicatifFuturAnterieurIls = c.indicatifFuturAnterieurIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.conditionnelPresentJe = c.conditionnelPresentJe.replacingOccurrences(of: "amui", with: "amuï")
            c.conditionnelPresentTu = c.conditionnelPresentTu.replacingOccurrences(of: "amui", with: "amuï")
            c.conditionnelPresentIl = c.conditionnelPresentIl.replacingOccurrences(of: "amui", with: "amuï")
            c.conditionnelPresentNous = c.conditionnelPresentNous.replacingOccurrences(of: "amui", with: "amuï")
            c.conditionnelPresentVous = c.conditionnelPresentVous.replacingOccurrences(of: "amui", with: "amuï")
            c.conditionnelPresentIls = c.conditionnelPresentIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.conditionnelPasseJe = c.conditionnelPasseJe.replacingOccurrences(of: "amui", with: "amuï")
            c.conditionnelPasseTu = c.conditionnelPasseTu.replacingOccurrences(of: "amui", with: "amuï")
            c.conditionnelPasseIl = c.conditionnelPasseIl.replacingOccurrences(of: "amui", with: "amuï")
            c.conditionnelPasseNous = c.conditionnelPasseNous.replacingOccurrences(of: "amui", with: "amuï")
            c.conditionnelPasseVous = c.conditionnelPasseVous.replacingOccurrences(of: "amui", with: "amuï")
            c.conditionnelPasseIls = c.conditionnelPasseIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.subjonctifPresentJe = c.subjonctifPresentJe.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPresentTu = c.subjonctifPresentTu.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPresentIl = c.subjonctifPresentIl.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPresentNous = c.subjonctifPresentNous.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPresentVous = c.subjonctifPresentVous.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPresentIls = c.subjonctifPresentIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.subjonctifPasseJe = c.subjonctifPasseJe.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPasseTu = c.subjonctifPasseTu.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPasseIl = c.subjonctifPasseIl.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPasseNous = c.subjonctifPasseNous.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPasseVous = c.subjonctifPasseVous.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPasseIls = c.subjonctifPasseIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.subjonctifImperfaitJe = c.subjonctifImperfaitJe.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifImperfaitTu = c.subjonctifImperfaitTu.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifImperfaitIl = c.subjonctifImperfaitIl.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifImperfaitNous = c.subjonctifImperfaitNous.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifImperfaitVous = c.subjonctifImperfaitVous.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifImperfaitIls = c.subjonctifImperfaitIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.subjonctifPlusQueParfaitJe = c.subjonctifPlusQueParfaitJe.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPlusQueParfaitTu = c.subjonctifPlusQueParfaitTu.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPlusQueParfaitIl = c.subjonctifPlusQueParfaitIl.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPlusQueParfaitNous = c.subjonctifPlusQueParfaitNous.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPlusQueParfaitVous = c.subjonctifPlusQueParfaitVous.replacingOccurrences(of: "amui", with: "amuï")
            c.subjonctifPlusQueParfaitIls = c.subjonctifPlusQueParfaitIls.replacingOccurrences(of: "amui", with: "amuï")
            
            c.imperatifPresentTu = c.imperatifPresentTu.replacingOccurrences(of: "amui", with: "amuï")
            c.imperatifPresentNous = c.imperatifPresentNous.replacingOccurrences(of: "amui", with: "amuï")
            c.imperatifPresentVous = c.imperatifPresentVous.replacingOccurrences(of: "amui", with: "amuï")
            c.imperatifPasseTu = c.imperatifPasseTu.replacingOccurrences(of: "amui", with: "amuï")
            c.imperatifPasseNous = c.imperatifPasseNous.replacingOccurrences(of: "amui", with: "amuï")
            c.imperatifPasseVous = c.imperatifPasseVous.replacingOccurrences(of: "amui", with: "amuï")
            
            c.infinitivePasse = c.infinitivePasse.replacingOccurrences(of: "amui", with: "amuï")
            c.participePresent = c.participePresent.replacingOccurrences(of: "amui", with: "amuï")
            c.participePasse1 = c.participePasse1.replacingOccurrences(of: "amui", with: "amuï")
            c.participePasse2 = c.participePasse2.replacingOccurrences(of: "amui", with: "amuï")
            c.gerondifPresent = c.gerondifPresent.replacingOccurrences(of: "amui", with: "amuï")
            c.gerondifPasse = c.gerondifPasse.replacingOccurrences(of: "amui", with: "amuï")
        }
    }
    
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
        
        c.infinitivePresent = verbInfinitive
        c.participePresent = replaceRadical(c.participePresent, modelR, verbR)
        c.gerondifPresent = replaceRadical(c.gerondifPresent, modelR, verbR)
        
        c.imperatifPresentTu = replaceRadical(c.imperatifPresentTu, modelR, verbR)
        c.imperatifPresentNous = replaceRadical(c.imperatifPresentNous, modelR, verbR)
        c.imperatifPresentVous = replaceRadical(c.imperatifPresentVous, modelR, verbR)
        
        c.indicatifPresentJe = replaceRadical(c.indicatifPresentJe, modelR, verbR)
        c.indicatifPresentTu = replaceRadical(c.indicatifPresentTu, modelR, verbR)
        c.indicatifPresentIl = replaceRadical(c.indicatifPresentIl, modelR, verbR)
        c.indicatifPresentNous = replaceRadical(c.indicatifPresentNous, modelR, verbR)
        c.indicatifPresentVous = replaceRadical(c.indicatifPresentVous, modelR, verbR)
        c.indicatifPresentIls = replaceRadical(c.indicatifPresentIls, modelR, verbR)
        
        c.indicatifImperfaitJe = replaceRadical(c.indicatifImperfaitJe, modelR, verbR)
        c.indicatifImperfaitTu = replaceRadical(c.indicatifImperfaitTu, modelR, verbR)
        c.indicatifImperfaitIl = replaceRadical(c.indicatifImperfaitIl, modelR, verbR)
        c.indicatifImperfaitNous = replaceRadical(c.indicatifImperfaitNous, modelR, verbR)
        c.indicatifImperfaitVous = replaceRadical(c.indicatifImperfaitVous, modelR, verbR)
        c.indicatifImperfaitIls = replaceRadical(c.indicatifImperfaitIls, modelR, verbR)
        
        c.indicatifPasseSimpleJe = replaceRadical(c.indicatifPasseSimpleJe, modelR, verbR)
        c.indicatifPasseSimpleTu = replaceRadical(c.indicatifPasseSimpleTu, modelR, verbR)
        c.indicatifPasseSimpleIl = replaceRadical(c.indicatifPasseSimpleIl, modelR, verbR)
        c.indicatifPasseSimpleNous = replaceRadical(c.indicatifPasseSimpleNous, modelR, verbR)
        c.indicatifPasseSimpleVous = replaceRadical(c.indicatifPasseSimpleVous, modelR, verbR)
        c.indicatifPasseSimpleIls = replaceRadical(c.indicatifPasseSimpleIls, modelR, verbR)
        
        c.indicatifFuturSimpleJe = replaceRadical(c.indicatifFuturSimpleJe, modelR, verbR)
        c.indicatifFuturSimpleTu = replaceRadical(c.indicatifFuturSimpleTu, modelR, verbR)
        c.indicatifFuturSimpleIl = replaceRadical(c.indicatifFuturSimpleIl, modelR, verbR)
        c.indicatifFuturSimpleNous = replaceRadical(c.indicatifFuturSimpleNous, modelR, verbR)
        c.indicatifFuturSimpleVous = replaceRadical(c.indicatifFuturSimpleVous, modelR, verbR)
        c.indicatifFuturSimpleIls = replaceRadical(c.indicatifFuturSimpleIls, modelR, verbR)
        
        c.conditionnelPresentJe = replaceRadical(c.conditionnelPresentJe, modelR, verbR)
        c.conditionnelPresentTu = replaceRadical(c.conditionnelPresentTu, modelR, verbR)
        c.conditionnelPresentIl = replaceRadical(c.conditionnelPresentIl, modelR, verbR)
        c.conditionnelPresentNous = replaceRadical(c.conditionnelPresentNous, modelR, verbR)
        c.conditionnelPresentVous = replaceRadical(c.conditionnelPresentVous, modelR, verbR)
        c.conditionnelPresentIls = replaceRadical(c.conditionnelPresentIls, modelR, verbR)
        
        c.subjonctifPresentJe = replaceRadical(c.subjonctifPresentJe, modelR, verbR)
        c.subjonctifPresentTu = replaceRadical(c.subjonctifPresentTu, modelR, verbR)
        c.subjonctifPresentIl = replaceRadical(c.subjonctifPresentIl, modelR, verbR)
        c.subjonctifPresentNous = replaceRadical(c.subjonctifPresentNous, modelR, verbR)
        c.subjonctifPresentVous = replaceRadical(c.subjonctifPresentVous, modelR, verbR)
        c.subjonctifPresentIls = replaceRadical(c.subjonctifPresentIls, modelR, verbR)
        
        c.subjonctifImperfaitJe = replaceRadical(c.subjonctifImperfaitJe, modelR, verbR)
        c.subjonctifImperfaitTu = replaceRadical(c.subjonctifImperfaitTu, modelR, verbR)
        c.subjonctifImperfaitIl = replaceRadical(c.subjonctifImperfaitIl, modelR, verbR)
        c.subjonctifImperfaitNous = replaceRadical(c.subjonctifImperfaitNous, modelR, verbR)
        c.subjonctifImperfaitVous = replaceRadical(c.subjonctifImperfaitVous, modelR, verbR)
        c.subjonctifImperfaitIls = replaceRadical(c.subjonctifImperfaitIls, modelR, verbR)
        
        // Calculate and replace participe passe only, instead of radicals for composed tenses
        var pp = c.participePasse1.components(separatedBy: " ")
        let old = pp[0].elementsEqual("-") ? "" : pp[0]
        
        c.participePasse1 = replaceRadical(c.participePasse1, modelR, verbR)
        
        pp = c.participePasse1.components(separatedBy: " ")
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
     */
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
            if (c.infinitivePasse.contains("avoir")) {
                //  Like: sortir, renter
                replaceAuxiliar(c, wordsAvoir, wordsEtreAvoir)
            } else if (c.infinitivePasse.contains("être")) {
                replaceAuxiliar(c, wordsEtre, wordsEtreAvoir)
            }
        } else if (c.infinitivePasse.contains("avoir") && isEtre && !isAvoir) {
            //  Like: partir, mourir, s'ecrier
            replaceAuxiliar(c, wordsAvoir, wordsEtre)
        } else if (c.infinitivePasse.contains("être") && !isEtre && isAvoir) {
            replaceAuxiliar(c, wordsEtre, wordsAvoir)
        }
    }
    
    /**
     * Replaces a list of strings with another list.
     * Both list should refer to the same conjugation item in the same order.
     */
    private func replaceAuxiliar(_ c : Conjugation, _ words : [String], _ replaces : [String]) {
        // NOTE: Items to replace must come in the same order
        for index in 0 ..< words.count {
            let word : String = words[index]
            let replace : String = replaces[index]
            
            switch (index) {
            case 0:     c.infinitivePasse = ViewUtils.replaceFirst(c.infinitivePasse, of: word, with: replace)
            case 1:     c.participePasse2 = ViewUtils.replaceFirst(c.participePasse2, of: word, with: replace)
            case 2:     c.gerondifPasse = ViewUtils.replaceFirst(c.gerondifPasse, of: word, with: replace)
            case 3:     c.imperatifPasseTu = ViewUtils.replaceFirst(c.imperatifPasseTu, of: word, with: replace)
            case 4:     c.imperatifPasseNous = ViewUtils.replaceFirst(c.imperatifPasseNous, of: word, with: replace)
            case 5:     c.imperatifPasseVous = ViewUtils.replaceFirst(c.imperatifPasseVous, of: word, with: replace)
                
            case 6:     c.indicatifPasseComposeJe = ViewUtils.replaceFirst(c.indicatifPasseComposeJe, of: word, with: replace)
            case 7:     c.indicatifPasseComposeTu = ViewUtils.replaceFirst(c.indicatifPasseComposeTu, of: word, with: replace)
            case 8:     c.indicatifPasseComposeIl = ViewUtils.replaceFirst(c.indicatifPasseComposeIl, of: word, with: replace)
            case 9:     c.indicatifPasseComposeNous = ViewUtils.replaceFirst(c.indicatifPasseComposeNous, of: word, with: replace)
            case 10:    c.indicatifPasseComposeVous = ViewUtils.replaceFirst(c.indicatifPasseComposeVous, of: word, with: replace)
            case 11:    c.indicatifPasseComposeIls = ViewUtils.replaceFirst(c.indicatifPasseComposeIls, of: word, with: replace)
                
            case 12:    c.indicatifPlusQueParfaitJe = ViewUtils.replaceFirst(c.indicatifPlusQueParfaitJe, of: word, with: replace)
            case 13:    c.indicatifPlusQueParfaitTu = ViewUtils.replaceFirst(c.indicatifPlusQueParfaitTu, of: word, with: replace)
            case 14:    c.indicatifPlusQueParfaitIl = ViewUtils.replaceFirst(c.indicatifPlusQueParfaitIl, of: word, with: replace)
            case 15:    c.indicatifPlusQueParfaitNous = ViewUtils.replaceFirst(c.indicatifPlusQueParfaitNous, of: word, with: replace)
            case 16:    c.indicatifPlusQueParfaitVous = ViewUtils.replaceFirst(c.indicatifPlusQueParfaitVous, of: word, with: replace)
            case 17:    c.indicatifPlusQueParfaitIls = ViewUtils.replaceFirst(c.indicatifPlusQueParfaitIls, of: word, with: replace)
                
            case 18:    c.indicatifPasseAnterieurJe = ViewUtils.replaceFirst(c.indicatifPasseAnterieurJe, of: word, with: replace)
            case 19:    c.indicatifPasseAnterieurTu = ViewUtils.replaceFirst(c.indicatifPasseAnterieurTu, of: word, with: replace)
            case 20:    c.indicatifPasseAnterieurIl = ViewUtils.replaceFirst(c.indicatifPasseAnterieurIl, of: word, with: replace)
            case 21:    c.indicatifPasseAnterieurNous = ViewUtils.replaceFirst(c.indicatifPasseAnterieurNous, of: word, with: replace)
            case 22:    c.indicatifPasseAnterieurVous = ViewUtils.replaceFirst(c.indicatifPasseAnterieurVous, of: word, with: replace)
            case 23:    c.indicatifPasseAnterieurIls = ViewUtils.replaceFirst(c.indicatifPasseAnterieurIls, of: word, with: replace)
                
            case 24:    c.indicatifFuturAnterieurJe = ViewUtils.replaceFirst(c.indicatifFuturAnterieurJe, of: word, with: replace)
            case 25:    c.indicatifFuturAnterieurTu = ViewUtils.replaceFirst(c.indicatifFuturAnterieurTu, of: word, with: replace)
            case 26:    c.indicatifFuturAnterieurIl = ViewUtils.replaceFirst(c.indicatifFuturAnterieurIl, of: word, with: replace)
            case 27:    c.indicatifFuturAnterieurNous = ViewUtils.replaceFirst(c.indicatifFuturAnterieurNous, of: word, with: replace)
            case 28:    c.indicatifFuturAnterieurVous = ViewUtils.replaceFirst(c.indicatifFuturAnterieurVous, of: word, with: replace)
            case 29:    c.indicatifFuturAnterieurIls = ViewUtils.replaceFirst(c.indicatifFuturAnterieurIls, of: word, with: replace)
                
            case 30:    c.conditionnelPasseJe = ViewUtils.replaceFirst(c.conditionnelPasseJe, of: word, with: replace)
            case 31:    c.conditionnelPasseTu = ViewUtils.replaceFirst(c.conditionnelPasseTu, of: word, with: replace)
            case 32:    c.conditionnelPasseIl = ViewUtils.replaceFirst(c.conditionnelPasseIl, of: word, with: replace)
            case 33:    c.conditionnelPasseNous = ViewUtils.replaceFirst(c.conditionnelPasseNous, of: word, with: replace)
            case 34:    c.conditionnelPasseVous = ViewUtils.replaceFirst(c.conditionnelPasseVous, of: word, with: replace)
            case 35:    c.conditionnelPasseIls = ViewUtils.replaceFirst(c.conditionnelPasseIls, of: word, with: replace)
                
            case 36:    c.subjonctifPasseJe = ViewUtils.replaceFirst(c.subjonctifPasseJe, of: word, with: replace)
            case 37:    c.subjonctifPasseTu = ViewUtils.replaceFirst(c.subjonctifPasseTu, of: word, with: replace)
            case 38:    c.subjonctifPasseIl = ViewUtils.replaceFirst(c.subjonctifPasseIl, of: word, with: replace)
            case 39:    c.subjonctifPasseNous = ViewUtils.replaceFirst(c.subjonctifPasseNous, of: word, with: replace)
            case 40:    c.subjonctifPasseVous = ViewUtils.replaceFirst(c.subjonctifPasseVous, of: word, with: replace)
            case 41:    c.subjonctifPasseIls = ViewUtils.replaceFirst(c.subjonctifPasseIls, of: word, with: replace)
                
            case 42:    c.subjonctifPlusQueParfaitJe = ViewUtils.replaceFirst(c.subjonctifPlusQueParfaitJe, of: word, with: replace)
            case 43:    c.subjonctifPlusQueParfaitTu = ViewUtils.replaceFirst(c.subjonctifPlusQueParfaitTu, of: word, with: replace)
            case 44:    c.subjonctifPlusQueParfaitIl = ViewUtils.replaceFirst(c.subjonctifPlusQueParfaitIl, of: word, with: replace)
            case 45:    c.subjonctifPlusQueParfaitNous = ViewUtils.replaceFirst(c.subjonctifPlusQueParfaitNous, of: word, with: replace)
            case 46:    c.subjonctifPlusQueParfaitVous = ViewUtils.replaceFirst(c.subjonctifPlusQueParfaitVous, of: word, with: replace)
            case 47:    c.subjonctifPlusQueParfaitIls = ViewUtils.replaceFirst(c.subjonctifPlusQueParfaitIls, of: word, with: replace)
            default:    ()
            }
        }
    }
    
    
    /**
     * Ads the reflexive pronoms and accord of participe passe
     */
    private func addReflexive(_ c : Conjugation, _ ppInv : Bool) {
        // Add pronoms
        // TODO: Show pronoms in different color
        addReflexiveIndicatifPresent(c)
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
        addReflexiveGerondif(c, ppInv)
    }
    
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
        var text : String = c.participePresent
        if (!text.elementsEqual("-")) {
            c.participePresent = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        text = c.participePasse1
        if (!text.elementsEqual("-")) {
            c.participePasse1 = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        text = c.participePasse2
        if (!text.elementsEqual("-")) {
            c.participePasse2 = ppInv ? text : text + "(e)(s)"
        }
    }
    
    private func addReflexiveInfinitive(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.infinitivePasse
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.infinitivePasse = ppInv ? text : text + "(e)(s)"
        }
    }
    
    private func addReflexiveImperatif(_ c : Conjugation, _ ppInv : Bool) {
        if (!c.imperatifPresentTu.elementsEqual("-")) {
            c.imperatifPresentTu = c.imperatifPresentTu + "-toi"
        }
        if (!c.imperatifPresentNous.elementsEqual("-")) {
            c.imperatifPresentNous = c.imperatifPresentNous + "-nous"
        }
        if (!c.imperatifPresentVous.elementsEqual("-")) {
            c.imperatifPresentVous = c.imperatifPresentVous + "-vous"
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
        var text : String = c.subjonctifPlusQueParfaitJe
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.subjonctifPlusQueParfaitJe = ppInv ? text : text + "(e)"
        }
        text = c.subjonctifPlusQueParfaitTu
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.subjonctifPlusQueParfaitTu = ppInv ? text : text + "(e)"
        }
        text = c.subjonctifPlusQueParfaitIl
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.subjonctifPlusQueParfaitIl = ppInv ? text : text + "(e)"
        }
        if (!c.subjonctifPlusQueParfaitNous.elementsEqual("-")) {
            text = Constants.NOUS + c.subjonctifPlusQueParfaitNous
            c.subjonctifPlusQueParfaitNous = ppInv ? text : text + "(e)s"
        }
        if (!c.subjonctifPlusQueParfaitVous.elementsEqual("-")) {
            text = Constants.VOUS + c.subjonctifPlusQueParfaitVous
            c.subjonctifPlusQueParfaitVous = ppInv ? text : text + "(e)s"
        }
        text = c.subjonctifPlusQueParfaitIls
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.subjonctifPlusQueParfaitIls = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveSubjonctifImperfait(_ c : Conjugation) {
        var text : String = c.subjonctifImperfaitJe
        if (!text.elementsEqual("-")) {
            c.subjonctifImperfaitJe = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.subjonctifImperfaitTu
        if (!text.elementsEqual("-")) {
            c.subjonctifImperfaitTu = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.subjonctifImperfaitIl
        if (!text.elementsEqual("-")) {
            c.subjonctifImperfaitIl = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.subjonctifImperfaitNous.elementsEqual("-")) {
            c.subjonctifImperfaitNous = Constants.NOUS + c.subjonctifImperfaitNous
        }
        if (!c.subjonctifImperfaitVous.elementsEqual("-")) {
            c.subjonctifImperfaitVous = Constants.VOUS + c.subjonctifImperfaitVous
        }
        text = c.subjonctifImperfaitIls
        if (!text.elementsEqual("-")) {
            c.subjonctifImperfaitIls = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveSubjonctifPasse(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.subjonctifPasseJe
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.subjonctifPasseJe = ppInv ? text : text + "(e)"
        }
        text = c.subjonctifPasseTu
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.subjonctifPasseTu = ppInv ? text : text + "(e)"
        }
        text = c.subjonctifPasseIl
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.subjonctifPasseIl = ppInv ? text : text + "(e)"
        }
        if (!c.subjonctifPasseNous.elementsEqual("-")) {
            text = Constants.NOUS + c.subjonctifPasseNous
            c.subjonctifPasseNous = ppInv ? text : text + "(e)s"
        }
        if (!c.subjonctifPasseVous.elementsEqual("-")) {
            text = Constants.VOUS + c.subjonctifPasseVous
            c.subjonctifPasseVous = ppInv ? text : text + "(e)s"
        }
        text = c.subjonctifPasseIls
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.subjonctifPasseIls = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveSubjonctifPresent(_ c : Conjugation) {
        var text : String = c.subjonctifPresentJe
        if (!text.elementsEqual("-")) {
            c.subjonctifPresentJe = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.subjonctifPresentTu
        if (!text.elementsEqual("-")) {
            c.subjonctifPresentTu = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.subjonctifPresentIl
        if (!text.elementsEqual("-")) {
            c.subjonctifPresentIl = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.subjonctifPresentNous.elementsEqual("-")) {
            c.subjonctifPresentNous = Constants.NOUS + c.subjonctifPresentNous
        }
        if (!c.subjonctifPresentVous.elementsEqual("-")) {
            c.subjonctifPresentVous = Constants.VOUS + c.subjonctifPresentVous
        }
        text = c.subjonctifPresentIls
        if (!text.elementsEqual("-")) {
            c.subjonctifPresentIls = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveConditionnelPasse(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.conditionnelPasseJe
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.conditionnelPasseJe = ppInv ? text : text + "(e)"
        }
        text = c.conditionnelPasseTu
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.conditionnelPasseTu = ppInv ? text : text + "(e)"
        }
        text = c.conditionnelPasseIl
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.conditionnelPasseIl = ppInv ? text : text + "(e)"
        }
        if (!c.conditionnelPasseNous.elementsEqual("-")) {
            text = Constants.NOUS + c.conditionnelPasseNous
            c.conditionnelPasseNous = ppInv ? text : text + "(e)s"
        }
        if (!c.conditionnelPasseVous.elementsEqual("-")) {
            text = Constants.VOUS + c.conditionnelPasseVous
            c.conditionnelPasseVous = ppInv ? text : text + "(e)s"
        }
        text = c.conditionnelPasseIls
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.conditionnelPasseIls = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveConditionnelPresent(_ c : Conjugation) {
        var text : String = c.conditionnelPresentJe
        if (!text.elementsEqual("-")) {
            c.conditionnelPresentJe = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.conditionnelPresentTu
        if (!text.elementsEqual("-")) {
            c.conditionnelPresentTu = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.conditionnelPresentIl
        if (!text.elementsEqual("-")) {
            c.conditionnelPresentIl = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.conditionnelPresentNous.elementsEqual("-")) {
            c.conditionnelPresentNous = Constants.NOUS + c.conditionnelPresentNous
        }
        if (!c.conditionnelPresentVous.elementsEqual("-")) {
            c.conditionnelPresentVous = Constants.VOUS + c.conditionnelPresentVous
        }
        text = c.conditionnelPresentIls
        if (!text.elementsEqual("-")) {
            c.conditionnelPresentIls = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveIndicatifFuturAnterieur(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.indicatifFuturAnterieurJe
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.indicatifFuturAnterieurJe = ppInv ? text : text + "(e)"
        }
        text = c.indicatifFuturAnterieurTu
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.indicatifFuturAnterieurTu = ppInv ? text : text + "(e)"
        }
        text = c.indicatifFuturAnterieurIl
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indicatifFuturAnterieurIl = ppInv ? text : text + "(e)"
        }
        if (!c.indicatifFuturAnterieurNous.elementsEqual("-")) {
            text = Constants.NOUS + c.indicatifFuturAnterieurNous
            c.indicatifFuturAnterieurNous = ppInv ? text : text + "(e)s"
        }
        if (!c.indicatifFuturAnterieurVous.elementsEqual("-")) {
            text = Constants.VOUS + c.indicatifFuturAnterieurVous
            c.indicatifFuturAnterieurVous = ppInv ? text : text + "(e)s"
        }
        text = c.indicatifFuturAnterieurIls
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indicatifFuturAnterieurIls = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveIndicatifFuturSimple(_ c : Conjugation) {
        var text : String = c.indicatifFuturSimpleJe
        if (!text.elementsEqual("-")) {
            c.indicatifFuturSimpleJe = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.indicatifFuturSimpleTu
        if (!text.elementsEqual("-")) {
            c.indicatifFuturSimpleTu = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.indicatifFuturSimpleIl
        if (!text.elementsEqual("-")) {
            c.indicatifFuturSimpleIl = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.indicatifFuturSimpleNous.elementsEqual("-")) {
            c.indicatifFuturSimpleNous = Constants.NOUS + c.indicatifFuturSimpleNous
        }
        if (!c.indicatifFuturSimpleVous.elementsEqual("-")) {
            c.indicatifFuturSimpleVous = Constants.VOUS + c.indicatifFuturSimpleVous
        }
        text = c.indicatifFuturSimpleIls
        if (!text.elementsEqual("-")) {
            c.indicatifFuturSimpleIls = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveIndicatifPasseAnterieur(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.indicatifPasseAnterieurJe
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.indicatifPasseAnterieurJe = ppInv ? text : text + "(e)"
        }
        text = c.indicatifPasseAnterieurTu
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.indicatifPasseAnterieurTu = ppInv ? text : text + "(e)"
        }
        text = c.indicatifPasseAnterieurIl
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indicatifPasseAnterieurIl = ppInv ? text : text + "(e)"
        }
        if (!c.indicatifPasseAnterieurNous.elementsEqual("-")) {
            text = Constants.NOUS + c.indicatifPasseAnterieurNous
            c.indicatifPasseAnterieurNous = ppInv ? text : text + "(e)s"
        }
        if (!c.indicatifPasseAnterieurVous.elementsEqual("-")) {
            text = Constants.VOUS + c.indicatifPasseAnterieurVous
            c.indicatifPasseAnterieurVous = ppInv ? text : text + "(e)s"
        }
        text = c.indicatifPasseAnterieurIls
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indicatifPasseAnterieurIls = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveIndicatifPasseSimple(_ c : Conjugation) {
        var text : String = c.indicatifPasseSimpleJe
        if (!text.elementsEqual("-")) {
            c.indicatifPasseSimpleJe = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.indicatifPasseSimpleTu
        if (!text.elementsEqual("-")) {
            c.indicatifPasseSimpleTu = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.indicatifPasseSimpleIl
        if (!text.elementsEqual("-")) {
            c.indicatifPasseSimpleIl = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.indicatifPasseSimpleNous.elementsEqual("-")) {
            c.indicatifPasseSimpleNous = Constants.NOUS + c.indicatifPasseSimpleNous
        }
        if (!c.indicatifPasseSimpleVous.elementsEqual("-")) {
            c.indicatifPasseSimpleVous = Constants.VOUS + c.indicatifPasseSimpleVous
        }
        text = c.indicatifPasseSimpleIls
        if (!text.elementsEqual("-")) {
            c.indicatifPasseSimpleIls = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveIndicatifPlusQueParfait(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.indicatifPlusQueParfaitJe
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.indicatifPlusQueParfaitJe = ppInv ? text : text + "(e)"
        }
        text = c.indicatifPlusQueParfaitTu
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.indicatifPlusQueParfaitTu = ppInv ? text : text + "(e)"
        }
        text = c.indicatifPlusQueParfaitIl
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indicatifPlusQueParfaitIl = ppInv ? text : text + "(e)"
        }
        if (!c.indicatifPlusQueParfaitNous.elementsEqual("-")) {
            text = Constants.NOUS + c.indicatifPlusQueParfaitNous
            c.indicatifPlusQueParfaitNous = ppInv ? text : text + "(e)s"
        }
        if (!c.indicatifPlusQueParfaitVous.elementsEqual("-")) {
            text = Constants.VOUS + c.indicatifPlusQueParfaitVous
            c.indicatifPlusQueParfaitVous = ppInv ? text : text + "(e)s"
        }
        text = c.indicatifPlusQueParfaitIls
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indicatifPlusQueParfaitIls = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveIndicatifImperfait(_ c : Conjugation) {
        var text : String = c.indicatifImperfaitJe
        if (!text.elementsEqual("-")) {
            c.indicatifImperfaitJe = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.indicatifImperfaitTu
        if (!text.elementsEqual("-")) {
            c.indicatifImperfaitTu = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.indicatifImperfaitIl
        if (!text.elementsEqual("-")) {
            c.indicatifImperfaitIl = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.indicatifImperfaitNous.elementsEqual("-")) {
            c.indicatifImperfaitNous = Constants.NOUS + c.indicatifImperfaitNous
        }
        if (!c.indicatifImperfaitVous.elementsEqual("-")) {
            c.indicatifImperfaitVous = Constants.VOUS + c.indicatifImperfaitVous
        }
        text = c.indicatifImperfaitIls
        if (!text.elementsEqual("-")) {
            c.indicatifImperfaitIls = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    private func addReflexiveIndicatifPasseCompose(_ c : Conjugation, _ ppInv : Bool) {
        var text : String = c.indicatifPasseComposeJe
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
            c.indicatifPasseComposeJe = ppInv ? text : text + "(e)"
        }
        text = c.indicatifPasseComposeTu
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
            c.indicatifPasseComposeTu = ppInv ? text : text + "(e)"
        }
        text = c.indicatifPasseComposeIl
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indicatifPasseComposeIl = ppInv ? text : text + "(e)"
        }
        if (!c.indicatifPasseComposeNous.elementsEqual("-")) {
            text = Constants.NOUS + c.indicatifPasseComposeNous
            c.indicatifPasseComposeNous = ppInv ? text : text + "(e)s"
        }
        if (!c.indicatifPasseComposeVous.elementsEqual("-")) {
            text = Constants.VOUS + c.indicatifPasseComposeVous
            c.indicatifPasseComposeVous = ppInv ? text : text + "(e)s"
        }
        text = c.indicatifPasseComposeIls
        if (!text.elementsEqual("-")) {
            text = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
            c.indicatifPasseComposeIls = ppInv ? text : text + "(e)s"
        }
    }
    
    private func addReflexiveIndicatifPresent(_ c : Conjugation) {
        var text : String = c.indicatifPresentJe
        if (!text.elementsEqual("-")) {
            c.indicatifPresentJe = ViewUtils.useApostrophe(text) ? Constants.MEA + text : Constants.ME + text
        }
        text = c.indicatifPresentTu
        if (!text.elementsEqual("-")) {
            c.indicatifPresentTu = ViewUtils.useApostrophe(text) ? Constants.TEA + text : Constants.TE + text
        }
        text = c.indicatifPresentIl
        if (!text.elementsEqual("-")) {
            c.indicatifPresentIl = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
        if (!c.indicatifPresentNous.elementsEqual("-")) {
            c.indicatifPresentNous = Constants.NOUS + c.indicatifPresentNous
        }
        if (!c.indicatifPresentVous.elementsEqual("-")) {
            c.indicatifPresentVous = Constants.VOUS + c.indicatifPresentVous
        }
        text = c.indicatifPresentIls
        if (!text.elementsEqual("-")) {
            c.indicatifPresentIls = ViewUtils.useApostrophe(text) ? Constants.SEA + text : Constants.SE + text
        }
    }
    
    
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
        let text : String = c.subjonctifPlusQueParfaitJe
        if (!text.elementsEqual("-")) {
            c.subjonctifPlusQueParfaitJe = ViewUtils.useApostrophe(text) ? Constants.QUE + Constants.JEA + text : Constants.QUE + Constants.JE + text
        }
        if (!c.subjonctifPlusQueParfaitTu.elementsEqual("-")) {
            c.subjonctifPlusQueParfaitTu = Constants.QUE + Constants.TU + c.subjonctifPlusQueParfaitTu
        }
        if (!c.subjonctifPlusQueParfaitIl.elementsEqual("-")) {
            c.subjonctifPlusQueParfaitIl = Constants.QUEA + Constants.IL + c.subjonctifPlusQueParfaitIl
        }
        if (!c.subjonctifPlusQueParfaitNous.elementsEqual("-")) {
            c.subjonctifPlusQueParfaitNous = Constants.QUE + Constants.NOUS + c.subjonctifPlusQueParfaitNous
        }
        if (!c.subjonctifPlusQueParfaitVous.elementsEqual("-")) {
            c.subjonctifPlusQueParfaitVous = Constants.QUE + Constants.VOUS + c.subjonctifPlusQueParfaitVous
        }
        if (!c.subjonctifPlusQueParfaitIls.elementsEqual("-")) {
            c.subjonctifPlusQueParfaitIls = Constants.QUEA + Constants.ILS + c.subjonctifPlusQueParfaitIls
        }
    }
    
    private func addPronomsSubjonctifImperfait(_ c : Conjugation) {
        let text : String = c.subjonctifImperfaitJe
        if (!text.elementsEqual("-")) {
            c.subjonctifImperfaitJe = ViewUtils.useApostrophe(text) ? Constants.QUE + Constants.JEA + text : Constants.QUE + Constants.JE + text
        }
        if (!c.subjonctifImperfaitTu.elementsEqual("-")) {
            c.subjonctifImperfaitTu = Constants.QUE + Constants.TU + c.subjonctifImperfaitTu
        }
        if (!c.subjonctifImperfaitIl.elementsEqual("-")) {
            c.subjonctifImperfaitIl = Constants.QUEA + Constants.IL + c.subjonctifImperfaitIl
        }
        if (!c.subjonctifImperfaitNous.elementsEqual("-")) {
            c.subjonctifImperfaitNous = Constants.QUE + Constants.NOUS + c.subjonctifImperfaitNous
        }
        if (!c.subjonctifImperfaitVous.elementsEqual("-")) {
            c.subjonctifImperfaitVous = Constants.QUE + Constants.VOUS + c.subjonctifImperfaitVous
        }
        if (!c.subjonctifImperfaitIls.elementsEqual("-")) {
            c.subjonctifImperfaitIls = Constants.QUEA + Constants.ILS + c.subjonctifImperfaitIls
        }
    }
    
    private func addPronomsSubjonctifPasse(_ c : Conjugation) {
        let text : String = c.subjonctifPasseJe
        if (!text.elementsEqual("-")) {
            c.subjonctifPasseJe = ViewUtils.useApostrophe(text) ? Constants.QUE + Constants.JEA + text : Constants.QUE + Constants.JE + text
        }
        if (!c.subjonctifPasseTu.elementsEqual("-")) {
            c.subjonctifPasseTu = Constants.QUE + Constants.TU + c.subjonctifPasseTu
        }
        if (!c.subjonctifPasseIl.elementsEqual("-")) {
            c.subjonctifPasseIl = Constants.QUEA + Constants.IL + c.subjonctifPasseIl
        }
        if (!c.subjonctifPasseNous.elementsEqual("-")) {
            c.subjonctifPasseNous = Constants.QUE + Constants.NOUS + c.subjonctifPasseNous
        }
        if (!c.subjonctifPasseVous.elementsEqual("-")) {
            c.subjonctifPasseVous = Constants.QUE + Constants.VOUS + c.subjonctifPasseVous
        }
        if (!c.subjonctifPasseIls.elementsEqual("-")) {
            c.subjonctifPasseIls = Constants.QUEA + Constants.ILS + c.subjonctifPasseIls
        }
    }
    
    private func addPronomsSubjonctifPresent(_ c : Conjugation) {
        let text : String = c.subjonctifPresentJe
        if (!text.elementsEqual("-")) {
            c.subjonctifPresentJe = ViewUtils.useApostrophe(text) ? Constants.QUE + Constants.JEA + text : Constants.QUE + Constants.JE + text
        }
        if (!c.subjonctifPresentTu.elementsEqual("-")) {
            c.subjonctifPresentTu = Constants.QUE + Constants.TU + c.subjonctifPresentTu
        }
        if (!c.subjonctifPresentIl.elementsEqual("-")) {
            c.subjonctifPresentIl = Constants.QUEA + Constants.IL + c.subjonctifPresentIl
        }
        if (!c.subjonctifPresentNous.elementsEqual("-")) {
            c.subjonctifPresentNous = Constants.QUE + Constants.NOUS + c.subjonctifPresentNous
        }
        if (!c.subjonctifPresentVous.elementsEqual("-")) {
            c.subjonctifPresentVous = Constants.QUE + Constants.VOUS + c.subjonctifPresentVous
        }
        if (!c.subjonctifPresentIls.elementsEqual("-")) {
            c.subjonctifPresentIls = Constants.QUEA + Constants.ILS + c.subjonctifPresentIls
        }
    }
    
    private func addPronomsConditionnelPasse(_ c : Conjugation) {
        let text : String = c.conditionnelPasseJe
        if (!text.elementsEqual("-")) {
            c.conditionnelPasseJe = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.conditionnelPasseTu.elementsEqual("-")) {
            c.conditionnelPasseTu = Constants.TU + c.conditionnelPasseTu
        }
        if (!c.conditionnelPasseIl.elementsEqual("-")) {
            c.conditionnelPasseIl = Constants.IL + c.conditionnelPasseIl
        }
        if (!c.conditionnelPasseNous.elementsEqual("-")) {
            c.conditionnelPasseNous = Constants.NOUS + c.conditionnelPasseNous
        }
        if (!c.conditionnelPasseVous.elementsEqual("-")) {
            c.conditionnelPasseVous = Constants.VOUS + c.conditionnelPasseVous
        }
        if (!c.conditionnelPasseIls.elementsEqual("-")) {
            c.conditionnelPasseIls = Constants.ILS + c.conditionnelPasseIls
        }
    }
    
    private func addPronomsConditionnelPresent(_ c : Conjugation) {
        let text : String = c.conditionnelPresentJe
        if (!text.elementsEqual("-")) {
            c.conditionnelPresentJe = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.conditionnelPresentTu.elementsEqual("-")) {
            c.conditionnelPresentTu = Constants.TU + c.conditionnelPresentTu
        }
        if (!c.conditionnelPresentIl.elementsEqual("-")) {
            c.conditionnelPresentIl = Constants.IL + c.conditionnelPresentIl
        }
        if (!c.conditionnelPresentNous.elementsEqual("-")) {
            c.conditionnelPresentNous = Constants.NOUS + c.conditionnelPresentNous
        }
        if (!c.conditionnelPresentVous.elementsEqual("-")) {
            c.conditionnelPresentVous = Constants.VOUS + c.conditionnelPresentVous
        }
        if (!c.conditionnelPresentIls.elementsEqual("-")) {
            c.conditionnelPresentIls = Constants.ILS + c.conditionnelPresentIls
        }
    }
    
    private func addPronomsIndicatifFuturAnterieur(_ c : Conjugation) {
        let text : String = c.indicatifFuturAnterieurJe
        if (!text.elementsEqual("-")) {
            c.indicatifFuturAnterieurJe = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indicatifFuturAnterieurTu.elementsEqual("-")) {
            c.indicatifFuturAnterieurTu = Constants.TU + c.indicatifFuturAnterieurTu
        }
        if (!c.indicatifFuturAnterieurIl.elementsEqual("-")) {
            c.indicatifFuturAnterieurIl = Constants.IL + c.indicatifFuturAnterieurIl
        }
        if (!c.indicatifFuturAnterieurNous.elementsEqual("-")) {
            c.indicatifFuturAnterieurNous = Constants.NOUS + c.indicatifFuturAnterieurNous
        }
        if (!c.indicatifFuturAnterieurVous.elementsEqual("-")) {
            c.indicatifFuturAnterieurVous = Constants.VOUS + c.indicatifFuturAnterieurVous
        }
        if (!c.indicatifFuturAnterieurIls.elementsEqual("-")) {
            c.indicatifFuturAnterieurIls = Constants.ILS + c.indicatifFuturAnterieurIls
        }
    }
    
    private func addPronomsIndicatifFuturSimple(_ c : Conjugation) {
        let text : String = c.indicatifFuturSimpleJe
        if (!text.elementsEqual("-")) {
            c.indicatifFuturSimpleJe = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indicatifFuturSimpleTu.elementsEqual("-")) {
            c.indicatifFuturSimpleTu = Constants.TU + c.indicatifFuturSimpleTu
        }
        if (!c.indicatifFuturSimpleIl.elementsEqual("-")) {
            c.indicatifFuturSimpleIl = Constants.IL + c.indicatifFuturSimpleIl
        }
        if (!c.indicatifFuturSimpleNous.elementsEqual("-")) {
            c.indicatifFuturSimpleNous = Constants.NOUS + c.indicatifFuturSimpleNous
        }
        if (!c.indicatifFuturSimpleVous.elementsEqual("-")) {
            c.indicatifFuturSimpleVous = Constants.VOUS + c.indicatifFuturSimpleVous
        }
        if (!c.indicatifFuturSimpleIls.elementsEqual("-")) {
            c.indicatifFuturSimpleIls = Constants.ILS + c.indicatifFuturSimpleIls
        }
    }
    
    private func addPronomsIndicatifPasseAnterieur(_ c : Conjugation) {
        let text : String = c.indicatifPasseAnterieurJe
        if (!text.elementsEqual("-")) {
            c.indicatifPasseAnterieurJe = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indicatifPasseAnterieurTu.elementsEqual("-")) {
            c.indicatifPasseAnterieurTu = Constants.TU + c.indicatifPasseAnterieurTu
        }
        if (!c.indicatifPasseAnterieurIl.elementsEqual("-")) {
            c.indicatifPasseAnterieurIl = Constants.IL + c.indicatifPasseAnterieurIl
        }
        if (!c.indicatifPasseAnterieurNous.elementsEqual("-")) {
            c.indicatifPasseAnterieurNous = Constants.NOUS + c.indicatifPasseAnterieurNous
        }
        if (!c.indicatifPasseAnterieurVous.elementsEqual("-")) {
            c.indicatifPasseAnterieurVous = Constants.VOUS + c.indicatifPasseAnterieurVous
        }
        if (!c.indicatifPasseAnterieurIls.elementsEqual("-")) {
            c.indicatifPasseAnterieurIls = Constants.ILS + c.indicatifPasseAnterieurIls
        }
    }
    
    private func addPronomsIndicatifPasseSimple(_ c : Conjugation) {
        let text : String = c.indicatifPasseSimpleJe
        if (!text.elementsEqual("-")) {
            c.indicatifPasseSimpleJe = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indicatifPasseSimpleTu.elementsEqual("-")) {
            c.indicatifPasseSimpleTu = Constants.TU + c.indicatifPasseSimpleTu
        }
        if (!c.indicatifPasseSimpleIl.elementsEqual("-")) {
            c.indicatifPasseSimpleIl = Constants.IL + c.indicatifPasseSimpleIl
        }
        if (!c.indicatifPasseSimpleNous.elementsEqual("-")) {
            c.indicatifPasseSimpleNous = Constants.NOUS + c.indicatifPasseSimpleNous
        }
        if (!c.indicatifPasseSimpleVous.elementsEqual("-")) {
            c.indicatifPasseSimpleVous = Constants.VOUS + c.indicatifPasseSimpleVous
        }
        if (!c.indicatifPasseSimpleIls.elementsEqual("-")) {
            c.indicatifPasseSimpleIls = Constants.ILS + c.indicatifPasseSimpleIls
        }
    }
    
    private func addPronomsIndicatifPlusQueParfait(_ c : Conjugation) {
        let text : String = c.indicatifPlusQueParfaitJe
        if (!text.elementsEqual("-")) {
            c.indicatifPlusQueParfaitJe = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indicatifPlusQueParfaitTu.elementsEqual("-")) {
            c.indicatifPlusQueParfaitTu = Constants.TU + c.indicatifPlusQueParfaitTu
        }
        if (!c.indicatifPlusQueParfaitIl.elementsEqual("-")) {
            c.indicatifPlusQueParfaitIl = Constants.IL + c.indicatifPlusQueParfaitIl
        }
        if (!c.indicatifPlusQueParfaitNous.elementsEqual("-")) {
            c.indicatifPlusQueParfaitNous = Constants.NOUS + c.indicatifPlusQueParfaitNous
        }
        if (!c.indicatifPlusQueParfaitVous.elementsEqual("-")) {
            c.indicatifPlusQueParfaitVous = Constants.VOUS + c.indicatifPlusQueParfaitVous
        }
        if (!c.indicatifPlusQueParfaitIls.elementsEqual("-")) {
            c.indicatifPlusQueParfaitIls = Constants.ILS + c.indicatifPlusQueParfaitIls
        }
    }
    
    private func addPronomsIndicatifImperfait(_ c : Conjugation) {
        let text : String = c.indicatifImperfaitJe
        if (!text.elementsEqual("-")) {
            c.indicatifImperfaitJe = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indicatifImperfaitTu.elementsEqual("-")) {
            c.indicatifImperfaitTu = Constants.TU + c.indicatifImperfaitTu
        }
        if (!c.indicatifImperfaitIl.elementsEqual("-")) {
            c.indicatifImperfaitIl = Constants.IL + c.indicatifImperfaitIl
        }
        if (!c.indicatifImperfaitNous.elementsEqual("-")) {
            c.indicatifImperfaitNous = Constants.NOUS + c.indicatifImperfaitNous
        }
        if (!c.indicatifImperfaitVous.elementsEqual("-")) {
            c.indicatifImperfaitVous = Constants.VOUS + c.indicatifImperfaitVous
        }
        if (!c.indicatifImperfaitIls.elementsEqual("-")) {
            c.indicatifImperfaitIls = Constants.ILS + c.indicatifImperfaitIls
        }
    }
    
    private func addPronomsIndicatifPasseCompose(_ c : Conjugation) {
        let text : String = c.indicatifPasseComposeJe
        if (!text.elementsEqual("-")) {
            c.indicatifPasseComposeJe = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indicatifPasseComposeTu.elementsEqual("-")) {
            c.indicatifPasseComposeTu = Constants.TU + c.indicatifPasseComposeTu
        }
        if (!c.indicatifPasseComposeIl.elementsEqual("-")) {
            c.indicatifPasseComposeIl = Constants.IL + c.indicatifPasseComposeIl
        }
        if (!c.indicatifPasseComposeNous.elementsEqual("-")) {
            c.indicatifPasseComposeNous = Constants.NOUS + c.indicatifPasseComposeNous
        }
        if (!c.indicatifPasseComposeVous.elementsEqual("-")) {
            c.indicatifPasseComposeVous = Constants.VOUS + c.indicatifPasseComposeVous
        }
        if (!c.indicatifPasseComposeIls.elementsEqual("-")) {
            c.indicatifPasseComposeIls = Constants.ILS + c.indicatifPasseComposeIls
        }
    }
    
    private func addPronomsIndicatifPresent(_ c : Conjugation) {
        let text : String = c.indicatifPresentJe
        if (!text.elementsEqual("-")) {
            c.indicatifPresentJe = ViewUtils.useApostrophe(text) ? Constants.JEA + text : Constants.JE + text
        }
        if (!c.indicatifPresentTu.elementsEqual("-")) {
            c.indicatifPresentTu = Constants.TU + c.indicatifPresentTu
        }
        if (!c.indicatifPresentIl.elementsEqual("-")) {
            c.indicatifPresentIl = Constants.IL + c.indicatifPresentIl
        }
        if (!c.indicatifPresentNous.elementsEqual("-")) {
            c.indicatifPresentNous = Constants.NOUS + c.indicatifPresentNous
        }
        if (!c.indicatifPresentVous.elementsEqual("-")) {
            c.indicatifPresentVous = Constants.VOUS + c.indicatifPresentVous
        }
        if (!c.indicatifPresentIls.elementsEqual("-")) {
            c.indicatifPresentIls = Constants.ILS + c.indicatifPresentIls
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
        c.infinitivePasse = "-"
        c.participePresent = "-"
        c.participePasse1 = "-"
        c.participePasse2 = "-"
        c.gerondifPresent = "-"
        c.gerondifPasse = "-"
    }
    
    private func ignoreIndicatifPresent(_ c : Conjugation) {
        c.indicatifPresentJe = "-"
        c.indicatifPresentTu = "-"
        c.indicatifPresentIl = "-"
        c.indicatifPresentNous = "-"
        c.indicatifPresentVous = "-"
        c.indicatifPresentIls = "-"
    }
    
    private func ignoreIndicatifPresentNousVousIls(_ c : Conjugation) {
        c.indicatifPresentNous = "-"
        c.indicatifPresentVous = "-"
        c.indicatifPresentIls = "-"
    }
    
    private func ignoreIndicatifPasseCompose(_ c : Conjugation) {
        c.indicatifPasseComposeJe = "-"
        c.indicatifPasseComposeTu = "-"
        c.indicatifPasseComposeIl = "-"
        c.indicatifPasseComposeNous = "-"
        c.indicatifPasseComposeVous = "-"
        c.indicatifPasseComposeIls = "-"
    }
    
    private func ignoreIndicatifImperfait(_ c : Conjugation) {
        c.indicatifImperfaitJe = "-"
        c.indicatifImperfaitTu = "-"
        c.indicatifImperfaitIl = "-"
        c.indicatifImperfaitNous = "-"
        c.indicatifImperfaitVous = "-"
        c.indicatifImperfaitIls = "-"
    }
    
    private func ignoreIndicatifPlusQueParfait(_ c : Conjugation) {
        c.indicatifPlusQueParfaitJe = "-"
        c.indicatifPlusQueParfaitTu = "-"
        c.indicatifPlusQueParfaitIl = "-"
        c.indicatifPlusQueParfaitNous = "-"
        c.indicatifPlusQueParfaitVous = "-"
        c.indicatifPlusQueParfaitIls = "-"
    }
    
    private func ignoreIndicatifPasseSimple(_ c : Conjugation) {
        c.indicatifPasseSimpleJe = "-"
        c.indicatifPasseSimpleTu = "-"
        c.indicatifPasseSimpleIl = "-"
        c.indicatifPasseSimpleNous = "-"
        c.indicatifPasseSimpleVous = "-"
        c.indicatifPasseSimpleIls = "-"
    }
    
    private func ignoreIndicatifPasseAnterieur(_ c : Conjugation) {
        c.indicatifPasseAnterieurJe = "-"
        c.indicatifPasseAnterieurTu = "-"
        c.indicatifPasseAnterieurIl = "-"
        c.indicatifPasseAnterieurNous = "-"
        c.indicatifPasseAnterieurVous = "-"
        c.indicatifPasseAnterieurIls = "-"
    }
    
    private func ignoreIndicatifFuturSimple(_ c : Conjugation) {
        c.indicatifFuturSimpleJe = "-"
        c.indicatifFuturSimpleTu = "-"
        c.indicatifFuturSimpleIl = "-"
        c.indicatifFuturSimpleNous = "-"
        c.indicatifFuturSimpleVous = "-"
        c.indicatifFuturSimpleIls = "-"
    }
    
    private func ignoreIndicatifFuturAnterieur(_ c : Conjugation) {
        c.indicatifFuturAnterieurJe = "-"
        c.indicatifFuturAnterieurTu = "-"
        c.indicatifFuturAnterieurIl = "-"
        c.indicatifFuturAnterieurNous = "-"
        c.indicatifFuturAnterieurVous = "-"
        c.indicatifFuturAnterieurIls = "-"
    }
    
    private func ignoreConditionnelPresent(_ c : Conjugation) {
        c.conditionnelPresentJe = "-"
        c.conditionnelPresentTu = "-"
        c.conditionnelPresentIl = "-"
        c.conditionnelPresentNous = "-"
        c.conditionnelPresentVous = "-"
        c.conditionnelPresentIls = "-"
    }
    
    private func ignoreConditionnelPasse(_ c : Conjugation) {
        c.conditionnelPasseJe = "-"
        c.conditionnelPasseTu = "-"
        c.conditionnelPasseIl = "-"
        c.conditionnelPasseNous = "-"
        c.conditionnelPasseVous = "-"
        c.conditionnelPasseIls = "-"
    }
    
    private func ignoreSubjonctifPresent(_ c : Conjugation) {
        c.subjonctifPresentJe = "-"
        c.subjonctifPresentTu = "-"
        c.subjonctifPresentIl = "-"
        c.subjonctifPresentNous = "-"
        c.subjonctifPresentVous = "-"
        c.subjonctifPresentIls = "-"
    }
    
    private func ignoreSubjonctifPasse(_ c : Conjugation) {
        c.subjonctifPasseJe = "-"
        c.subjonctifPasseTu = "-"
        c.subjonctifPasseIl = "-"
        c.subjonctifPasseNous = "-"
        c.subjonctifPasseVous = "-"
        c.subjonctifPasseIls = "-"
    }
    
    private func ignoreSubjonctifImperfait(_ c : Conjugation) {
        c.subjonctifImperfaitJe = "-"
        c.subjonctifImperfaitTu = "-"
        c.subjonctifImperfaitIl = "-"
        c.subjonctifImperfaitNous = "-"
        c.subjonctifImperfaitVous = "-"
        c.subjonctifImperfaitIls = "-"
    }
    
    private func ignoreSubjonctifPlusQueParfait(_ c : Conjugation) {
        c.subjonctifPlusQueParfaitJe = "-"
        c.subjonctifPlusQueParfaitTu = "-"
        c.subjonctifPlusQueParfaitIl = "-"
        c.subjonctifPlusQueParfaitNous = "-"
        c.subjonctifPlusQueParfaitVous = "-"
        c.subjonctifPlusQueParfaitIls = "-"
    }
    
    private func ignoreImperatif(_ c : Conjugation) {
        c.imperatifPresentTu = "-"
        c.imperatifPresentNous = "-"
        c.imperatifPresentVous = "-"
        c.imperatifPasseTu = "-"
        c.imperatifPasseNous = "-"
        c.imperatifPasseVous = "-"
    }
    
    private func ignoreImperatifNousVous(_ c : Conjugation) {
        c.imperatifPresentNous = "-"
        c.imperatifPresentVous = "-"
    }
    
    /**
     * Marks the conjugations as "-" for all persons except il
     */
    private func ignoreAllPersonsExceptIl(_ c : Conjugation) {
        c.indicatifPresentJe = "-"
        c.indicatifPresentTu = "-"
        c.indicatifPresentNous = "-"
        c.indicatifPresentVous = "-"
        c.indicatifPresentIls = "-"
        
        c.indicatifPasseComposeJe = "-"
        c.indicatifPasseComposeTu = "-"
        c.indicatifPasseComposeNous = "-"
        c.indicatifPasseComposeVous = "-"
        c.indicatifPasseComposeIls = "-"
        
        c.indicatifImperfaitJe = "-"
        c.indicatifImperfaitTu = "-"
        c.indicatifImperfaitNous = "-"
        c.indicatifImperfaitVous = "-"
        c.indicatifImperfaitIls = "-"
        
        c.indicatifPlusQueParfaitJe = "-"
        c.indicatifPlusQueParfaitTu = "-"
        c.indicatifPlusQueParfaitNous = "-"
        c.indicatifPlusQueParfaitVous = "-"
        c.indicatifPlusQueParfaitIls = "-"
        
        c.indicatifPasseSimpleJe = "-"
        c.indicatifPasseSimpleTu = "-"
        c.indicatifPasseSimpleNous = "-"
        c.indicatifPasseSimpleVous = "-"
        c.indicatifPasseSimpleIls = "-"
        
        c.indicatifPasseAnterieurJe = "-"
        c.indicatifPasseAnterieurTu = "-"
        c.indicatifPasseAnterieurNous = "-"
        c.indicatifPasseAnterieurVous = "-"
        c.indicatifPasseAnterieurIls = "-"
        
        c.indicatifFuturSimpleJe = "-"
        c.indicatifFuturSimpleTu = "-"
        c.indicatifFuturSimpleNous = "-"
        c.indicatifFuturSimpleVous = "-"
        c.indicatifFuturSimpleIls = "-"
        
        c.indicatifFuturAnterieurJe = "-"
        c.indicatifFuturAnterieurTu = "-"
        c.indicatifFuturAnterieurNous = "-"
        c.indicatifFuturAnterieurVous = "-"
        c.indicatifFuturAnterieurIls = "-"
        
        c.conditionnelPresentJe = "-"
        c.conditionnelPresentTu = "-"
        c.conditionnelPresentNous = "-"
        c.conditionnelPresentVous = "-"
        c.conditionnelPresentIls = "-"
        
        c.conditionnelPasseJe = "-"
        c.conditionnelPasseTu = "-"
        c.conditionnelPasseNous = "-"
        c.conditionnelPasseVous = "-"
        c.conditionnelPasseIls = "-"
        
        c.subjonctifPresentJe = "-"
        c.subjonctifPresentTu = "-"
        c.subjonctifPresentNous = "-"
        c.subjonctifPresentVous = "-"
        c.subjonctifPresentIls = "-"
        
        c.subjonctifPasseJe = "-"
        c.subjonctifPasseTu = "-"
        c.subjonctifPasseNous = "-"
        c.subjonctifPasseVous = "-"
        c.subjonctifPasseIls = "-"
        
        c.subjonctifImperfaitJe = "-"
        c.subjonctifImperfaitTu = "-"
        c.subjonctifImperfaitNous = "-"
        c.subjonctifImperfaitVous = "-"
        c.subjonctifImperfaitIls = "-"
        
        c.subjonctifPlusQueParfaitJe = "-"
        c.subjonctifPlusQueParfaitTu = "-"
        c.subjonctifPlusQueParfaitNous = "-"
        c.subjonctifPlusQueParfaitVous = "-"
        c.subjonctifPlusQueParfaitIls = "-"
        
        ignoreImperatif(c)
    }
    
    /**
     * Marks the conjugations as "-" for all persons except il and ils.
     */
    private func ignoreAllPersonsExceptIlAndIls(_ c : Conjugation) {
        c.indicatifPresentJe = "-"
        c.indicatifPresentTu = "-"
        c.indicatifPresentNous = "-"
        c.indicatifPresentVous = "-"
        
        c.indicatifPasseComposeJe = "-"
        c.indicatifPasseComposeTu = "-"
        c.indicatifPasseComposeNous = "-"
        c.indicatifPasseComposeVous = "-"
        
        c.indicatifImperfaitJe = "-"
        c.indicatifImperfaitTu = "-"
        c.indicatifImperfaitNous = "-"
        c.indicatifImperfaitVous = "-"
        
        c.indicatifPlusQueParfaitJe = "-"
        c.indicatifPlusQueParfaitTu = "-"
        c.indicatifPlusQueParfaitNous = "-"
        c.indicatifPlusQueParfaitVous = "-"
        
        c.indicatifPasseSimpleJe = "-"
        c.indicatifPasseSimpleTu = "-"
        c.indicatifPasseSimpleNous = "-"
        c.indicatifPasseSimpleVous = "-"
        
        c.indicatifPasseAnterieurJe = "-"
        c.indicatifPasseAnterieurTu = "-"
        c.indicatifPasseAnterieurNous = "-"
        c.indicatifPasseAnterieurVous = "-"
        
        c.indicatifFuturSimpleJe = "-"
        c.indicatifFuturSimpleTu = "-"
        c.indicatifFuturSimpleNous = "-"
        c.indicatifFuturSimpleVous = "-"
        
        c.indicatifFuturAnterieurJe = "-"
        c.indicatifFuturAnterieurTu = "-"
        c.indicatifFuturAnterieurNous = "-"
        c.indicatifFuturAnterieurVous = "-"
        
        c.conditionnelPresentJe = "-"
        c.conditionnelPresentTu = "-"
        c.conditionnelPresentNous = "-"
        c.conditionnelPresentVous = "-"
        
        c.conditionnelPasseJe = "-"
        c.conditionnelPasseTu = "-"
        c.conditionnelPasseNous = "-"
        c.conditionnelPasseVous = "-"
        
        c.subjonctifPresentJe = "-"
        c.subjonctifPresentTu = "-"
        c.subjonctifPresentNous = "-"
        c.subjonctifPresentVous = "-"
        
        c.subjonctifPasseJe = "-"
        c.subjonctifPasseTu = "-"
        c.subjonctifPasseNous = "-"
        c.subjonctifPasseVous = "-"
        
        c.subjonctifImperfaitJe = "-"
        c.subjonctifImperfaitTu = "-"
        c.subjonctifImperfaitNous = "-"
        c.subjonctifImperfaitVous = "-"
        
        c.subjonctifPlusQueParfaitJe = "-"
        c.subjonctifPlusQueParfaitTu = "-"
        c.subjonctifPlusQueParfaitNous = "-"
        c.subjonctifPlusQueParfaitVous = "-"
        
        ignoreImperatif(c)
    }
    
    private func ignoreAllPersonsExceptIlAndIlsIndicatif(_ c : Conjugation) {
        c.indicatifPresentJe = "-"
        c.indicatifPresentTu = "-"
        c.indicatifPresentNous = "-"
        c.indicatifPresentVous = "-"
        
        ignoreIndicatifPasseCompose(c)
        
        c.indicatifImperfaitJe = "-"
        c.indicatifImperfaitTu = "-"
        c.indicatifImperfaitNous = "-"
        c.indicatifImperfaitVous = "-"
        
        ignoreIndicatifPlusQueParfait(c)
        
        c.indicatifPasseSimpleJe = "-"
        c.indicatifPasseSimpleTu = "-"
        c.indicatifPasseSimpleNous = "-"
        c.indicatifPasseSimpleVous = "-"
        
        ignoreIndicatifPasseAnterieur(c)
        
        c.indicatifFuturSimpleJe = "-"
        c.indicatifFuturSimpleTu = "-"
        c.indicatifFuturSimpleNous = "-"
        c.indicatifFuturSimpleVous = "-"
        
        ignoreIndicatifFuturAnterieur(c)
        
        c.conditionnelPresentJe = "-"
        c.conditionnelPresentTu = "-"
        c.conditionnelPresentNous = "-"
        c.conditionnelPresentVous = "-"
        
        ignoreConditionnelPasse(c)
        ignoreSubjonctifPresent(c)
        ignoreSubjonctifPasse(c)
        ignoreSubjonctifImperfait(c)
        ignoreSubjonctifPlusQueParfait(c)
        ignoreImperatif(c)
    }
    
    
    private func fillConjugationDetails(_ c : Conjugation) {
        infinitivePresent.setTitle(c.infinitivePresent, for: .normal)
        infinitivePasse.setTitle(c.infinitivePasse, for: .normal)
        participePresent.setTitle(c.participePresent, for: .normal)
        participePasse1.setTitle(c.participePasse1, for: .normal)
        participePasse2.setTitle(c.participePasse2, for: .normal)
        gerondifPresent.setTitle(c.gerondifPresent, for: .normal)
        gerondifPasse.setTitle(c.gerondifPasse, for: .normal)
        imperatifPresentTu.setTitle(c.imperatifPresentTu, for: .normal)
        imperatifPresentNous.setTitle(c.imperatifPresentNous, for: .normal)
        imperatifPresentVous.setTitle(c.imperatifPresentVous, for: .normal)
        imperatifPasseTu.setTitle(c.imperatifPasseTu, for: .normal)
        imperatifPasseNous.setTitle(c.imperatifPasseNous, for: .normal)
        imperatifPasseVous.setTitle(c.imperatifPasseVous, for: .normal)
        
        indicatifPresentJe.setTitle(c.indicatifPresentJe, for: .normal)
        indicatifPresentTu.setTitle(c.indicatifPresentTu, for: .normal)
        indicatifPresentIl.setTitle(c.indicatifPresentIl, for: .normal)
        indicatifPresentNous.setTitle(c.indicatifPresentNous, for: .normal)
        indicatifPresentVous.setTitle(c.indicatifPresentVous, for: .normal)
        indicatifPresentIls.setTitle(c.indicatifPresentIls, for: .normal)
        indicatifPasseComposeJe.setTitle(c.indicatifPasseComposeJe, for: .normal)
        indicatifPasseComposeTu.setTitle(c.indicatifPasseComposeTu, for: .normal)
        indicatifPasseComposeIl.setTitle(c.indicatifPasseComposeIl, for: .normal)
        indicatifPasseComposeNous.setTitle(c.indicatifPasseComposeNous, for: .normal)
        indicatifPasseComposeVous.setTitle(c.indicatifPasseComposeVous, for: .normal)
        indicatifPasseComposeIls.setTitle(c.indicatifPasseComposeIls, for: .normal)
        indicatifImperfaitJe.setTitle(c.indicatifImperfaitJe, for: .normal)
        indicatifImperfaitTu.setTitle(c.indicatifImperfaitTu, for: .normal)
        indicatifImperfaitIl.setTitle(c.indicatifImperfaitIl, for: .normal)
        indicatifImperfaitNous.setTitle(c.indicatifImperfaitNous, for: .normal)
        indicatifImperfaitVous.setTitle(c.indicatifImperfaitVous, for: .normal)
        indicatifImperfaitIls.setTitle(c.indicatifImperfaitIls, for: .normal)
        indicatifPlusQueParfaitJe.setTitle(c.indicatifPlusQueParfaitJe, for: .normal)
        indicatifPlusQueParfaitTu.setTitle(c.indicatifPlusQueParfaitTu, for: .normal)
        indicatifPlusQueParfaitIl.setTitle(c.indicatifPlusQueParfaitIl, for: .normal)
        indicatifPlusQueParfaitNous.setTitle(c.indicatifPlusQueParfaitNous, for: .normal)
        indicatifPlusQueParfaitVous.setTitle(c.indicatifPlusQueParfaitVous, for: .normal)
        indicatifPlusQueParfaitIls.setTitle(c.indicatifPlusQueParfaitIls, for: .normal)
        indicatifPasseSimpleJe.setTitle(c.indicatifPasseSimpleJe, for: .normal)
        indicatifPasseSimpleTu.setTitle(c.indicatifPasseSimpleTu, for: .normal)
        indicatifPasseSimpleIl.setTitle(c.indicatifPasseSimpleIl, for: .normal)
        indicatifPasseSimpleNous.setTitle(c.indicatifPasseSimpleNous, for: .normal)
        indicatifPasseSimpleVous.setTitle(c.indicatifPasseSimpleVous, for: .normal)
        indicatifPasseSimpleIls.setTitle(c.indicatifPasseSimpleIls, for: .normal)
        indicatifPasseAnterieurJe.setTitle(c.indicatifPasseAnterieurJe, for: .normal)
        indicatifPasseAnterieurTu.setTitle(c.indicatifPasseAnterieurTu, for: .normal)
        indicatifPasseAnterieurIl.setTitle(c.indicatifPasseAnterieurIl, for: .normal)
        indicatifPasseAnterieurNous.setTitle(c.indicatifPasseAnterieurNous, for: .normal)
        indicatifPasseAnterieurVous.setTitle(c.indicatifPasseAnterieurVous, for: .normal)
        indicatifPasseAnterieurIls.setTitle(c.indicatifPasseAnterieurIls, for: .normal)
        indicatifFuturSimpleJe.setTitle(c.indicatifFuturSimpleJe, for: .normal)
        indicatifFuturSimpleTu.setTitle(c.indicatifFuturSimpleTu, for: .normal)
        indicatifFuturSimpleIl.setTitle(c.indicatifFuturSimpleIl, for: .normal)
        indicatifFuturSimpleNous.setTitle(c.indicatifFuturSimpleNous, for: .normal)
        indicatifFuturSimpleVous.setTitle(c.indicatifFuturSimpleVous, for: .normal)
        indicatifFuturSimpleIls.setTitle(c.indicatifFuturSimpleIls, for: .normal)
        indicatifFuturAnterieurJe.setTitle(c.indicatifFuturAnterieurJe, for: .normal)
        indicatifFuturAnterieurTu.setTitle(c.indicatifFuturAnterieurTu, for: .normal)
        indicatifFuturAnterieurIl.setTitle(c.indicatifFuturAnterieurIl, for: .normal)
        indicatifFuturAnterieurNous.setTitle(c.indicatifFuturAnterieurNous, for: .normal)
        indicatifFuturAnterieurVous.setTitle(c.indicatifFuturAnterieurVous, for: .normal)
        indicatifFuturAnterieurIls.setTitle(c.indicatifFuturAnterieurIls, for: .normal)
        
        subjonctifPresentJe.setTitle(c.subjonctifPresentJe, for: .normal)
        subjonctifPresentTu.setTitle(c.subjonctifPresentTu, for: .normal)
        subjonctifPresentIl.setTitle(c.subjonctifPresentIl, for: .normal)
        subjonctifPresentNous.setTitle(c.subjonctifPresentNous, for: .normal)
        subjonctifPresentVous.setTitle(c.subjonctifPresentVous, for: .normal)
        subjonctifPresentIls.setTitle(c.subjonctifPresentIls, for: .normal)
        subjonctifPasseJe.setTitle(c.subjonctifPasseJe, for: .normal)
        subjonctifPasseTu.setTitle(c.subjonctifPasseTu, for: .normal)
        subjonctifPasseIl.setTitle(c.subjonctifPasseIl, for: .normal)
        subjonctifPasseNous.setTitle(c.subjonctifPasseNous, for: .normal)
        subjonctifPasseVous.setTitle(c.subjonctifPasseVous, for: .normal)
        subjonctifPasseIls.setTitle(c.subjonctifPasseIls, for: .normal)
        subjonctifImperfaitJe.setTitle(c.subjonctifImperfaitJe, for: .normal)
        subjonctifImperfaitTu.setTitle(c.subjonctifImperfaitTu, for: .normal)
        subjonctifImperfaitIl.setTitle(c.subjonctifImperfaitIl, for: .normal)
        subjonctifImperfaitNous.setTitle(c.subjonctifImperfaitNous, for: .normal)
        subjonctifImperfaitVous.setTitle(c.subjonctifImperfaitVous, for: .normal)
        subjonctifImperfaitIls.setTitle(c.subjonctifImperfaitIls, for: .normal)
        subjonctifPlusQueParfaitJe.setTitle(c.subjonctifPlusQueParfaitJe, for: .normal)
        subjonctifPlusQueParfaitTu.setTitle(c.subjonctifPlusQueParfaitTu, for: .normal)
        subjonctifPlusQueParfaitIl.setTitle(c.subjonctifPlusQueParfaitIl, for: .normal)
        subjonctifPlusQueParfaitNous.setTitle(c.subjonctifPlusQueParfaitNous, for: .normal)
        subjonctifPlusQueParfaitVous.setTitle(c.subjonctifPlusQueParfaitVous, for: .normal)
        subjonctifPlusQueParfaitIls.setTitle(c.subjonctifPlusQueParfaitIls, for: .normal)
        
        conditionnelPresentJe.setTitle(c.conditionnelPresentJe, for: .normal)
        conditionnelPresentTu.setTitle(c.conditionnelPresentTu, for: .normal)
        conditionnelPresentIl.setTitle(c.conditionnelPresentIl, for: .normal)
        conditionnelPresentNous.setTitle(c.conditionnelPresentNous, for: .normal)
        conditionnelPresentVous.setTitle(c.conditionnelPresentVous, for: .normal)
        conditionnelPresentIls.setTitle(c.conditionnelPresentIls, for: .normal)
        conditionnelPasseJe.setTitle(c.conditionnelPasseJe, for: .normal)
        conditionnelPasseTu.setTitle(c.conditionnelPasseTu, for: .normal)
        conditionnelPasseIl.setTitle(c.conditionnelPasseIl, for: .normal)
        conditionnelPasseNous.setTitle(c.conditionnelPasseNous, for: .normal)
        conditionnelPasseVous.setTitle(c.conditionnelPasseVous, for: .normal)
        conditionnelPasseIls.setTitle(c.conditionnelPasseIls, for: .normal)
    }
    
    private func setAdjustsFontForContentSizeCategory() {
        infinitive.titleLabel?.adjustsFontForContentSizeCategory = true
        definition.titleLabel?.adjustsFontForContentSizeCategory = true
        sample1.titleLabel?.adjustsFontForContentSizeCategory = true
        sample2.titleLabel?.adjustsFontForContentSizeCategory = true
        sample3.titleLabel?.adjustsFontForContentSizeCategory = true
        
        infinitivePresent.titleLabel?.adjustsFontForContentSizeCategory = true
        infinitivePasse.titleLabel?.adjustsFontForContentSizeCategory = true
        participePresent.titleLabel?.adjustsFontForContentSizeCategory = true
        participePasse1.titleLabel?.adjustsFontForContentSizeCategory = true
        participePasse2.titleLabel?.adjustsFontForContentSizeCategory = true
        gerondifPresent.titleLabel?.adjustsFontForContentSizeCategory = true
        gerondifPasse.titleLabel?.adjustsFontForContentSizeCategory = true
        imperatifPresentTu.titleLabel?.adjustsFontForContentSizeCategory = true
        imperatifPresentNous.titleLabel?.adjustsFontForContentSizeCategory = true
        imperatifPresentVous.titleLabel?.adjustsFontForContentSizeCategory = true
        imperatifPasseTu.titleLabel?.adjustsFontForContentSizeCategory = true
        imperatifPasseNous.titleLabel?.adjustsFontForContentSizeCategory = true
        imperatifPasseVous.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indicatifPresentJe.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPresentTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPresentIl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPresentNous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPresentVous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPresentIls.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseComposeJe.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseComposeTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseComposeIl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseComposeNous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseComposeVous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseComposeIls.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifImperfaitJe.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifImperfaitTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifImperfaitIl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifImperfaitNous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifImperfaitVous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifImperfaitIls.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPlusQueParfaitJe.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPlusQueParfaitTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPlusQueParfaitIl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPlusQueParfaitNous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPlusQueParfaitVous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPlusQueParfaitIls.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseSimpleJe.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseSimpleTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseSimpleIl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseSimpleNous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseSimpleVous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseSimpleIls.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseAnterieurJe.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseAnterieurTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseAnterieurIl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseAnterieurNous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseAnterieurVous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifPasseAnterieurIls.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturSimpleJe.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturSimpleTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturSimpleIl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturSimpleNous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturSimpleVous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturSimpleIls.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturAnterieurJe.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturAnterieurTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturAnterieurIl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturAnterieurNous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturAnterieurVous.titleLabel?.adjustsFontForContentSizeCategory = true
        indicatifFuturAnterieurIls.titleLabel?.adjustsFontForContentSizeCategory = true
        
        subjonctifPresentJe.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPresentTu.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPresentIl.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPresentNous.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPresentVous.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPresentIls.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPasseJe.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPasseTu.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPasseIl.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPasseNous.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPasseVous.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPasseIls.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifImperfaitJe.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifImperfaitTu.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifImperfaitIl.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifImperfaitNous.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifImperfaitVous.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifImperfaitIls.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPlusQueParfaitJe.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPlusQueParfaitTu.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPlusQueParfaitIl.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPlusQueParfaitNous.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPlusQueParfaitVous.titleLabel?.adjustsFontForContentSizeCategory = true
        subjonctifPlusQueParfaitIls.titleLabel?.adjustsFontForContentSizeCategory = true
        
        conditionnelPresentJe.titleLabel?.adjustsFontForContentSizeCategory = true
        conditionnelPresentTu.titleLabel?.adjustsFontForContentSizeCategory = true
        conditionnelPresentIl.titleLabel?.adjustsFontForContentSizeCategory = true
        conditionnelPresentNous.titleLabel?.adjustsFontForContentSizeCategory = true
        conditionnelPresentVous.titleLabel?.adjustsFontForContentSizeCategory = true
        conditionnelPresentIls.titleLabel?.adjustsFontForContentSizeCategory = true
        conditionnelPasseJe.titleLabel?.adjustsFontForContentSizeCategory = true
        conditionnelPasseTu.titleLabel?.adjustsFontForContentSizeCategory = true
        conditionnelPasseIl.titleLabel?.adjustsFontForContentSizeCategory = true
        conditionnelPasseNous.titleLabel?.adjustsFontForContentSizeCategory = true
        conditionnelPasseVous.titleLabel?.adjustsFontForContentSizeCategory = true
        conditionnelPasseIls.titleLabel?.adjustsFontForContentSizeCategory = true
    }
    
    
    // MARK: Speak button
    @IBAction func speakButton(_ sender: UIButton) {
        
        switch (sender) {
        case infinitive, definition, sample1, sample2, sample3,
             infinitivePresent, infinitivePasse,
             participePresent, participePasse1, participePasse2,
             gerondifPresent, gerondifPasse,
             imperatifPresentTu, imperatifPresentNous, imperatifPresentVous,
             imperatifPasseTu, imperatifPasseNous, imperatifPasseVous,
             
             indicatifPresentJe, indicatifPresentTu, indicatifPresentIl,
             indicatifPresentNous, indicatifPresentVous, indicatifPresentIls,
             indicatifPasseComposeJe, indicatifPasseComposeTu, indicatifPasseComposeIl,
             indicatifPasseComposeNous, indicatifPasseComposeVous, indicatifPasseComposeIls,
             indicatifImperfaitJe, indicatifImperfaitTu, indicatifImperfaitIl,
             indicatifImperfaitNous, indicatifImperfaitVous, indicatifImperfaitIls,
             indicatifPlusQueParfaitJe, indicatifPlusQueParfaitTu, indicatifPlusQueParfaitIl,
             indicatifPlusQueParfaitNous, indicatifPlusQueParfaitVous, indicatifPlusQueParfaitIls,
             indicatifPasseSimpleJe, indicatifPasseSimpleTu, indicatifPasseSimpleIl,
             indicatifPasseSimpleNous, indicatifPasseSimpleVous, indicatifPasseSimpleIls,
             indicatifPasseAnterieurJe, indicatifPasseAnterieurTu, indicatifPasseAnterieurIl,
             indicatifPasseAnterieurNous, indicatifPasseAnterieurVous, indicatifPasseAnterieurIls,
             indicatifFuturSimpleJe, indicatifFuturSimpleTu, indicatifFuturSimpleIl,
             indicatifFuturSimpleNous, indicatifFuturSimpleVous, indicatifFuturSimpleIls,
             indicatifFuturAnterieurJe, indicatifFuturAnterieurTu, indicatifFuturAnterieurIl,
             indicatifFuturAnterieurNous, indicatifFuturAnterieurVous, indicatifFuturAnterieurIls,
             
             subjonctifPresentJe, subjonctifPresentTu, subjonctifPresentIl,
             subjonctifPresentNous, subjonctifPresentVous, subjonctifPresentIls,
             subjonctifPasseJe, subjonctifPasseTu, subjonctifPasseIl,
             subjonctifPasseNous, subjonctifPasseVous, subjonctifPasseIls,
             subjonctifImperfaitJe, subjonctifImperfaitTu, subjonctifImperfaitIl,
             subjonctifImperfaitNous, subjonctifImperfaitVous, subjonctifImperfaitIls,
             subjonctifPlusQueParfaitJe, subjonctifPlusQueParfaitTu, subjonctifPlusQueParfaitIl,
             subjonctifPlusQueParfaitNous, subjonctifPlusQueParfaitVous, subjonctifPlusQueParfaitIls,
             conditionnelPresentJe, conditionnelPresentTu, conditionnelPresentIl,
             conditionnelPresentNous, conditionnelPresentVous, conditionnelPresentIls,
             conditionnelPasseJe, conditionnelPasseTu, conditionnelPasseIl,
             conditionnelPasseNous, conditionnelPasseVous, conditionnelPasseIls:
            
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
    
    /**
     * Create the text to share.
     */
    private func createShareText() -> String {
        let text : String = "Verb: \(verb.infinitive)\nGroupe: \(verb.group)\n\nDéfinition:\n\(verb.definition)\n\nExemples:\n1. \(verb.sample1)\n2. \(verb.sample2)\n3. \(verb.sample3)"
            + "\n\nIndicatif Présent:"
            + "\n" + conjugation.indicatifPresentJe
            + "\n" + conjugation.indicatifPresentTu
            + "\n" + conjugation.indicatifPresentIl
            + "\n" + conjugation.indicatifPresentNous
            + "\n" + conjugation.indicatifPresentVous
            + "\n" + conjugation.indicatifPresentIls
            + "\n\nIndicatif Passé Composé:"
            + "\n" + conjugation.indicatifPasseComposeJe
            + "\n" + conjugation.indicatifPasseComposeTu
            + "\n" + conjugation.indicatifPasseComposeIl
            + "\n" + conjugation.indicatifPasseComposeNous
            + "\n" + conjugation.indicatifPasseComposeVous
            + "\n" + conjugation.indicatifPasseComposeIls
            + "\n\nIndicatif Imparfait:"
            + "\n" + conjugation.indicatifImperfaitJe
            + "\n" + conjugation.indicatifImperfaitTu
            + "\n" + conjugation.indicatifImperfaitIl
            + "\n" + conjugation.indicatifImperfaitNous
            + "\n" + conjugation.indicatifImperfaitVous
            + "\n" + conjugation.indicatifImperfaitIls
            + "\n\nIndicatif Plus-Que-Parfait:"
            + "\n" + conjugation.indicatifPlusQueParfaitJe
            + "\n" + conjugation.indicatifPlusQueParfaitTu
            + "\n" + conjugation.indicatifPlusQueParfaitIl
            + "\n" + conjugation.indicatifPlusQueParfaitNous
            + "\n" + conjugation.indicatifPlusQueParfaitVous
            + "\n" + conjugation.indicatifPlusQueParfaitIls
            + "\n\nIndicatif Passé Simple:"
            + "\n" + conjugation.indicatifPasseSimpleJe
            + "\n" + conjugation.indicatifPasseSimpleTu
            + "\n" + conjugation.indicatifPasseSimpleIl
            + "\n" + conjugation.indicatifPasseSimpleNous
            + "\n" + conjugation.indicatifPasseSimpleVous
            + "\n" + conjugation.indicatifPasseSimpleIls
            + "\n\nIndicatif Passé Antérieur:"
            + "\n" + conjugation.indicatifPasseAnterieurJe
            + "\n" + conjugation.indicatifPasseAnterieurTu
            + "\n" + conjugation.indicatifPasseAnterieurIl
            + "\n" + conjugation.indicatifPasseAnterieurNous
            + "\n" + conjugation.indicatifPasseAnterieurVous
            + "\n" + conjugation.indicatifPasseAnterieurIls
            + "\n\nIndicatif Futur Simple:"
            + "\n" + conjugation.indicatifFuturSimpleJe
            + "\n" + conjugation.indicatifFuturSimpleTu
            + "\n" + conjugation.indicatifFuturSimpleIl
            + "\n" + conjugation.indicatifFuturSimpleNous
            + "\n" + conjugation.indicatifFuturSimpleVous
            + "\n" + conjugation.indicatifFuturSimpleIls
            + "\n\nIndicatif Futur Antérieur:"
            + "\n" + conjugation.indicatifFuturAnterieurJe
            + "\n" + conjugation.indicatifFuturAnterieurTu
            + "\n" + conjugation.indicatifFuturAnterieurIl
            + "\n" + conjugation.indicatifFuturAnterieurNous
            + "\n" + conjugation.indicatifFuturAnterieurVous
            + "\n" + conjugation.indicatifFuturAnterieurIls
            + "\n\nConditionnel Présent:"
            + "\n" + conjugation.conditionnelPresentJe
            + "\n" + conjugation.conditionnelPresentTu
            + "\n" + conjugation.conditionnelPresentIl
            + "\n" + conjugation.conditionnelPresentNous
            + "\n" + conjugation.conditionnelPresentVous
            + "\n" + conjugation.conditionnelPresentIls
            + "\n\nConditionnel Passé:"
            + "\n" + conjugation.conditionnelPasseJe
            + "\n" + conjugation.conditionnelPasseTu
            + "\n" + conjugation.conditionnelPasseIl
            + "\n" + conjugation.conditionnelPasseNous
            + "\n" + conjugation.conditionnelPasseVous
            + "\n" + conjugation.conditionnelPasseIls
            + "\n\nSubjonctif Présent:"
            + "\n" + conjugation.subjonctifPresentJe
            + "\n" + conjugation.subjonctifPresentTu
            + "\n" + conjugation.subjonctifPresentIl
            + "\n" + conjugation.subjonctifPresentNous
            + "\n" + conjugation.subjonctifPresentVous
            + "\n" + conjugation.subjonctifPresentIls
            + "\n\nSubjonctif Passé:"
            + "\n" + conjugation.subjonctifPasseJe
            + "\n" + conjugation.subjonctifPasseTu
            + "\n" + conjugation.subjonctifPasseIl
            + "\n" + conjugation.subjonctifPasseNous
            + "\n" + conjugation.subjonctifPasseVous
            + "\n" + conjugation.subjonctifPasseIls
            + "\n\nSubjonctif Imparfait:"
            + "\n" + conjugation.subjonctifImperfaitJe
            + "\n" + conjugation.subjonctifImperfaitTu
            + "\n" + conjugation.subjonctifImperfaitIl
            + "\n" + conjugation.subjonctifImperfaitNous
            + "\n" + conjugation.subjonctifImperfaitVous
            + "\n" + conjugation.subjonctifImperfaitIls
            + "\n\nSubjonctif Plus-Que-Parfait:"
            + "\n" + conjugation.subjonctifPlusQueParfaitJe
            + "\n" + conjugation.subjonctifPlusQueParfaitTu
            + "\n" + conjugation.subjonctifPlusQueParfaitIl
            + "\n" + conjugation.subjonctifPlusQueParfaitNous
            + "\n" + conjugation.subjonctifPlusQueParfaitVous
            + "\n" + conjugation.subjonctifPlusQueParfaitIls
            + "\n\nImparfait Présent:"
            + "\n" + conjugation.imperatifPresentTu
            + "\n" + conjugation.imperatifPresentNous
            + "\n" + conjugation.imperatifPresentVous
            + "\n\nImparfait Passé:"
            + "\n" + conjugation.imperatifPasseTu
            + "\n" + conjugation.imperatifPasseNous
            + "\n" + conjugation.imperatifPasseVous
            + "\n\nInfinitif Présent:"
            + "\n" + conjugation.infinitivePresent
            + "\n\nInfinitif Passé:"
            + "\n" + conjugation.infinitivePasse
            + "\n\nParticipe Présent:"
            + "\n" + conjugation.participePresent
            + "\n\nParticipe Passé:"
            + "\n" + conjugation.participePasse1
            + "\n" + conjugation.participePasse2
            + "\n\nGérondif Présent:"
            + "\n" + conjugation.gerondifPresent
            + "\n\nGérondif Passé:"
            + "\n" + conjugation.gerondifPasse
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
