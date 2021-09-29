//
//  ActionModuleData.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 28.09.2021.
//

import Foundation

class ActionModuleData{
    private(set) var negativeButtonData: ActionButtonData
    private(set) var positiveButtonData: ActionButtonData
    
    init(negativeButtonData: ActionButtonData, positiveButtonData: ActionButtonData){
        self.negativeButtonData = negativeButtonData
        self.positiveButtonData = positiveButtonData
    }
}
