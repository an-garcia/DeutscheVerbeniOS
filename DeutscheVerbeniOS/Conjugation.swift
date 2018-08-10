//
//  Conjugation.swift
//  DeutscheVerbeniOS
//
//  Created by xengar on 2018-08-09.
//  Copyright © 2018 xengar. All rights reserved.
//

import Foundation

// MARK: - Conjugation
class Conjugation {
    
    // MARK: Properties
    var id : Int = 0
    var termination : String = ""
    var radicals : String = ""
    var infinitivPrasens : String = ""
    var infinitivPerfekt : String = ""
    var partizipPrasens : String = ""
    var partizipPerfekt : String = ""

    var imperativDu : String = ""
    var imperativIhr : String = ""
    var imperativSie : String = ""
    
    var indikativPrasensIch : String = ""
    var indikativPrasensDu : String = ""
    var indikativPrasensEr : String = ""
    var indikativPrasensWir : String = ""
    var indikativPrasensIhr : String = ""
    var indikativPrasensSie : String = ""
    
    var indikativPrateritumIch : String = ""
    var indikativPrateritumDu : String = ""
    var indikativPrateritumEr : String = ""
    var indikativPrateritumWir : String = ""
    var indikativPrateritumIhr : String = ""
    var indikativPrateritumSie : String = ""
    
    var indikativPerfektIch : String = ""
    var indikativPerfektDu : String = ""
    var indikativPerfektEr : String = ""
    var indikativPerfektWir : String = ""
    var indikativPerfektIhr : String = ""
    var indikativPerfektSie : String = ""
    
    var indikativPlusquamperfektIch : String = ""
    var indikativPlusquamperfektDu : String = ""
    var indikativPlusquamperfektEr : String = ""
    var indikativPlusquamperfektWir : String = ""
    var indikativPlusquamperfektIhr : String = ""
    var indikativPlusquamperfektSie : String = ""
    
    var indikativFutur1Ich : String = ""
    var indikativFutur1Du : String = ""
    var indikativFutur1Er : String = ""
    var indikativFutur1Wir : String = ""
    var indikativFutur1Ihr : String = ""
    var indikativFutur1Sie : String = ""
    
    var indikativFutur2Ich : String = ""
    var indikativFutur2Du : String = ""
    var indikativFutur2Er : String = ""
    var indikativFutur2Wir : String = ""
    var indikativFutur2Ihr : String = ""
    var indikativFutur2Sie : String = ""
    
    var konjunktiv1PrasensIch : String = ""
    var konjunktiv1PrasensDu : String = ""
    var konjunktiv1PrasensEr : String = ""
    var konjunktiv1PrasensWir : String = ""
    var konjunktiv1PrasensIhr : String = ""
    var konjunktiv1PrasensSie : String = ""
    
    var konjunktiv1PerfektIch : String = ""
    var konjunktiv1PerfektDu : String = ""
    var konjunktiv1PerfektEr : String = ""
    var konjunktiv1PerfektWir : String = ""
    var konjunktiv1PerfektIhr : String = ""
    var konjunktiv1PerfektSie : String = ""
    
    var konjunktiv1Futur1Ich : String = ""
    var konjunktiv1Futur1Du : String = ""
    var konjunktiv1Futur1Er : String = ""
    var konjunktiv1Futur1Wir : String = ""
    var konjunktiv1Futur1Ihr : String = ""
    var konjunktiv1Futur1Sie : String = ""
    
    var konjunktiv1Futur2Ich : String = ""
    var konjunktiv1Futur2Du : String = ""
    var konjunktiv1Futur2Er : String = ""
    var konjunktiv1Futur2Wir : String = ""
    var konjunktiv1Futur2Ihr : String = ""
    var konjunktiv1Futur2Sie : String = ""
    
    var konjunktiv2PrateritumIch : String = ""
    var konjunktiv2PrateritumDu : String = ""
    var konjunktiv2PrateritumEr : String = ""
    var konjunktiv2PrateritumWir : String = ""
    var konjunktiv2PrateritumIhr : String = ""
    var konjunktiv2PrateritumSie : String = ""
    
