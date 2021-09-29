//
//  Fontmanager.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 29.09.2021.
//

import Foundation
import UIKit

enum FontManager: GenericValueProtocol{
    typealias value = UIFont
    
    var value: UIFont {
        switch self {
        case .bold(let size):
            return UIFont.systemFont(ofSize: size, weight: .bold)
        case .regular(let size):
            return UIFont.systemFont(ofSize: size, weight: .regular)
        }
    }
    
    case bold(CGFloat)
    case regular(CGFloat)
}
