Deutsche Verben
=====================
[![Download on the App Store](http://linkmaker.itunes.apple.com/images/badges/en-us/badge_appstore-lrg.svg)](https://itunes.apple.com/us/app/deutsche-verben/id1429627755?ls=1&mt=8)

![Scheme](/readmeImages/SimulatorScreenShot-iPhone8Plus-2018-08-13at11.27.13.png)
![Scheme](/readmeImages/SimulatorScreenShot-iPhone8Plus-2018-08-13at11.27.34.png)
![Scheme](/readmeImages/SimulatorScreenShot-iPhone8Plus-2018-08-13at11.27.48.png)

iOS application to learn german verb tenses.


Pre-requisites
----------------
- xCode 9.2 or higher
- MAC machine
- cocoapods
- [firebase](https://firebase.google.com/docs/ios/setup)
- AdMob unit ids


References
----------
- http://canoo.net/inflection/laufen:V:sein:haben
- https://en.wikipedia.org/wiki/German_verbs  Conjugator
- http://www.verbix.com/languages/german.html Conjugator before and after 1996 spelling reform
- http://www.die-konjugation.de/verb/interpretieren.php Conjugator pattern, Weak or Strong
- http://conjugator.reverso.net/conjugation-german-verb-interpretieren.html Conjugator pattern

- https://www.pinterest.ca/pin/234187249353769621  top25
- http://www.thegermanprofessor.com/top-100-german-verbs/ top100 (in order)
- https://www.vocabulix.com/conjugation/German-Verbs.html  top121
- https://www.torontopubliclibrary.ca/detail.jsp?Entt=RDM3486958&R=3486958  top127 ~ 1000, prefix  Woodside Square
- http://www.learnalanguage.com/learn-german/german-verbs/   top100, top500
- https://quizlet.com/15319894/250-german-verbs-mit-mnemonic-pt-1-flash-cards/   top250 (not good)
- https://quizlet.com/6414/500-german-verbs-flash-cards/  top500
- https://zodml.org/sites/default/files/501_German_Verbs.pdf  top500 book, conjugation rules, prefix
- https://www.kobo.com/gb/en/ebook/501-german-verbs-5th-edition   top500
- http://conjugator.reverso.net/index-german-251-500.html top1000 Conjugator

- https://www.linguee.com/german-english/translation/sein.html  Samples
- https://en.pons.com/translate?q=Sein&l=deen&in=ac_de&lf=de  Samples
- https://en.pons.com/translate/german-spanish/k%C3%B6nnen  Translations
- http://www.dict.cc/dict/options.php Samples

- http://www.canoo.net/services/Controller?service=canooNet&input=sein  Dictionary
- http://de.thefreedictionary.com/sein  Dictionary
- https://www.dwds.de/wb/kaufen  Dictionary
- https://en.pons.com/translate?q=kaufen&l=dedx&in=&lf= Dictionary
- https://www.duden.de/rechtschreibung/machen  Weak or Strong
- https://en.wiktionary.org/wiki/sein  Weak or Strong
- https://www.dwds.de/wb/ankommen prefix (Wortzerlegung)


TODO
----------------
- database
- notifications
- help
- buy features (remove ads)


Verb images
---------------




How to: Install cocoapods
------------------------------
Step 1. Open terminal and update ruby (a dependency manager) type
```
sudo gem update --system
```
Step 2. Use ruby to install [cocoapods](https://cocoapods.org/) (a dependency manager). Type
```
sudo gem install -n /usr/local/bin cocoapods﻿
```
Step 3. Download  cocoapods to the computer
```
pod setup
```

How to: Update cocoapods
--------------------------------
Step 1. Use ruby to update [cocoapods](https://cocoapods.org/) (a dependency manager). Type
```
sudo gem install -n /usr/local/bin cocoapods﻿
```

How to: Update proyect dependency pods
--------------------------------------------------
Step 1. Open the terminal where the proyect Podfile is (the proyect folder) and type
```
pod update
```

How to: Create a Podfile for the proyect
------------------------------------------------
Step 1. Open the terminal where the proyect folder is and type
```
pod init
```
This should create a Podfile.

Step 2. Open the Podfile with Xcode
```
open -a Xcode Podfile
```

Step 3. The content of the file should be like:
```
# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'DeutscheVerbeniOS' do
# Comment the next line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!

# Pods for DeutscheVerbeniOS

target 'DeutscheVerbeniOSTests' do
inherit! :search_paths
# Pods for testing
end

target 'DeutscheVerbeniOSUITests' do
inherit! :search_paths
# Pods for testing
end

end
```
Step 4. Modify the Podfile to support the last 2 recent versions of iOS (general rule). Add firebase dependencies.
```
# Uncomment the next line to define a global platform for your project
# platform :ios, '10.0'

target 'DeutscheVerbeniOS' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for DeutscheVerbeniOS
  pod 'Firebase/Core'
  pod 'Firebase/Performance'
  pod 'Firebase/AdMob'

  # Pods for Crashlytics
  pod 'Fabric', '~> 1.7.2'
  pod 'Crashlytics', '~> 3.9.3'

  target 'DeutscheVerbeniOSTests' do
    inherit! :search_paths
    # Pods for testing
    pod 'Firebase'
  end

  target 'DeutscheVerbeniOSUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
```
Step 5. Install the Podfile dependencies. In the terminal type
```
pod install
```
Step 6. Include everything that it's generated by cocoapods into the git repository, see [note](http://guides.cocoapods.org/using/using-cocoapods.html#should-i-check-the-pods-directory-into-source-control)


How to: Add Firebase to the proyect
-------------------------------------------
Step 1. Open the [website](https://firebase.google.com/docs/ios/setup) and check the steps.
Step 2. Add Firebase to the console.
Step 2.1 Open the console in [website](firebase.google.com/console)
Step 2.2 Add a new application to the proyect (English Verbs)
Step 2.3 Register the bundle id (com.xengar.ios.deutscheverben)
Step 2.4 Download the GoogleService-Info.plist file and add it to the proyect.
Add the file to .gitignore in the main repository folder. Create the file if it doesn't exist
```
touch .gitignore
open -a Xcode .gitignore
```
Add to the file
```
GoogleService-Info.plist
```
Step 2.5 Complete the process described in the website. Add Firebase.configure() to AppDelegate.swift
```
...
//  AppDelegate.swift
...

import UIKit
import CoreData
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?


func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
// Override point for customization after application launch.
FirebaseApp.configure()
return true
}
...
```
Step 3. Add Firebase dependencies to cocoapods (see How to: Create a Podfile for the proyect)
Step 4. Update cocoapod dependencies
```
pod update
```

How to: Add Google AdMob keys
-------------------------------------------
The proyect uses AdMob ads.
Step 1. Add the api_keys.plist file to the proyect. Do not add it to the repository. See [AdMob](https://www.google.com/admob/) for the key values.
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Google AdMob keys</key>
    <dict>
        <key>banner_ad_unit_id_1</key>
        <string>ca-app-pub-3583578940XXXXXX/5212XXXXXX</string>
        <key>banner_ad_unit_id_2</key>
        <string>ca-app-pub-3583578940XXXXXX/2745XXXXXX</string>
        <key>App ID</key>
        <string>ca-app-pub-3583578940XXXXXX~1791XXXXXX</string>
    </dict>
</dict>
</plist>
```



## License

Copyright 2018 Angel Garcia

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.


