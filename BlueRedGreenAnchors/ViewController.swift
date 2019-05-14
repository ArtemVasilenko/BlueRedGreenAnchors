//
//  ViewController.swift
//  BlueRedGreenAnchors
//
//  Created by Артем on 5/13/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    let redView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .red
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()
    
    let blueView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .blue
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()
    
    let greenView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .green
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(redView)
        self.view.addSubview(blueView)
        self.view.addSubview(greenView)
        
        createViewBlueConstraint()
        createRedViewConstraint()
        createGreenViewConstraint()
    }
    
    
    func createViewBlueConstraint() {
        blueView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        blueView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        blueView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/4).isActive = true
        blueView.heightAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true
        
    }
    
    func createRedViewConstraint() {
        
        redView.bottomAnchor.constraint(equalTo: self.blueView.topAnchor, constant: -50).isActive = true
        redView.widthAnchor.constraint(equalTo: self.blueView.widthAnchor).isActive = true
        redView.heightAnchor.constraint(equalTo: self.blueView.heightAnchor).isActive = true
        
        redView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
    }
    
    func createGreenViewConstraint() {
        
        greenView.topAnchor.constraint(equalTo: self.blueView.bottomAnchor, constant: 50).isActive = true
        greenView.widthAnchor.constraint(equalTo: self.blueView.widthAnchor).isActive = true
        greenView.heightAnchor.constraint(equalTo: self.blueView.heightAnchor).isActive = true
        
        greenView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20).isActive = true
        
    }
}

