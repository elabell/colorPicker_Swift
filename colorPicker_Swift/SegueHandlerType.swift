//
//  SegueHandlerType.swift
//  colorPicker_Swift
//
//  Created by EB on 14/02/2019.
//  Copyright © 2019 EB.org. All rights reserved.
//

import Foundation
import UIKit
import Foundation

protocol SegueHandlerType {
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandlerType where Self: UIViewController,
    SegueIdentifier.RawValue == String
{
    
    func performSegueWithIdentifier(segueIdentifier: SegueIdentifier,
                                    sender: AnyObject?) {
        
        performSegue(withIdentifier: segueIdentifier.rawValue, sender: sender)
    }
    
    func segueIdentifierForSegue(segue: UIStoryboardSegue) -> SegueIdentifier {
        
        // still have to use guard stuff here, but at least you're
        // extracting it this time
        guard let identifier = segue.identifier,
            let segueIdentifier = SegueIdentifier(rawValue: identifier) else {
                fatalError("Invalid segue identifier \("segue.identifier").") }
        
        return segueIdentifier
    }
}

