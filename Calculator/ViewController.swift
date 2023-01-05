//
//  ViewController.swift
//  Calculator
//
//  Created by Ruslan Baigeldiyev on 02.01.2023.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    //line #1
    private lazy var mainLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 100)
        label.textColor = .white
        label.text = "0"
       return label
    }()
    
    //line #2
    private lazy var divisionButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle(" / ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var percentButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray4
        button.setTitle(" % ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var signButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray4
        button.setTitle(" +/- ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var resetButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray4
        button.setTitle(" AC ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    
    //line #3
    private lazy var multiplicButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle(" X ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var nineButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle(" 9 ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var eightButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle(" 8 ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var sevenButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle(" 7 ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    
    //line #4
    private lazy var minusButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle(" - ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var sixButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle(" 6 ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var fiveButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle(" 5 ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var fourButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle(" 4 ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    
    //line #5
    private lazy var plusButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle(" + ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var threeButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle(" 3 ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var twoButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle(" 2 ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var oneButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle(" 1 ", for: UIControl.State())
        button.addTarget(self, action: #selector(oneButtonAction), for: .touchUpInside)
       return button
    }()
    //line #6
    private lazy var equalsButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle(" = ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var fractionButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle(" , ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    private lazy var zeroButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemGray
        button.setTitle(" 0 ", for: UIControl.State())
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
       return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemFill
        
        setupViews()
        setupConstraints()
    }
}


//MARK: - Setup views and constrains methods

private extension ViewController{
    func setupViews() {
        //line #1
        view.addSubview(mainLabel)
        
        //line #2
        view.addSubview(divisionButton)
        view.addSubview(percentButton)
        view.addSubview(signButton)
        view.addSubview(resetButton)
        
        //line #3
        view.addSubview(multiplicButton)
        view.addSubview(nineButton)
        view.addSubview(eightButton)
        view.addSubview(sevenButton)
        
        //line #4
        view.addSubview(minusButton)
        view.addSubview(sixButton)
        view.addSubview(fiveButton)
        view.addSubview(fourButton)
        
        //line #5
        view.addSubview(plusButton)
        view.addSubview(threeButton)
        view.addSubview(twoButton)
        view.addSubview(oneButton)
        
        //line #6
        view.addSubview(equalsButton)
        view.addSubview(fractionButton)
        view.addSubview(zeroButton)
    }
    
    func setupConstraints() {
        //line #1
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(90)
            make.trailing.equalToSuperview().inset(25)
            //make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(2)
            //make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(6)
        }
        
        //line #2
        divisionButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(mainLabel.snp.bottom).offset(10)
            make.trailing.equalToSuperview().inset(20)
        }
        percentButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(mainLabel.snp.bottom).offset(10)
            make.trailing.equalTo(divisionButton.snp.trailing).inset(90)
        }
        signButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(mainLabel.snp.bottom).offset(10)
            make.trailing.equalTo(divisionButton.snp.trailing).inset(180)
        }
        resetButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(mainLabel.snp.bottom).offset(10)
            make.trailing.equalTo(divisionButton.snp.trailing).inset(270)
        }
        
        //line #3
        multiplicButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(divisionButton.snp.bottom).offset(10)
            make.trailing.equalToSuperview().inset(20)
        }
        nineButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(divisionButton.snp.bottom).offset(10)
            make.trailing.equalTo(divisionButton.snp.trailing).inset(90)
        }
        eightButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(divisionButton.snp.bottom).offset(10)
            make.trailing.equalTo(divisionButton.snp.trailing).inset(180)
        }
        sevenButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(divisionButton.snp.bottom).offset(10)
            make.trailing.equalTo(divisionButton.snp.trailing).inset(270)
        }
        
        //line #4
        minusButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(multiplicButton.snp.bottom).offset(10)
            make.trailing.equalToSuperview().inset(20)
        }
        sixButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(multiplicButton.snp.bottom).offset(10)
            make.trailing.equalTo(multiplicButton.snp.trailing).inset(90)
        }
        fiveButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(multiplicButton.snp.bottom).offset(10)
            make.trailing.equalTo(multiplicButton.snp.trailing).inset(180)
        }
        fourButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(multiplicButton.snp.bottom).offset(10)
            make.trailing.equalTo(multiplicButton.snp.trailing).inset(270)
        }
        //line #5
        plusButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(minusButton.snp.bottom).offset(10)
            make.trailing.equalToSuperview().inset(20)
        }
        threeButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(minusButton.snp.bottom).offset(10)
            make.trailing.equalTo(minusButton.snp.trailing).inset(90)
        }
        twoButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(minusButton.snp.bottom).offset(10)
            make.trailing.equalTo(minusButton.snp.trailing).inset(180)
        }
        oneButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(minusButton.snp.bottom).offset(10)
            make.trailing.equalTo(minusButton.snp.trailing).inset(270)
        }
        
        //line #6
        equalsButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(plusButton.snp.bottom).offset(10)
            make.trailing.equalToSuperview().inset(20)
        }
        fractionButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(plusButton.snp.bottom).offset(10)
            make.trailing.equalTo(plusButton.snp.trailing).inset(90)
        }
        zeroButton.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(170)
            make.top.equalTo(plusButton.snp.bottom).offset(10)
            make.trailing.equalTo(plusButton.snp.trailing).inset(180)
        }
    }
    @objc func oneButtonAction() {
        mainLabel.text = "1"
    }
}
