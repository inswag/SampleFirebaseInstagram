//
//  CollectionViewCell.swift
//  InstagramFirebaseSample
//
//  Created by Insu Park on 2020/04/09.
//  Copyright © 2020 inswag. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell, UIProtocol {
    
    // MARK:- Initialize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIComponents()
        setupUILayout()
        setupImplementation()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK:- UI Methods

    func setupUIComponents() {
        
    }
    
    func setupUILayout() {
        
    }
    
    func setupImplementation() {
        
    }
    
}
