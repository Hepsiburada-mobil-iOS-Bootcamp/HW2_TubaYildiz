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
    
    private lazy var shadowContainerView: UIView = {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.backgroundColor = .white
           view.layer.shadowColor = UIColor.black.cgColor
           view.layer.shadowOffset = CGSize(width: 0, height: 2)
           view.layer.shadowRadius = 4
           view.layer.shadowOpacity = 0.4
           view.layer.cornerRadius = 6
           return view
       }()
       
       private lazy var containerView: UIView = {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.layer.cornerRadius = 6
           view.clipsToBounds = true
           view.backgroundColor = .white
           return view
       }()
       
       private lazy var title: UILabel = {
           let temp = UILabel()
           temp.translatesAutoresizingMaskIntoConstraints = false
           temp.font = UIFont.boldSystemFont(ofSize: 14)
           temp.textColor = .white
           temp.text = " "
           temp.contentMode = .center
           temp.textAlignment = .center
           return temp
       }()
       
       override func setupViewConfigurations() {
           super.setupViewConfigurations()
           addTapGesture()
       }
       
       override func addMajorViewComponents() {
           super.addMajorViewComponents()
           addComponents()
       }
       
       private func addComponents() {
           addSubview(shadowContainerView)
           shadowContainerView.addSubview(containerView)
           containerView.addSubview(title)
           
           NSLayoutConstraint.activate([
           
               shadowContainerView.topAnchor.constraint(equalTo: topAnchor),
               shadowContainerView.bottomAnchor.constraint(equalTo: bottomAnchor),
               shadowContainerView.leadingAnchor.constraint(equalTo: leadingAnchor),
               shadowContainerView.trailingAnchor.constraint(equalTo: trailingAnchor),
               
               containerView.topAnchor.constraint(equalTo: shadowContainerView.topAnchor),
               containerView.bottomAnchor.constraint(equalTo: shadowContainerView.bottomAnchor),
               containerView.leadingAnchor.constraint(equalTo: shadowContainerView.leadingAnchor),
               containerView.trailingAnchor.constraint(equalTo: shadowContainerView.trailingAnchor),
               
               title.topAnchor.constraint(equalTo: containerView.topAnchor),
               title.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
               title.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
               title.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
           
           ])
       }

       override func loadDataView() {
           super.loadDataView()
           guard let data = returnData() else { return }
           title.text = data.text
           
           switch data.buttonType {
           case .filled(let theme):
               containerView.backgroundColor = theme.value
               title.textColor = .white
           case .outlined(let theme):
               containerView.layer.borderColor = theme.value.cgColor
               containerView.layer.borderWidth = 1
               title.textColor = theme.value
           }
           
       }
   
       
   }
extension ActionButton: UIGestureRecognizerDelegate{
    
    private func addTapGesture(){
        let tap = UITapGestureRecognizer(target:self, action: .buttonTappedSelector)
        tap.delegate = self
        self.addGestureRecognizer(tap)
    }
    @objc fileprivate func buttonTapped(_ sender: UITapGestureRecognizer){
       guard let data = returnData() else { return }
        startTappedAnimation() { [weak self] finish in
                   data.actionButtonListener?()
        }
       
    }
    
}


fileprivate extension Selector {
    static let buttonTappedSelector  = #selector(ActionButton.buttonTapped)
    
}
