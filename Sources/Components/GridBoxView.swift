//
//  GridBoxView.swift
//  ViewCodeAndSnapShot
//
//  Created by Mateus Rodrigues on 29/07/22.
//

import UIKit

final class GridBoxView: UIView {
    
    
    lazy var image: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    lazy var stack: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 8
        return view
    }()
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .orange
        return label
    }()
    
    lazy var subtitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        backgroundColor = .white
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("storyboard/xib has not been implemented")
    }
}

extension GridBoxView: CodeView {
    func buildVieHierarchy() {
        addSubview(image)
        stack.addArrangedSubview(title)
        stack.addArrangedSubview(subtitle)
        addSubview(stack)
    }
    
    func setupContraints() {
        NSLayoutConstraint.activate([
            image.leftAnchor.constraint(equalTo: self.leftAnchor),
            image.rightAnchor.constraint(equalTo: self.rightAnchor),
            image.topAnchor.constraint(equalTo: self.topAnchor),
            image.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7),

            stack.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 30),
            stack.leftAnchor.constraint(equalTo: self.leftAnchor),
            stack.rightAnchor.constraint(equalTo: self.rightAnchor),
//            stack.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            stack.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stack.heightAnchor.constraint(equalToConstant: 350),
            
        ])
    }
    
    func setupAdditionals() {
        
    }
}

