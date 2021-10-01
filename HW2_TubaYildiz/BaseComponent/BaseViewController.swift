//
//  BaseViewController.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 30.09.2021.
//

import UIKit

class BaseViewController<V>: UIViewController{
    
    var viewModel: V!
    
    convenience init (viewModel: V){
        self.init()
        self.viewModel = viewModel
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareViewControllerConfigurations()
    }
    
    func prepareViewControllerConfigurations(){
        view.backgroundColor = .white
    }
    
}