    var konjunktiv2PlusquamperfektIch : String = ""
    var konjunktiv2PlusquamperfektDu : String = ""
    var konjunktiv2PlusquamperfektEr : String = ""
    var konjunktiv2PlusquamperfektWir : String = ""
    var konjunktiv2PlusquamperfektIhr : String = ""
    var konjunktiv2PlusquamperfektSie : String = ""
    
    var konjunktiv2Futur1Ich : String = ""
    var konjunktiv2Futur1Du : String = ""
    var konjunktiv2Futur1Er : String = ""
    var konjunktiv2Futur1Wir : String = ""
    var konjunktiv2Futur1Ihr : String = ""
    var konjunktiv2Futur1Sie : String = ""
    
    var konjunktiv2Futur2Ich : String = ""
    var konjunktiv2Futur2Du : String = ""
    var konjunktiv2Futur2Er : String = ""
    var konjunktiv2Futur2Wir : String = ""
    var konjunktiv2Futur2Ihr : String = ""
    var konjunktiv2Futur2Sie : String = ""
    
    
    // MARK: Initializer
    init(dictionary: [String : AnyObject]) {
        id = dictionary["id"] as! Int
        termination = dictionary["term"] as! String
        radicals = dictionary["radicals"] as! String
        infinitivPrasens = dictionary["inf_prasens"] as! String
        infinitivPerfekt = dictionary["inf_perfekt"] as! String
        partizipPrasens = dictionary["par_prasens"] as! String
        partizipPerfekt = dictionary["par_perfekt"] as! String

        imperativDu = dictionary["imperativ_du"] as! String
        imperativIhr = dictionary["imperativ_ihr"] as! String
        imperativSie = dictionary["imperativ_sie"] as! String
        
        indikativPrasensIch = dictionary["ind_prasens_ich"] as! String
        indikativPrasensDu = dictionary["ind_prasens_du"] as! String
        indikativPrasensEr = dictionary["ind_prasens_er"] as! String
        indikativPrasensWir = dictionary["ind_prasens_wir"] as! String
        indikativPrasensIhr = dictionary["ind_prasens_ihr"] as! String
        indikativPrasensSie = dictionary["ind_prasens_sie"] as! String
        
        indikativPrateritumIch = dictionary["ind_prateritum_ich"] as! String
        indikativPrateritumDu = dictionary["ind_prateritum_du"] as! String
        indikativPrateritumEr = dictionary["ind_prateritum_er"] as! String
        indikativPrateritumWir = dictionary["ind_prateritum_wir"] as! String
        indikativPrateritumIhr = dictionary["ind_prateritum_ihr"] as! String
        indikativPrateritumSie = dictionary["ind_prateritum_sie"] as! String
        
        indikativPerfektIch = dictionary["ind_perfekt_ich"] as! String
        indikativPerfektDu = dictionary["ind_perfekt_du"] as! String
        indikativPerfektEr = dictionary["ind_perfekt_er"] as! String
        indikativPerfektWir = dictionary["ind_perfekt_wir"] as! String
        indikativPerfektIhr = dictionary["ind_perfekt_ihr"] as! String
        indikativPerfektSie = dictionary["ind_perfekt_sie"] as! String
        
        indikativPlusquamperfektIch = dictionary["ind_plusquamperfekt_ich"] as! String
        indikativPlusquamperfektDu = dictionary["ind_plusquamperfekt_du"] as! String
        indikativPlusquamperfektEr = dictionary["ind_plusquamperfekt_er"] as! String
        indikativPlusquamperfektWir = dictionary["ind_plusquamperfekt_wir"] as! String
        indikativPlusquamperfektIhr = dictionary["ind_plusquamperfekt_ihr"] as! String
        indikativPlusquamperfektSie = dictionary["ind_plusquamperfekt_sie"] as! String
        
        indikativFutur1Ich = dictionary["ind_futur1_ich"] as! String
        indikativFutur1Du = dictionary["ind_futur1_du"] as! String
        indikativFutur1Er = dictionary["ind_futur1_er"] as! String
        indikativFutur1Wir = dictionary["ind_futur1_wir"] as! String
        indikativFutur1Ihr = dictionary["ind_futur1_ihr"] as! String
        indikativFutur1Sie = dictionary["ind_futur1_sie"] as! String
        
        indikativFutur2Ich = dictionary["ind_futur2_ich"] as! String
        indikativFutur2Du = dictionary["ind_futur2_du"] as! String
        indikativFutur2Er = dictionary["ind_futur2_er"] as! String
        indikativFutur2Wir = dictionary["ind_futur2_wir"] as! String
        indikativFutur2Ihr = dictionary["ind_futur2_ihr"] as! String
        indikativFutur2Sie = dictionary["ind_futur2_sie"] as! String
        
        konjunktiv1PrasensIch = dictionary["kon1_prasens_ich"] as! String
        konjunktiv1PrasensDu = dictionary["kon1_prasens_du"] as! String
        konjunktiv1PrasensEr = dictionary["kon1_prasens_er"] as! String
        konjunktiv1PrasensWir = dictionary["kon1_prasens_wir"] as! String
        konjunktiv1PrasensIhr = dictionary["kon1_prasens_ihr"] as! String
        konjunktiv1PrasensSie = dictionary["kon1_prasens_sie"] as! String
        
        konjunktiv1PerfektIch = dictionary["kon1_perfekt_ich"] as! String
        konjunktiv1PerfektDu = dictionary["kon1_perfekt_du"] as! String
        konjunktiv1PerfektEr = dictionary["kon1_perfekt_er"] as! String
        konjunktiv1PerfektWir = dictionary["kon1_perfekt_wir"] as! String
        konjunktiv1PerfektIhr = dictionary["kon1_perfekt_ihr"] as! String
        konjunktiv1PerfektSie = dictionary["kon1_perfekt_sie"] as! String
        
        konjunktiv1Futur1Ich = dictionary["kon1_futur1_ich"] as! String
        konjunktiv1Futur1Du = dictionary["kon1_futur1_du"] as! String
        konjunktiv1Futur1Er = dictionary["kon1_futur1_er"] as! String
        konjunktiv1Futur1Wir = dictionary["kon1_futur1_wir"] as! String
        konjunktiv1Futur1Ihr = dictionary["kon1_futur1_ihr"] as! String
        konjunktiv1Futur1Sie = dictionary["kon1_futur1_sie"] as! String
        
        konjunktiv1Futur2Ich = dictionary["kon1_futur2_ich"] as! String
        konjunktiv1Futur2Du = dictionary["kon1_futur2_du"] as! String
        konjunktiv1Futur2Er = dictionary["kon1_futur2_er"] as! String
        konjunktiv1Futur2Wir = dictionary["kon1_futur2_wir"] as! String
        konjunktiv1Futur2Ihr = dictionary["kon1_futur2_ihr"] as! String
        konjunktiv1Futur2Sie = dictionary["kon1_futur2_sie"] as! String
        
        konjunktiv2PrateritumIch = dictionary["kon2_prateritum_ich"] as! String
        konjunktiv2PrateritumDu = dictionary["kon2_prateritum_du"] as! String
        konjunktiv2PrateritumEr = dictionary["kon2_prateritum_er"] as! String
        konjunktiv2PrateritumWir = dictionary["kon2_prateritum_wir"] as! String
        konjunktiv2PrateritumIhr = dictionary["kon2_prateritum_ihr"] as! String
        konjunktiv2PrateritumSie = dictionary["kon2_prateritum_sie"] as! String
        
        konjunktiv2PlusquamperfektIch = dictionary["kon2_plusquamperfekt_ich"] as! String
        konjunktiv2PlusquamperfektDu = dictionary["kon2_plusquamperfekt_du"] as! String
        konjunktiv2PlusquamperfektEr = dictionary["kon2_plusquamperfekt_er"] as! String
        konjunktiv2PlusquamperfektWir = dictionary["kon2_plusquamperfekt_wir"] as! String
        konjunktiv2PlusquamperfektIhr = dictionary["kon2_plusquamperfekt_ihr"] as! String
        konjunktiv2PlusquamperfektSie = dictionary["kon2_plusquamperfekt_sie"] as! String
        
        konjunktiv2Futur1Ich = dictionary["kon2_futur1_ich"] as! String
        konjunktiv2Futur1Du = dictionary["kon2_futur1_du"] as! String
        konjunktiv2Futur1Er = dictionary["kon2_futur1_er"] as! String
        konjunktiv2Futur1Wir = dictionary["kon2_futur1_wir"] as! String
        konjunktiv2Futur1Ihr = dictionary["kon2_futur1_ihr"] as! String
        konjunktiv2Futur1Sie = dictionary["kon2_futur1_sie"] as! String
        
        konjunktiv2Futur2Ich = dictionary["kon2_futur2_ich"] as! String
        konjunktiv2Futur2Du = dictionary["kon2_futur2_du"] as! String
        konjunktiv2Futur2Er = dictionary["kon2_futur2_er"] as! String
        konjunktiv2Futur2Wir = dictionary["kon2_futur2_wir"] as! String
        konjunktiv2Futur2Ihr = dictionary["kon2_futur2_ihr"] as! String
        konjunktiv2Futur2Sie = dictionary["kon2_futur2_sie"] as! String
    }
    
