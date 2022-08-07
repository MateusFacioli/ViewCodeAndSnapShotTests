//
//  ViewController.swift
//  ViewCodeSnapShotTests
//
//  Created by Mateus Rodrigues on 29/07/22.
//

import UIKit

class ViewController: UIViewController {

    let screen = FirstView()
    //private var customView: FirstView? = nil
    
    override func loadView() {
        //let view = UIView(frame: UIScreen.main.bounds)
        //self.view = view
        self.view = screen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /* ou func que pode ser usada para niveis de perfil, se nivel premium constroi uma se nao outra tela
     private func buildView() {
        view = FirstView()
        customView = view as? FirstView()
     }
     */


}

