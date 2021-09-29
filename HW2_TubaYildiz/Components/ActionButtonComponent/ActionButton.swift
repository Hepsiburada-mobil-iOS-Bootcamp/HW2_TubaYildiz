//
//  ActionButton.swift
//  HW2_TubaYildiz
//
//  Created by Tuba Nur on 28.09.2021.
//

import UIKit

protocol ActionButtonDelegate: AnyObject{
    func actionButtonPressed()
}



class ActionButton: GenericBaseView<ActionButtonData> {
    
    
    private lazy var shadowContainer: UIView = {
       let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.shadowColor = UIColor.black.cgColor
        temp.layer.shadowOffset = CGSize(width:0, height:2)
        temp.layer.shadowRadius = 4
        temp.layer.shadowOpacity = 0.4
        temp.layer.cornerRadius = 6
        return temp
    }()
    
    
    private lazy var containerView: UIView = {
       let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius = 6
        temp.clipsToBounds = true
        temp.backgroundColor = .red
        return temp
    }()
    
    
    lazy var infoTitle: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        temp.text = "OK"
        temp.contentMode = .center
        temp.textAlignment = .center
        
        return temp
    }()
    
  
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addContainerView()
    }
    
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        
    }
    private func addContainerView(){
        addSubview(shadowContainer)
        shadowContainer.addSubview(containerView)
        containerView.addSubview(infoTitle)
        NSLayoutConstraint.activate([
            shadowContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            shadowContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            shadowContainer.topAnchor.constraint(equalTo: topAnchor),
            shadowContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            containerView.leadingAnchor.constraint(equalTo: shadowContainer.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: shadowContainer.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: shadowContainer.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: shadowContainer.bottomAnchor),
            
            //infoTitle.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            //infoTitle.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
            infoTitle.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            infoTitle.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            infoTitle.topAnchor.constraint(equalTo: containerView.topAnchor),
            infoTitle.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
            
        ])
    }
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else {return}
        
        infoTitle.text = data.text
        switch data.buttonType{
        case .filled(let theme):
            containerView.backgroundColor = theme.value
            infoTitle.textColor = .white

        case .outlined(let theme):
            containerView.layer.borderWidth = 1
            containerView.layer.borderColor = theme.value.cgColor
            containerView.backgroundColor = .white
            infoTitle.textColor = theme.value
        }
    }
    
    func pressButtonAction(){
        guard let data = returnData() else {return}
        data.actionButtonListener?()
    }

}
extension ActionButton: UIGestureRecognizerDelegate{
    
    private func addTapGesture(){
        let tap = UITapGestureRecognizer(target:self, action: .buttonTappedSelector)
        tap.delegate = self
        addGestureRecognizer(tap)
    }
    @objc fileprivate func buttonTapped(_ sender: UITapGestureRecognizer){
        isUserInteractionEnabled = false
        startTappedAnimation { finish in
            if finish{
                self.isUserInteractionEnabled = true
                self.pressButtonAction()
            }
        }
        
    }
    
}


fileprivate extension Selector {
    static let buttonTappedSelector  = #selector(ActionButton.buttonTapped)
    
}