    init() {
    }
}


// MARK: - Conjugation (Copy)
extension Conjugation : NSCopying {
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Conjugation()
        
        copy.id = id
        copy.termination = termination
        copy.radicals = radicals
        copy.infinitivPrasens = infinitivPrasens
        copy.infinitivPerfekt = infinitivPerfekt
        copy.partizipPrasens = partizipPrasens
        copy.partizipPerfekt = partizipPerfekt

        copy.imperativDu = imperativDu
        copy.imperativIhr = imperativIhr
        copy.imperativSie = imperativSie
        
        copy.indikativPrasensIch = indikativPrasensIch
        copy.indikativPrasensDu = indikativPrasensDu
        copy.indikativPrasensEr = indikativPrasensEr
        copy.indikativPrasensWir = indikativPrasensWir
        copy.indikativPrasensIhr = indikativPrasensIhr
        copy.indikativPrasensSie = indikativPrasensSie
        
        copy.indikativPrateritumIch = indikativPrateritumIch
        copy.indikativPrateritumDu = indikativPrateritumDu
        copy.indikativPrateritumEr = indikativPrateritumEr
        copy.indikativPrateritumWir = indikativPrateritumWir
        copy.indikativPrateritumIhr = indikativPrateritumIhr
        copy.indikativPrateritumSie = indikativPrateritumSie
        
