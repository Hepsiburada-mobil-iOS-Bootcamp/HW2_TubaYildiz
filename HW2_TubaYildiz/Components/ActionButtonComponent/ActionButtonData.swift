//
//  ActionbuttonData.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 28.09.2021.
//

import Foundation
import UIKit

typealias VoidCompletionBlock = () -> Void

class ActionButtonData{
    private(set) var text: String
    private(set) var buttonType: ActionButtonType
    private(set) var actionButtonListener: VoidCompletionBlock? //optional
    
    init(text: String, type: ActionButtonType){
        self.text = text
        self.buttonType = type
    }
    
    //Builder design pattern: lego gibi parçalar ekleniyor ve self return ediiliyor
    func setActionButtonListener(by value:VoidCompletionBlock?) -> Self {
        actionButtonListener = value
        return self
    }
    
}
