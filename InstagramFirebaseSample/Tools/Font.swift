//
//  Font.swift
//  InstagramFirebaseSample
//
//  Created by Insu Park on 2020/04/09.
//  Copyright © 2020 inswag. All rights reserved.
//

import UIKit

struct Font {
    
    // Tools.font.appleSDGothicNeoRegular(size: <#입력#>)
    func appleSDGothicNeoRegular(size: CGFloat) -> UIFont {
        return UIFont.init(name: "AppleSDGothicNeo-Regular",
                           size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    // Tools.font.appleSDGothicNeoBold(size: <#입력#>)
    func appleSDGothicNeoBold(size: CGFloat) -> UIFont {
        return UIFont.init(name: "AppleSDGothicNeo-Bold",
                           size: size) ?? UIFont.systemFont(ofSize: size)
    }

}
