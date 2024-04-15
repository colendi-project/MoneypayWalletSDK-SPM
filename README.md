# MoneypayWalletSDK-SPM

The Moneypay Wallet Software Development Kit SPM Wrapper.

# Table of Content
- [Overview](#overview)
- [Requirements](#requirements)
    - [General Requirements](#general-requirements)
    - [Permissions](#permissions)
    - [Optional Dependencies](#optional-dependencies)
- [Installation](#installation)
    - [Via SPM](#via-spm)
- [Integration](#integration)
- [Author](#author)
- [LICENSE](#license)

# Overview

The MoneypayWalletSDK is a Software Development Kit developed by Colendians to enable fast and simple integration to MoneypayWallet.

#  Requirements

## General Requirements
The minimum required iOS version for the SDK is:  
* iOS 13.0 or higher  

## Permissions

MoneypayWalletSDK makes use of the device Camera and NFC. You will be required to have the following keys in your application's Info.plist file:

```xml
    <key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
	<array>
		<string>A0000002471001</string>
	</array>
	<key>NFCReaderUsageDescription</key>
	<string>This application requires access to NFC to  scan IDs.</string>
	<key>NSCameraUsageDescription</key>
	<string>This application requires access to your camera for scanning and uploading the document.</string>
```
**Note**: All keys will be required for app submission.

### Grant accesss to NFC
Enable the Near Field Communication Tag Reading capability in the target **Signing & Capabilities**. 

## Optional Dependencies

While not required, integrating the [IQKeyboardManager](https://github.com/hackiftekhar/IQKeyboardManager) library can enhance the user experience by providing automatic handling of keyboard events.

# Installation

## Via-SPM

[Swift Package Manager(SPM)](https://swift.org/package-manager/) is Apple's dependency manager tool. It is now supported in Xcode 11. So it can be used in all appleOS types of projects. It can be used alongside other tools like CocoaPods and Carthage as well. 

To install MoneypayWalletSDK-SPM package via Xcode

 * Go to File -> Swift Packages -> Add Package Dependency...
 * Then search for https://github.com/colendi-project/MoneypayWalletSDK-SPM.git
 * And choose the latest version

# Integration

```swift
import UIKit
import MoneypayWalletSDK

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeMoneypayWalletSdk()
    }
    
    func initializeMoneypayWalletSdk() {
        MoneypayWallet.shared.initialize(jwt: "ACCESS-TOKEN", rootViewController: self, environment: .dev)   
    }
}

```

# Author

[Colendi](https://github.com/colendi-project)

# License

MoneypayWalletSDK-SPM is available under the GNU GENERAL PUBLIC LICENSE license. See the LICENSE file for more info.