        copy.indikativPerfektIch = indikativPerfektIch
        copy.indikativPerfektDu = indikativPerfektDu
        copy.indikativPerfektEr = indikativPerfektEr
        copy.indikativPerfektWir = indikativPerfektWir
        copy.indikativPerfektIhr = indikativPerfektIhr
        copy.indikativPerfektSie = indikativPerfektSie
        
        copy.indikativPlusquamperfektIch = indikativPlusquamperfektIch
        copy.indikativPlusquamperfektDu = indikativPlusquamperfektDu
        copy.indikativPlusquamperfektEr = indikativPlusquamperfektEr
        copy.indikativPlusquamperfektWir = indikativPlusquamperfektWir
        copy.indikativPlusquamperfektIhr = indikativPlusquamperfektIhr
        copy.indikativPlusquamperfektSie = indikativPlusquamperfektSie
        
        copy.indikativFutur1Ich = indikativFutur1Ich
        copy.indikativFutur1Du = indikativFutur1Du
        copy.indikativFutur1Er = indikativFutur1Er
        copy.indikativFutur1Wir = indikativFutur1Wir
        copy.indikativFutur1Ihr = indikativFutur1Ihr
        copy.indikativFutur1Sie = indikativFutur1Sie
        
        copy.indikativFutur2Ich = indikativFutur2Ich
        copy.indikativFutur2Du = indikativFutur2Du
        copy.indikativFutur2Er = indikativFutur2Er
        copy.indikativFutur2Wir = indikativFutur2Wir
        copy.indikativFutur2Ihr = indikativFutur2Ihr
        copy.indikativFutur2Sie = indikativFutur2Sie
        
