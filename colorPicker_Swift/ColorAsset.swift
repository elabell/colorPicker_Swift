//
//  ColorAsset.swift
//  colorPicker_Swift
//
//  Created by EB on 14/02/2019.
//  Copyright © 2019 EB.org. All rights reserved.
//

import Foundation
import UIKit

enum ColorAsset: String {
    
    case green
    case orange
    case purple }

extension ColorAsset {
    
    var color : UIColor {
        return UIColor(named: self.rawValue)!
        
    }
    
}
