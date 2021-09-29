//
//  PermissionImages.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 29.09.2021.
//

import Foundation
import UIKit

enum PermissionImages: String,  GenericValueProtocol{
    typealias Value = UIImage
    
    var value: UIImage{
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case camera = "camera"
    case photos = "notif"
    
}
