//
//  ViewController.swift
//  MoneypayWalletExample
//
//  Created by Gökberk Bardakçı on 8.02.2024.
//

import UIKit
import MoneypayWalletSDK

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onOpenWalletPressed(_ sender: Any) {
        initializeMoneypayWalletSdk()
    }
    
    func initializeMoneypayWalletSdk(jwt: String) {
        let jwt = textfield.text
        if let jwt = jwt {
            MoneypayWallet.getInstance().initialize(jwt: jwt, rootViewController: self)
        }
        
    }
}
