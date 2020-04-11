//
//  Application.swift
//  InstagramFirebaseSample
//
//  Created by Insu Park on 2020/04/08.
//  Copyright © 2020 inswag. All rights reserved.
//

import UIKit
import Firebase

final class Application: NSObject {
    
    static let shared = Application()

    var window: UIWindow?

//    let firebaseManager: FirebaseManager
    let navigator: Navigator

    private override init() {
//        firebaseManager = FirebaseManager.shared
        navigator = Navigator.default
        super.init()
    }
    
    
    func presentInitialScreen(in window: UIWindow?) {
        guard let window = window else { return }
        self.window = window
        window.makeKeyAndVisible()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            let viewModel = TabBarViewModel()
            window.rootViewController = self.navigator.get(segue: .tabs(viewModel: viewModel))
        }
    }
    
}
