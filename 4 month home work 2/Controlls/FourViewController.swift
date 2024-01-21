//
//  FourViewController.swift
//  4 month home work 2
//
//  Created by Nurtilek on 1/19/24.
//

import UIKit

class FourViewController: UIViewController {
    
    private lazy var myImage3: UIImageView = {
        let Img = UIImageView()
        Img.image = UIImage(named: "3")
        Img.translatesAutoresizingMaskIntoConstraints = false
        return Img
    }()
    
    private lazy var MySmsTF: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 16
        tf.backgroundColor = .gray
        tf.layer.borderColor = UIColor.white.cgColor
        tf.layer.borderWidth = 1
        tf.placeholder = "Enter a 6 number in sms"
        tf.tintColor = .white
        tf.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = .always
        return tf
    }()
    
    private lazy var myLoggingLBL: UILabel = MakerView().makeLbl(text: "Trouble Logging in?",
                                                                 textColor: .white,
                                                                 textSize: 28,
                                                                 ofSize: .bold)
    
    private lazy var myTextLBL: UILabel = MakerView().makeLbl(text: "Enter your email or mobile number and we'll send you a OTP to get back into your account.",
                                                              textColor: .white,
                                                              textSize: 11,
                                                              ofSize: .medium,
                                                              numberOfLines: 2)
    
    private lazy var myView2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myIdLbl: UILabel = MakerView().makeLbl(text: "Employee Id")
    
    private lazy var YourNumberTF: UITextField = MakerView().makeTF(placeholder: "Enter a your number")
    
    private lazy var yourEmailLbl: UILabel = MakerView().makeLbl(text: "enter your mobile number or Email id",
                                                                 textColor: .black,
                                                                 textSize: 15,
                                                                 ofSize: .bold)
    
    private lazy var getOPTbt: UIButton = MakerView().makeBTN(title: "Get OPT",
                                                              for: .normal,
                                                              colorBT: .white,
                                                              backgroundColorBT: .systemYellow,
                                                              layerCornerBT: 16)
    
    private lazy var mySumBT: UIButton = MakerView().makeBTN(title: "Sumbit",
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
        setupmyLoggingLBL()
        setupmyTextLBL()
        setupmyView2()
        setupmyIdLbl()
        setupYourNumberTF()
        setupyourEmailLbl()
        setupgetOPTbt()
        setupmySumBT()
    }
   
    private func setupmyImage() {
        view.addSubview(myImage3)
        
        NSLayoutConstraint.activate([
            myImage3.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            myImage3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 106),
            myImage3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -106),
            myImage3.heightAnchor.constraint(equalToConstant: 170)
        ])
    }
    
    private func setupMySmsTF() {
        view.addSubview(MySmsTF)
        
        NSLayoutConstraint.activate([
            MySmsTF.topAnchor.constraint(equalTo: myImage3.bottomAnchor, constant: 34),
            MySmsTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            MySmsTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -41),
            MySmsTF.heightAnchor.constraint(equalToConstant: 40)
        ])
    }

    private func setupmyLoggingLBL() {
        view.addSubview(myLoggingLBL)
        
        NSLayoutConstraint.activate([
            myLoggingLBL.topAnchor.constraint(equalTo: MySmsTF.bottomAnchor, constant: 32),
            myLoggingLBL.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 66),
            myLoggingLBL.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -68),
            myLoggingLBL.heightAnchor.constraint(equalToConstant: 31)
        ])
    }
    
    private func setupmyTextLBL() {
        view.addSubview(myTextLBL)
        
        NSLayoutConstraint.activate([
            myTextLBL.topAnchor.constraint(equalTo: myLoggingLBL.bottomAnchor, constant: 10),
            myTextLBL.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            myTextLBL.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -65),
            myTextLBL.heightAnchor.constraint(equalToConstant: 27)
        ])
    }
    
    private func setupmyView2() {
        view.addSubview(myView2)
        
        NSLayoutConstraint.activate([
            myView2.topAnchor.constraint(equalTo: myTextLBL.bottomAnchor, constant: 38),
            myView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            myView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0),
            myView2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
    
    private func setupmyIdLbl() {
        myView2.addSubview(myIdLbl)
        
        NSLayoutConstraint.activate([
            myIdLbl.topAnchor.constraint(equalTo: myView2.topAnchor, constant: 42),
            myIdLbl.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            myIdLbl.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -161),
            myIdLbl.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func setupYourNumberTF() {
        myView2.addSubview(YourNumberTF)
        
        NSLayoutConstraint.activate([
            YourNumberTF.topAnchor.constraint(equalTo: myView2.topAnchor, constant: 70),
            YourNumberTF.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 22),
            YourNumberTF.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -22),
            YourNumberTF.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setupyourEmailLbl() {
        myView2.addSubview(yourEmailLbl)
        
        NSLayoutConstraint.activate([
            yourEmailLbl.topAnchor.constraint(equalTo: YourNumberTF.bottomAnchor, constant: 56),
            yourEmailLbl.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 39),
            yourEmailLbl.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -49),
            yourEmailLbl.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func setupgetOPTbt() {
        myView2.addSubview(getOPTbt)
        
        NSLayoutConstraint.activate([
            getOPTbt.topAnchor.constraint(equalTo: yourEmailLbl.bottomAnchor, constant: 22),
            getOPTbt.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -20),
            getOPTbt.heightAnchor.constraint(equalToConstant: 35),
            getOPTbt.widthAnchor.constraint(equalToConstant: 100)
        ])
       getOPTbt.addTarget(self, action: #selector(getOPTButtonTapped), for: .touchUpInside)

    }
    
    private func setupmySumBT() {
        myView2.addSubview(mySumBT)
        
        NSLayoutConstraint.activate([
            mySumBT.bottomAnchor.constraint(equalTo: myView2.bottomAnchor, constant: -30),
            mySumBT.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 140),
            mySumBT.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -142),
            mySumBT.heightAnchor.constraint(equalToConstant: 45)
        ])
        mySumBT.addTarget(self, action: #selector(sumbitButtonTapped), for: .touchUpInside)
    }
    
    @objc func getOPTButtonTapped(sender: UIButton) {
        guard let phoneNumber = YourNumberTF.text, !phoneNumber.isEmpty else {
            YourNumberTF.layer.borderColor = UIColor.red.cgColor
            YourNumberTF.layer.borderWidth = 2
            return
        }
        guard let numberText = YourNumberTF.text, numberText.count >= 6 else {
            YourNumberTF.placeholder = "please write more than 6 numbers"
            YourNumberTF.layer.borderColor = UIColor.red.cgColor
            YourNumberTF.layer.borderWidth = 2
            return
        }
        
        MySmsTF.isEnabled = true
        MySmsTF.backgroundColor = .white
        MySmsTF.layer.borderColor = UIColor.gray.cgColor
        MySmsTF.layer.borderWidth = 1
        MySmsTF.becomeFirstResponder()
        
    }
    
    @objc func sumbitButtonTapped(sender: UIButton) {
       
        guard let smsCode = MySmsTF.text, !smsCode.isEmpty else {
            MySmsTF.layer.borderColor = UIColor.red.cgColor
            MySmsTF.layer.borderWidth = 2
            return
        }
        guard let smsText = MySmsTF.text, smsText.count >= 6 else {
            MySmsTF.placeholder = "please write more than 6 numbers"
            MySmsTF.layer.borderColor = UIColor.red.cgColor
            MySmsTF.layer.borderWidth = 2
            return
        }
        
        let vc = FiveViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}
