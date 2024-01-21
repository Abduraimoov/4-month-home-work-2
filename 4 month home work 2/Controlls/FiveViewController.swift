//
//  FiveViewController.swift
//  4 month home work 2
//
//  Created by Nurtilek on 1/19/24.
//

import UIKit

class FiveViewController: UIViewController {
    
    private lazy var myImage4: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "3")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var MyNameTF: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 16
        tf.backgroundColor = .white
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 1
        tf.placeholder = "Enter a new name (optional)"
        tf.tintColor = .white
        tf.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = .always
        return tf
    }()
    
    private lazy var myView2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myNewPassLbl: UILabel = MakerView().makeLbl(text: "New Password",
                                                                 textColor: .black)
    
    private lazy var myNewPassTF: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 16
        tf.backgroundColor = .white
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 1
        tf.placeholder = "123456789"
        tf.tintColor = .white
        tf.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = .always
        return tf
    }()
    
    private lazy var myConPassLbl: UILabel = MakerView().makeLbl(text: "Confirm Password",
                                                                 textColor: .black)
    
    private lazy var myConPassTF: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 16
        tf.backgroundColor = .white
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 1
        tf.placeholder = "123456789"
        tf.tintColor = .white
        tf.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = .always
        return tf
    }()
    
    private lazy var mySum5BT: UIButton = MakerView().makeBTN(title: "Sumbit",
                                                             for: .normal,
                                                             colorBT: .white,
                                                             backgroundColorBT: .green,
                                                             layerCornerBT: 16)

    override func viewDidLoad() {
        super.viewDidLoad()
        

      setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemCyan
        
        setupmyImage()
        setupMySmsTF()
        setupmyView2()
        setupmyNewPassLbl()
        setupmyNewPassTF()
        setupmyConPassLbl()
        setupmyConPassTF()
        setupmySum5BT()
    }
    
    private func setupmyImage() {
        view.addSubview(myImage4)
        
        NSLayoutConstraint.activate([
            myImage4.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            myImage4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 106),
            myImage4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -106),
            myImage4.heightAnchor.constraint(equalToConstant: 170)
        ])
    }
    private func setupMySmsTF() {
        view.addSubview(MyNameTF)
        
        NSLayoutConstraint.activate([
            MyNameTF.topAnchor.constraint(equalTo: myImage4.bottomAnchor, constant: 34),
            MyNameTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            MyNameTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -41),
            MyNameTF.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    private func setupmyView2() {
        view.addSubview(myView2)
        
        NSLayoutConstraint.activate([
            myView2.topAnchor.constraint(equalTo: MyNameTF.bottomAnchor, constant: 43),
            myView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            myView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0),
            myView2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
    
    private func setupmyNewPassLbl() {
        myView2.addSubview(myNewPassLbl)
        
        NSLayoutConstraint.activate([
            myNewPassLbl.topAnchor.constraint(equalTo: myView2.topAnchor, constant: 120),
            myNewPassLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            myNewPassLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -224),
            myNewPassLbl.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func setupmyNewPassTF() {
        view.addSubview(myNewPassTF)
        
        NSLayoutConstraint.activate([
            myNewPassTF.topAnchor.constraint(equalTo: myNewPassLbl.bottomAnchor, constant: 5),
            myNewPassTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            myNewPassTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            myNewPassTF.heightAnchor.constraint(equalToConstant: 40)
        ])
    }

    private func setupmyConPassLbl() {
        myView2.addSubview(myConPassLbl)
        
        NSLayoutConstraint.activate([
            myConPassLbl.topAnchor.constraint(equalTo: myNewPassTF.bottomAnchor, constant: 25),
            myConPassLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            myConPassLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -224),
            myConPassLbl.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func setupmyConPassTF() {
        view.addSubview(myConPassTF)
        
        NSLayoutConstraint.activate([
            myConPassTF.topAnchor.constraint(equalTo: myConPassLbl.bottomAnchor, constant: 5),
            myConPassTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            myConPassTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            myConPassTF.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupmySum5BT() {
        myView2.addSubview(mySum5BT)
        
        NSLayoutConstraint.activate([
            mySum5BT.topAnchor.constraint(equalTo: myConPassTF.bottomAnchor, constant: 73),
            mySum5BT.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 140),
            mySum5BT.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -142),
            mySum5BT.heightAnchor.constraint(equalToConstant: 45)
        ])
        mySum5BT.addTarget(self, action: #selector(thirdView(sender:)), for: .touchUpInside)
    }
    
    @objc func thirdView(sender: UIButton) {
        guard let newPasstext = myNewPassTF.text, newPasstext.count >= 6 else {
            myNewPassTF.placeholder = "Enter a password (at least 6 characters)"
            myNewPassTF.layer.borderColor = UIColor.red.cgColor
            myNewPassTF.layer.borderWidth = 2
            return
        }
        
        guard let conPassText = myConPassTF.text, conPassText == newPasstext else {
            myConPassTF.placeholder = "Passwords do not match"
            myConPassTF.layer.borderColor = UIColor.red.cgColor
            myConPassTF.layer.borderWidth = 2
            return
        }
        
        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