        copy.konjunktiv1PrasensIch = konjunktiv1PrasensIch
        copy.konjunktiv1PrasensDu = konjunktiv1PrasensDu
        copy.konjunktiv1PrasensEr = konjunktiv1PrasensEr
        copy.konjunktiv1PrasensWir = konjunktiv1PrasensWir
        copy.konjunktiv1PrasensIhr = konjunktiv1PrasensIhr
        copy.konjunktiv1PrasensSie = konjunktiv1PrasensSie
        
        copy.konjunktiv1PerfektIch = konjunktiv1PerfektIch
        copy.konjunktiv1PerfektDu = konjunktiv1PerfektDu
        copy.konjunktiv1PerfektEr = konjunktiv1PerfektEr
        copy.konjunktiv1PerfektWir = konjunktiv1PerfektWir
        copy.konjunktiv1PerfektIhr = konjunktiv1PerfektIhr
        copy.konjunktiv1PerfektSie = konjunktiv1PerfektSie
        
        copy.konjunktiv1Futur1Ich = konjunktiv1Futur1Ich
        copy.konjunktiv1Futur1Du = konjunktiv1Futur1Du
        copy.konjunktiv1Futur1Er = konjunktiv1Futur1Er
        copy.konjunktiv1Futur1Wir = konjunktiv1Futur1Wir
        copy.konjunktiv1Futur1Ihr = konjunktiv1Futur1Ihr
        copy.konjunktiv1Futur1Sie = konjunktiv1Futur1Sie
        
        copy.konjunktiv1Futur2Ich = konjunktiv1Futur2Ich
        copy.konjunktiv1Futur2Du = konjunktiv1Futur2Du
        copy.konjunktiv1Futur2Er = konjunktiv1Futur2Er
        copy.konjunktiv1Futur2Wir = konjunktiv1Futur2Wir
        copy.konjunktiv1Futur2Ihr = konjunktiv1Futur2Ihr
        copy.konjunktiv1Futur2Sie = konjunktiv1Futur2Sie
        
        copy.konjunktiv2PrateritumIch = konjunktiv2PrateritumIch
        copy.konjunktiv2PrateritumDu = konjunktiv2PrateritumDu
        copy.konjunktiv2PrateritumEr = konjunktiv2PrateritumEr
        copy.konjunktiv2PrateritumWir = konjunktiv2PrateritumWir
        copy.konjunktiv2PrateritumIhr = konjunktiv2PrateritumIhr
        copy.konjunktiv2PrateritumSie = konjunktiv2PrateritumSie
        
        copy.konjunktiv2PlusquamperfektIch = konjunktiv2PlusquamperfektIch
        copy.konjunktiv2PlusquamperfektDu = konjunktiv2PlusquamperfektDu
        copy.konjunktiv2PlusquamperfektEr = konjunktiv2PlusquamperfektEr
        copy.konjunktiv2PlusquamperfektWir = konjunktiv2PlusquamperfektWir
        copy.konjunktiv2PlusquamperfektIhr = konjunktiv2PlusquamperfektIhr
        copy.konjunktiv2PlusquamperfektSie = konjunktiv2PlusquamperfektSie
        
        copy.konjunktiv2Futur1Ich = konjunktiv2Futur1Ich
        copy.konjunktiv2Futur1Du = konjunktiv2Futur1Du
        copy.konjunktiv2Futur1Er = konjunktiv2Futur1Er
        copy.konjunktiv2Futur1Wir = konjunktiv2Futur1Wir
        copy.konjunktiv2Futur1Ihr = konjunktiv2Futur1Ihr
        copy.konjunktiv2Futur1Sie = konjunktiv2Futur1Sie
        
        copy.konjunktiv2Futur2Ich = konjunktiv2Futur2Ich
        copy.konjunktiv2Futur2Du = konjunktiv2Futur2Du
        copy.konjunktiv2Futur2Er = konjunktiv2Futur2Er
        copy.konjunktiv2Futur2Wir = konjunktiv2Futur2Wir
        copy.konjunktiv2Futur2Ihr = konjunktiv2Futur2Ihr
        copy.konjunktiv2Futur2Sie = konjunktiv2Futur2Sie
        
        return copy
    }
    
}

