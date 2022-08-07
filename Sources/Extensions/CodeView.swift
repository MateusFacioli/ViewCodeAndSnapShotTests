//
//  CodeVIew.swift
//  ViewCodeAndSnapShot
//
//  Created by Mateus Rodrigues on 28/07/22.
//

import Foundation

protocol CodeView {
    func buildVieHierarchy()
    func setupContraints()
    func setupAdditionals()
    func setupView()
}

//template method, executes the expected methods in the expected order
extension CodeView {
    func setupView() {
        buildVieHierarchy()
        setupContraints()
        setupAdditionals()
    }
}
