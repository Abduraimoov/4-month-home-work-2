//
//  SecondViewController.swift
//  4 month home work 2
//
//  Created by Nurtilek on 1/19/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    private lazy var myImage1: UIImageView = {
        let Img = UIImageView()
        Img.image = UIImage(named: "1")
        Img.translatesAutoresizingMaskIntoConstraints = false
        return Img
    }()
    
    private lazy var myView2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var myNameLbl: UILabel = MakerView.sharedLB.makeLbl(text: "Full Name",
                                                              textColor: .black,
                                                              textSize: 12, ofSize: .light)
    
    private lazy var myNameTF: UITextField = MakerView.sharedTF.makeTF(placeholder: "Your full name")
    
    private lazy var myNumberLbl: UILabel = MakerView.sharedLB.makeLbl(text: "Mobile Number",
                                                                textColor: .black,
                                                                textSize: 12, ofSize: .light)
    
    private lazy var myNumberTF: UITextField = MakerView.sharedTF.makeTF(placeholder: "+996 your number")
    
    private lazy var myEmailLbl: UILabel = MakerView.sharedLB.makeLbl(text: "Email",
                                                               textColor: .black,
                                                               textSize: 12, ofSize: .light)
    
    private lazy var myEmailTF: UITextField = MakerView.sharedTF.makeTF(placeholder: "Your.email@gmail.com")
    
    private lazy var myUserLbl: UILabel = MakerView.sharedLB.makeLbl(text: "User Name",
                                                              textColor: .black,
                                                              textSize: 12, ofSize: .light)
    
    private lazy var myUserTF: UITextField = MakerView.sharedTF.makeTF(placeholder: "Your user name")
    
    private lazy var myPasswordLbl: UILabel = MakerView.sharedLB.makeLbl(text: "Password",
                                                                  textColor: .black,
                                                                  textSize: 12, ofSize: .light)
    
    private lazy var myPasswordTF: UITextField = MakerView.sharedTF.makeTF(placeholder: "123465678")
    
    private lazy var myConfirmLbl: UILabel = MakerView.sharedLB.makeLbl(text: "Confirm Password",
                                                                 textColor: .black,
                                                                 textSize: 12, ofSize: .light)
    
    private lazy var myConfirmTF: UITextField = MakerView.sharedTF.makeTF(placeholder: "1234656789")
    
    private lazy var myDontLabel: UILabel = MakerView.sharedLB.makeLbl(text: "Already have an Account?",
                                                                textColor: .black,
                                                                textSize: 14, ofSize: .bold)
    
    private lazy var SingUpBT: UIButton = MakerView.shared.makeBTN(title: "Sing Up",
                                                                   for: .normal,
                                                                   colorBT: .white,
                                                                   backgroundColorBT: .systemCyan,
                                                                   layerCornerBT: 20)
    
    private lazy var singInBT: UIButton = MakerView.shared.makeBTN(title: "Sing In",
                                                                   for: .normal,
                                                                   colorBT: .systemCyan,
                                                                   backgroundColorBT: .white,
                                                                   layerCornerBT: 16)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemCyan
        
        setupImage()
        setupmyView2()
        setupmyDontLabel()
        setupmyNameLbl()
        setupmyNameTF()
        setupmyNumberLbl()
        setupmyNumberTF()
        setupmyEmailLbl()
        setupmyEmailTF()
        setupmyUserLbl()
        setupmyUserTF()
        setupmyPasswordLbl()
        setupmyPasswordTF()
        setupmyConfirmLbl()
        setupmyConfirmTF()
        setupSingUpBT()
        setupsingInBT()
    }
    
    private func setupImage() {
        view.addSubview(myImage1)
        
        NSLayoutConstraint.activate([
            myImage1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            myImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            myImage1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            myImage1.heightAnchor.constraint(equalToConstant: 256)
        ])
    }
    
    private func setupmyView2() {
        view.addSubview(myView2)
        
        NSLayoutConstraint.activate([
            myView2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 163),
            myView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            myView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            myView2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
    
    private func setupmyDontLabel() {
        myView2.addSubview(myDontLabel)
        
        NSLayoutConstraint.activate([
            myDontLabel.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 4),
            myDontLabel.bottomAnchor.constraint(equalTo: myView2.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            myDontLabel.heightAnchor.constraint(equalToConstant: 18),
            myDontLabel.widthAnchor.constraint(equalToConstant: 190)
        ])
    }
    
    private func setupmyNameLbl() {
        myView2.addSubview(myNameLbl)
        
        NSLayoutConstraint.activate([
            myNameLbl.topAnchor.constraint(equalTo: myView2.topAnchor, constant: 30),
            myNameLbl.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myNameLbl.heightAnchor.constraint(equalToConstant: 15),
            myNameLbl.widthAnchor.constraint(equalToConstant: 177)
            
        ])
    }
    
    private func setupmyNameTF() {
        myView2.addSubview(myNameTF)
        
        NSLayoutConstraint.activate([
            myNameTF.topAnchor.constraint(equalTo: myNameLbl.bottomAnchor, constant: 9),
            myNameTF.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myNameTF.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -22),
            myNameTF.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setupmyNumberLbl() {
        myView2.addSubview(myNumberLbl)
        
        NSLayoutConstraint.activate([
            myNumberLbl.topAnchor.constraint(equalTo: myNameTF.bottomAnchor, constant: 14),
            myNumberLbl.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myNumberLbl.widthAnchor.constraint(equalToConstant: 177),
            myNumberLbl.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func setupmyNumberTF() {
        myView2.addSubview(myNumberTF)
        
        NSLayoutConstraint.activate([
            myNumberTF.topAnchor.constraint(equalTo: myNameTF.bottomAnchor, constant: 30),
            myNumberTF.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myNumberTF.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -22),
            myNumberTF.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setupmyEmailLbl() {
        myView2.addSubview(myEmailLbl)
        
        NSLayoutConstraint.activate([
            myEmailLbl.topAnchor.constraint(equalTo: myNumberTF.bottomAnchor, constant: 14),
            myEmailLbl.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myEmailLbl.widthAnchor.constraint(equalToConstant: 177),
            myEmailLbl.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func setupmyEmailTF() {
        myView2.addSubview(myEmailTF)
        
        NSLayoutConstraint.activate([
            myEmailTF.topAnchor.constraint(equalTo: myNumberTF.bottomAnchor, constant: 30),
            myEmailTF.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myEmailTF.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -22),
            myEmailTF.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setupmyUserLbl() {
        myView2.addSubview(myUserLbl)
        
        NSLayoutConstraint.activate([
            myUserLbl.topAnchor.constraint(equalTo: myEmailTF.bottomAnchor, constant: 14),
            myUserLbl.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myUserLbl.widthAnchor.constraint(equalToConstant: 177),
            myUserLbl.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func setupmyUserTF() {
        myView2.addSubview(myUserTF)
        
        NSLayoutConstraint.activate([
            myUserTF.topAnchor.constraint(equalTo: myEmailTF.bottomAnchor, constant: 30),
            myUserTF.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myUserTF.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -22),
            myUserTF.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setupmyPasswordLbl() {
        myView2.addSubview(myPasswordLbl)
        
        NSLayoutConstraint.activate([
            myPasswordLbl.topAnchor.constraint(equalTo: myUserTF.bottomAnchor, constant: 14),
            myPasswordLbl.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myPasswordLbl.widthAnchor.constraint(equalToConstant: 177),
            myPasswordLbl.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func setupmyPasswordTF() {
        myView2.addSubview(myPasswordTF)
        
        NSLayoutConstraint.activate([
            myPasswordTF.topAnchor.constraint(equalTo: myUserTF.bottomAnchor, constant: 30),
            myPasswordTF.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myPasswordTF.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -22),
            myPasswordTF.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setupmyConfirmLbl() {
        myView2.addSubview(myConfirmLbl)
        
        NSLayoutConstraint.activate([
            myConfirmLbl.topAnchor.constraint(equalTo: myPasswordTF.bottomAnchor, constant: 14),
            myConfirmLbl.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myConfirmLbl.widthAnchor.constraint(equalToConstant: 177),
            myConfirmLbl.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func setupmyConfirmTF() {
        myView2.addSubview(myConfirmTF)
        
        NSLayoutConstraint.activate([
            myConfirmTF.topAnchor.constraint(equalTo: myPasswordTF.bottomAnchor, constant: 30),
            myConfirmTF.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myConfirmTF.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -22),
            myConfirmTF.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setupSingUpBT() {
        myView2.addSubview(SingUpBT)
        
        NSLayoutConstraint.activate([
            SingUpBT.topAnchor.constraint(equalTo: myConfirmTF.bottomAnchor, constant: 20),
            SingUpBT.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 100),
            SingUpBT.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -100),
            SingUpBT.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        SingUpBT.addTarget(self, action: #selector(thirdView( sender:)), for: .touchUpInside)
    }
    
    private func setupsingInBT() {
        myView2.addSubview(singInBT)
        
        NSLayoutConstraint.activate([
            singInBT.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -155),
            singInBT.bottomAnchor.constraint(equalTo: myView2.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            singInBT.heightAnchor.constraint(equalToConstant: 16),
            singInBT.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        singInBT.addTarget(self, action: #selector(oneView( sender:)), for: .touchUpInside)
    }
    
    
    @objc func  oneView( sender: UIButton) {
        navigationController?.pushViewController(ViewController(), animated: true)
   
    }

    @objc func thirdView(sender: UIButton) {
        guard let nameText = myNameTF.text, !nameText.isEmpty else {
            if let text = myNameTF.text, text.count < 6 {
                myNameTF.placeholder = "Enter your full name"
                myNameTF.layer.borderColor = UIColor.red.cgColor
                myNameTF.layer.borderWidth = 2
            }
            return
        }

        guard let numberText = myNumberTF.text, numberText.count >= 6 else {
            myNumberTF.placeholder = "Enter a number +996"
            myNumberTF.layer.borderColor = UIColor.red.cgColor
            myNumberTF.layer.borderWidth = 2
            return
        }

        guard let emailText = myEmailTF.text, emailText.count >= 6 else {
            myEmailTF.placeholder = "Enter an email"
            myEmailTF.layer.borderColor = UIColor.red.cgColor
            myEmailTF.layer.borderWidth = 2
            return
        }
        
        guard let userText = myUserTF.text, userText.count >= 6 else {
            myUserTF.placeholder = "Enter a user name"
            myUserTF.layer.borderColor = UIColor.red.cgColor
            myUserTF.layer.borderWidth = 2
            return
        }
        
        guard let passwordText = myPasswordTF.text, passwordText.count >= 6 else {
            myPasswordTF.placeholder = "Enter a password (at least 6 characters)"
            myPasswordTF.layer.borderColor = UIColor.red.cgColor
            myPasswordTF.layer.borderWidth = 2
            return
        }
        
        guard let confirmPasswordText = myConfirmTF.text, confirmPasswordText == passwordText else {
            myConfirmTF.placeholder = "Passwords do not match"
            myConfirmTF.layer.borderColor = UIColor.red.cgColor
            myConfirmTF.layer.borderWidth = 2
            return
        }

        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
