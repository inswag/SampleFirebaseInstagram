//
//  Color.swift
//  InstagramFirebaseSample
//
//  Created by Insu Park on 2020/04/09.
//  Copyright © 2020 inswag. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func rgb(r red: CGFloat,
                    g green: CGFloat,
                    b blue: CGFloat,
                    a alpha: CGFloat = 1.0) -> UIColor {
        return UIColor.init(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
}
