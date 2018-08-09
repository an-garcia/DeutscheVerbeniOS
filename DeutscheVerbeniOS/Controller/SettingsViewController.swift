//
//  SettingsViewController.swift
//  DeutscheVerbeniOS
//
//  Created by xengar on 2018-08-09.
//  Copyright © 2018 xengar. All rights reserved.
//

import UIKit

// MARK: - SettingsChangedDelegate
protocol SettingsChangedDelegate: class {
    func settingsChanged(_ value: Bool)
}

// MARK: - SettingsViewController
class SettingsViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var showVerbDefinition: UISwitch!
    @IBOutlet weak var language: UIButton!
    @IBOutlet weak var group: UIButton!
    @IBOutlet weak var sort: UIButton!
    @IBOutlet weak var mostCommon: UIButton!
    @IBOutlet weak var general: UILabel!
    @IBOutlet weak var showVerbDefinitionLabel: UILabel!
    @IBOutlet weak var verbTranslation: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var showVerbs: UILabel!
    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var sortLabel: UILabel!
    @IBOutlet weak var mostCommonLabel: UILabel!
    
    weak var delegate: SettingsChangedDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setup() {
        // Set localized strings.
        // Avoid localizing in storyboard because Xcode doesn't update localized storyboards
        self.title = NSLocalizedString("Settings", comment: "")
        self.general.text = NSLocalizedString("General", comment: "")
        self.showVerbDefinitionLabel.text = NSLocalizedString("Show verb definition", comment: "")
        self.verbTranslation.text = NSLocalizedString("Verb translation", comment: "")
        self.languageLabel.text = NSLocalizedString("Language", comment: "")
        self.showVerbs.text = NSLocalizedString("Show verbs", comment: "")
        self.groupLabel.text = NSLocalizedString("Group", comment: "")
        self.sortLabel.text = NSLocalizedString("Sort", comment: "")
        self.mostCommonLabel.text = NSLocalizedString("Most common", comment: "")
        
        // Read the setting value
        let boolValue = UserDefaults.standard.bool(forKey: Constants.KEY_SHOW_VERB_DEFINITION)
        showVerbDefinition.setOn(boolValue, animated: false)
        var value : String = UserDefaults.standard.string(forKey: Constants.KEY_TRANSLATION_LANGUAGE)!
        var text = ViewUtils.languageForCode(value)
        language.setTitle(text, for: .normal)
        value = UserDefaults.standard.string(forKey: Constants.KEY_SHOW_VERB_GROUP)!
        text = ViewUtils.showVerbTypeForCode(value)
        group.setTitle(text, for: .normal)
        value = UserDefaults.standard.string(forKey: Constants.KEY_SHOW_VERB_SORT)!
        text = ViewUtils.showVerbSortForCode(value)
        sort.setTitle(text, for: .normal)
        value = UserDefaults.standard.string(forKey: Constants.KEY_SHOW_VERB_COMMON)!
        text = ViewUtils.showVerbMostCommonForCode(value)
        mostCommon.setTitle(text, for: .normal)
        
        setAdjustsFontForContentSizeCategory()
    }
    
    private func setAdjustsFontForContentSizeCategory() {
        language.titleLabel?.adjustsFontForContentSizeCategory = true
        group.titleLabel?.adjustsFontForContentSizeCategory = true
        sort.titleLabel?.adjustsFontForContentSizeCategory = true
        mostCommon.titleLabel?.adjustsFontForContentSizeCategory = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: Change show verb definition
    @IBAction func changeShowVerbDefinition(_ sender: Any) {
        // Save the setting value
        let value = showVerbDefinition.isOn
        UserDefaults.standard.set(value, forKey: Constants.KEY_SHOW_VERB_DEFINITION)
        self.delegate?.settingsChanged(true)
    }
    
    // MARK: Change language translation
    @IBAction func changeTranslationLanguage(_ sender: Any) {
        
        let style = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad ? UIAlertControllerStyle.alert : UIAlertControllerStyle.actionSheet
        let alert = UIAlertController(title: "", message: "", preferredStyle: style)
        var languages : [ViewUtils.Option] = ViewUtils.createLanguageOptions()
        
        for index in 0 ..< languages.count {
            let action = UIAlertAction(title: languages[index].name, style: .default, handler: { (action) -> Void in
                // Save setting value
                UserDefaults.standard.set(languages[index].code, forKey: Constants.KEY_TRANSLATION_LANGUAGE)
                self.delegate?.settingsChanged(true)
                // update the button text
                self.language.setTitle(languages[index].name, for: .normal)
            })
            
            alert.addAction(action)
        }
        // Cancel button
        let cancel = UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .destructive, handler: { (action) -> Void in })
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: Change show verb group
    @IBAction func changeShowVerbGroup(_ sender: Any) {
        
        let style = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad ? UIAlertControllerStyle.alert : UIAlertControllerStyle.actionSheet
        let alert = UIAlertController(title: "", message: "", preferredStyle: style)
        var types : [ViewUtils.Option] = ViewUtils.createShowVerbGroupOptions()
        
        for index in 0 ..< types.count {
            let action = UIAlertAction(title: types[index].name, style: .default, handler: { (action) -> Void in
                // Save setting value
                UserDefaults.standard.set(types[index].code, forKey: Constants.KEY_SHOW_VERB_GROUP)
                self.delegate?.settingsChanged(true)
                // update the button text
                self.group.setTitle(types[index].name, for: .normal)
            })
            
            alert.addAction(action)
        }
        // Cancel button
        let cancel = UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .destructive, handler: { (action) -> Void in })
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: Change show verb sort by
    @IBAction func changeShowVerbSort(_ sender: Any) {
        
        let style = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad ? UIAlertControllerStyle.alert : UIAlertControllerStyle.actionSheet
        let alert = UIAlertController(title: "", message: "", preferredStyle: style)
        var types : [ViewUtils.Option] = ViewUtils.createShowVerbSortOptions()
        
        for index in 0 ..< types.count {
            let action = UIAlertAction(title: types[index].name, style: .default, handler: { (action) -> Void in
                // Save setting value
                UserDefaults.standard.set(types[index].code, forKey: Constants.KEY_SHOW_VERB_SORT)
                self.delegate?.settingsChanged(true)
                // update the button text
                self.sort.setTitle(types[index].name, for: .normal)
            })
            
            alert.addAction(action)
        }
        // Cancel button
        let cancel = UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .destructive, handler: { (action) -> Void in })
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: Change show verb type
    @IBAction func changeShowVerbMostCommon(_ sender: Any) {
        
        let style = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad ? UIAlertControllerStyle.alert : UIAlertControllerStyle.actionSheet
        let alert = UIAlertController(title: "", message: "", preferredStyle: style)
        var types : [ViewUtils.Option] = ViewUtils.createShowVerbMostCommonOptions()
        
        for index in 0 ..< types.count {
            let action = UIAlertAction(title: types[index].name, style: .default, handler: { (action) -> Void in
                // Save setting value
                UserDefaults.standard.set(types[index].code, forKey: Constants.KEY_SHOW_VERB_COMMON)
                self.delegate?.settingsChanged(true)
                // update the button text
                self.mostCommon.setTitle(types[index].name, for: .normal)
            })
            
            alert.addAction(action)
        }
        // Cancel button
        let cancel = UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .destructive, handler: { (action) -> Void in })
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }

}
