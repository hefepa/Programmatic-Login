//
//  ViewController.swift
//  Programmatical Login
//
//  Created by WEMA on 24/12/2023.
//

import UIKit

class ViewController: UIViewController {
    let loginButton = UIButton()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let viewContainer = UIView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        interface()
    }
    
    func interface(){
        viewContain()
        textField()
        textField2()
        loginProperties()
    }
    
    func viewContain(){
        view.addSubview(viewContainer)
        viewContainer.backgroundColor = .lightGray
        viewContainer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            viewContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            viewContainer.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            viewContainer.widthAnchor.constraint(equalToConstant: 370),
            viewContainer.heightAnchor.constraint(equalToConstant: 250)
        ])
        
    }
    
    func textField(){
        viewContainer.addSubview(emailTextField)
        emailTextField.placeholder = "Enter your email address"
        emailTextField.font = .systemFont(ofSize: 15, weight: .semibold)
        emailTextField.borderStyle = .roundedRect
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: viewContainer.bottomAnchor, constant: -220),
            emailTextField.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: viewContainer.trailingAnchor, constant: -20),
            //emailTextField.widthAnchor.constraint(equalToConstant: 300),
            emailTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func textField2(){
        viewContainer.addSubview(passwordTextField)
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.font = .systemFont(ofSize: 15, weight: .semibold)
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            //passwordTextField.widthAnchor.constraint(equalToConstant: 300),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    func loginProperties(){
        viewContainer.addSubview(loginButton)
        loginButton.configuration = .filled()
        loginButton.configuration?.cornerStyle = .capsule
        loginButton.configuration?.baseBackgroundColor = .systemCyan
        loginButton.configuration?.title = "Login"
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor, constant: 80),
            loginButton.trailingAnchor.constraint(equalTo: viewContainer.trailingAnchor, constant: -80),
            //loginButton.widthAnchor.constraint(equalToConstant: 150),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
    }

}

