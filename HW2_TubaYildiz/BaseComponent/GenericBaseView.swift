//
//  GenericBaseView.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 28.09.2021.
//

import Foundation
import UIKit
class GenericBaseView<T>: BaseView{
    
    private var data: T?
    
    init(frame: CGRect = .zero, data: T? = nil){
        self.data = data
        super.init(frame: frame)
        loadDataView()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadDataView(){
    }
    func setData(by value: T?){
        self.data = value
        loadDataView()
    }
    func returnData() -> T? {
        return data
    }
    
}
