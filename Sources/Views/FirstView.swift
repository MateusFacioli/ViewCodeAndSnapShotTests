//
//  FirstView.swift
//  ViewCodeAndSnapShot
//
//  Created by Mateus Rodrigues on 28/07/22.
//

//import SnapKit
import UIKit

final class FirstView: UIView {
        
    lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "View Code IOS"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = .black
        return label
    }()
    
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.setTitle("fetch", for: .normal)
        return view
    }()
    
    lazy var stack: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.distribution = .fillProportionally
        view.spacing = 8
        return view
    }()
    
    let leftBox = GridBoxView()
    let rightBox = GridBoxView()
    
    
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        backgroundColor = .white
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("storyboard/xib has not been implemented")
    }
}

extension FirstView: CodeView {
    func buildVieHierarchy() {
        self.addSubview(button)
        stack.addArrangedSubview(leftBox)
        stack.addArrangedSubview(rightBox)
        self.addSubview(stack)
    }
    
    //MARK: fazer função dessa por componente ou geral
    func setupContraints() {
        
        //MARK: abordagem 1 foreach
//        let constraint = [
//        infoLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//        infoLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//        ]
//        constraint.forEach { (item) in
//            item.isActive = true
//        }
        
        //MARK: abordagem 2 vetor ativo
        NSLayoutConstraint.activate([
            button.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            button.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15),

            stack.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            stack.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
        ])
        
        //MARK: abordagem 3 framework snapkit
//        infoLabel.snp.makeConstraints({ (make) in
//            make.left.equalToSuperview().inset(15)// +
//            make.right.equalToSuperview().inset(15)// -
//            make.height.equalTo(50)
//            make.bottom.equalTo(self).inset(15)//equalToSuperview
//        })
    }
    
    func setupAdditionals() {
        backgroundColor = .darkGray
    }
}
