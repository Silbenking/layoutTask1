//
//  ViewController.swift
//  layoutTask1
//
//  Created by Сергей Сырбу on 10.09.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    //- setupLayout - функция расчёта для констрейнтов.
    //- setupAppearance - функция для настройки цветов, шрифтов и всего UI.
    //- setupBehavior - для настройки поведения, нажатия, делегаты и т.д.
    enum Constants {
        static let titleFontSize: CGFloat = 30
        static let descriptionFontSize: CGFloat = 16
        static let heigthPopupView: CGFloat = 363
        static let widthPopupView: CGFloat = 343
        static let titleLabelOffset: CGFloat = 32
        static let descriptionLabelOffset: CGFloat = 16

    }
    let popupView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 7
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Congratulations!"
        label.font = .systemFont(ofSize: Constants.titleFontSize)
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt."
        label.font = .systemFont(ofSize: Constants.descriptionFontSize)
        label.textColor = .systemGray
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        setupLayout()
        setupBehavior()
    }
    private func setupLayout() {
        view.addSubview(popupView)
        popupView.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: Constants.widthPopupView, height: Constants.heigthPopupView))
            make.center.equalToSuperview()
        }
        popupView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(popupView.snp.top).offset(Constants.titleLabelOffset)
            make.centerX.equalTo(popupView)
        }
        popupView.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(Constants.descriptionLabelOffset)
            make.trailing.leading.equalTo(popupView).inset(Constants.descriptionLabelOffset)
        }
        
    }
    private func setupAppearance() {
        view.backgroundColor = UIColor(red: 93/255, green: 176/255, blue: 117/255, alpha: 1)
    }
    private func setupBehavior(){
        
    }
}

