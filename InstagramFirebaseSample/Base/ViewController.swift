//
//  ViewController.swift
//  InstagramFirebaseSample
//
//  Created by Insu Park on 2020/04/08.
//  Copyright © 2020 inswag. All rights reserved.
//

import UIKit

protocol UIProtocol {
    func setupUIComponents()
    func setupUILayout()
    func setupImplementation()
}

class ViewController: UIViewController, UIProtocol {
    
    // MARK:- Initialize
     
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("ok")
    }
    
    // MARK:- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIComponents()
        setupUILayout()
        setupImplementation()
    }
    
    // MARK:- UI Methods
    
    func setupUIComponents() {
        
    }
    
    func setupUILayout() {
        
    }
    
    func setupImplementation() {
        
    }
    
}
