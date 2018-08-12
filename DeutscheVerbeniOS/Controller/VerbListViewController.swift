//
//  VerbListViewController.swift
//  DeutscheVerbeniOS
//
//  Created by xengar on 2018-08-09.
//  Copyright © 2018 xengar. All rights reserved.
//

import UIKit
//import GoogleMobileAds

// MARK: - VerbListViewController
class VerbListViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var settings : UIButton!
    @IBOutlet weak var stack: UIStackView!
    //var banner: GADBannerView!
    //let adUnitID : String = ViewUtils.loadAdMobKey("banner_ad_unit_id_1")
    
    var verbsAll: [Verb] = [Verb]() // List of verbs
    var conjugations: [Conjugation] = [Conjugation]() // List of conjugations
    
    var verbs : [Verb] = [Verb]() // current displayed verbs
    let searchController = UISearchController(searchResultsController: nil)
    var settingsChanged = false
    
    deinit {
        verbsAll.removeAll()
        verbs.removeAll()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        // Only load data again when Settings changed
        if settingsChanged {
            loadData()
            settingsChanged = false
        }
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setup() {
        settings.setTitle(NSLocalizedString("Settings", comment: ""), for: .normal)
        self.title = NSLocalizedString("Verbs", comment: "")
        loadData()
        addSearchBar()
        //banner = ViewUtils.createAdMobBanner(self, self, adUnitID)
    }
    
    private func loadData() {
        // Get the verbs accroding to the settings
        var value = UserDefaults.standard.string(forKey: Constants.KEY_SHOW_VERB_TYPE)
        let type : String = value != nil ? value! : Constants.ALL
        value = UserDefaults.standard.string(forKey: Constants.KEY_SHOW_VERB_SORT)
        let sort : String = value != nil ? value! : Constants.ALPHABET
        value = UserDefaults.standard.string(forKey: Constants.KEY_SHOW_VERB_COMMON)
        let mostCommon : String = value != nil ? value! : Constants.ALL
        verbsAll.removeAll()
        verbs.removeAll()
        ViewUtils.loadData(type, sort, mostCommon, &verbsAll, &conjugations)
        verbs = verbsAll
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: Find the conjugation with the id
    private func findConjugationWithId(_ id : Int) -> Conjugation {
        var result : Conjugation = conjugations[0]
        for conjugation in conjugations {
            if conjugation.id == id {
                result = conjugation
                break
            }
        }
        return result
    }
    
    
    // MARK: Show Options dialog
    @IBAction func showOptions(_ sender: AnyObject) {
        
        let storyboard = self.storyboard
        let controller = storyboard?.instantiateViewController(withIdentifier: "OptionsViewController")as! SettingsViewController
        
        controller.delegate = self
        
        //self.present(controller, animated: true, completion: nil)
        self.navigationController?.pushViewController(controller, animated: true)
    }

}

// MARK: - VerbListViewController (AdMob banner)
/*
extension VerbListViewController: GADBannerViewDelegate {
    
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


// MARK: - VerbListViewController (Use a delegate protocol to pass data back between ViewControllers)
extension VerbListViewController: SettingsChangedDelegate {
    
    // The settings changed
    func settingsChanged(_ value: Bool) {
        settingsChanged = value
    }
}


// MARK: - VerbListViewController (Table Data Source)
extension VerbListViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return verbs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell")! as! VerbTableViewCell
        let verb = verbs[(indexPath as NSIndexPath).row]
        cell.infinitive!.text = verb.infinitive
        cell.definition!.text = verb.definition
        let translationLanguage = UserDefaults.standard.string(forKey: Constants.KEY_TRANSLATION_LANGUAGE)
        let lang : String = translationLanguage != nil ? translationLanguage! : Constants.ENGLISH
        cell.translation!.text = ViewUtils.getTranslation(verb, lang)
        //let imageName = adventure.credits.imageName
        //cell.imageView!.image = UIImage(named: imageName!)
        
        // Use UserDefaults for hide/show definition
        let boolValue = UserDefaults.standard.bool(forKey: Constants.KEY_SHOW_VERB_DEFINITION)
        cell.definition.isHidden = !boolValue
        // Use UserDefaults for hide/show translation
        if lang.elementsEqual(Constants.NONE) {
            cell.translation.isHidden = true
        } else {
            cell.translation.isHidden = false
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Get the selected verb
        let verb = verbs[(indexPath as NSIndexPath).row]
        
        // Get a controller from the Storyboard
        let controller = self.storyboard!.instantiateViewController(withIdentifier: "VerbDetailsViewController")as! VerbDetailsViewController
        
        // Set the verb data
        controller.verb = verb
        // Set the conjugation model for the verb
        controller.conjugation = findConjugationWithId(verb.conjugation).copy() as! Conjugation
        
        // Push the new controller onto the stack
        self.navigationController!.pushViewController(controller, animated: true)
    }
}


// MARK: - VerbListViewController (Search)
extension VerbListViewController: UISearchResultsUpdating {
    
    // Adds the search bar to the View
    private func addSearchBar() {
        
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = true // Navigation bar large titles
            navigationItem.hidesSearchBarWhenScrolling = false
            navigationItem.searchController = searchController
        } else {
            tableView.tableHeaderView = searchController.searchBar
        }
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        // If we haven't typed anything into the search bar then do not filter the results
        if searchController.searchBar.text! == "" {
            verbs = verbsAll
        } else {
            // Filter the results
            let translationLanguage = UserDefaults.standard.string(forKey: Constants.KEY_TRANSLATION_LANGUAGE)
            let lang : String = translationLanguage != nil ? translationLanguage! : Constants.ENGLISH
            
            let pattern = searchController.searchBar.text!.lowercased()
            verbs = verbsAll.filter { $0.infinitive.contains(pattern) || ViewUtils.getTranslation($0, lang).contains(pattern) }
        }
        self.tableView.reloadData()
    }
}
