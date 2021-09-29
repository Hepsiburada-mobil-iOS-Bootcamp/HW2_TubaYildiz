//
//  ActionButtonTheme.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 28.09.2021.
//

import Foundation
import UIKit
enum ActionButtonTheme: GenericValueProtocol{
    typealias value = UIColor
    
    var value: UIColor{
        switch self{
        case .smooth:
            return #colorLiteral(red: 0.9411764706, green: 0.4705882353, blue: 0.3921568627, alpha: 1)
        case .bright:
            return #colorLiteral(red: 0.9803921569, green: 0.7843137255, blue: 0.3137254902, alpha: 1)
        case .negativeAction:
            return #colorLiteral(red: 0.9411764706, green: 0.4705882353, blue: 0.3921568627, alpha: 1)
        }
    }
    
    case smooth
    case negativeAction
    case bright
    
}
