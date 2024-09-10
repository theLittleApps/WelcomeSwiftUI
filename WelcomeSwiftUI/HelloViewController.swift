//
//  HelloViewController.swift
//  WelcomeSwiftUI
//
//  Created by YEN-JU HUANG on 2024/8/29.
//

import UIKit
import SwiftUI

class HelloViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let helloView = HelloView()
        // the key:UIHostingController is the bridge between UIKit and SwiftUI
        let hostCtr = UIHostingController(rootView: helloView)
        
        // add this hosting controller to our view controller
        addChild(hostCtr)
        view.addSubview(hostCtr.view)
        
        // set auto layout constraints of hosting controller
        hostCtr.view.translatesAutoresizingMaskIntoConstraints = false
        hostCtr.view.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        hostCtr.view.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        hostCtr.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        hostCtr.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        // notify hosting controller that has been added to parent view controller
        hostCtr.didMove(toParent: self)
    }
}
