//
//  GenericValueProtocol.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 28.09.2021.
//

import Foundation

protocol GenericValueProtocol{
    associatedtype value
    var value: value {get}
}
