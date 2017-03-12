//
//  ViewController.swift
//  SUT機種選択
//
//  Created by 孫苗 on 2016/12/18.
//  Copyright © 2016年 孫苗. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //指定textField的Outlet
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet var checkBox01: [UIButton]!
    
    //指定用户输入压力流量及时间的Outlet
    //指定第一行输入条件
    @IBOutlet weak var pressureInput01: UITextField!
    
    @IBOutlet weak var flowRateInput01: UITextField!
    
    @IBOutlet weak var timeInput01: UITextField!
    //指定第二行输入条件
    @IBOutlet weak var pressureInput02: UITextField!
    
    @IBOutlet weak var flowRateInput02: UITextField!
    
    @IBOutlet weak var timeInput02: UITextField!
    //指定第三行输入条件
    @IBOutlet weak var pressureInput03: UITextField!
    
    @IBOutlet weak var flowRateInput03: UITextField!
    
    @IBOutlet weak var timeInput03: UITextField!
    //指定第四行输入条件
    @IBOutlet weak var pressureInput04: UITextField!
    
    @IBOutlet weak var flowRateInput04: UITextField!
    
    @IBOutlet weak var timeInput04: UITextField!
    //指定第五行输入条件
    @IBOutlet weak var pressureInput05: UITextField!
    
    @IBOutlet weak var flowRateInput05: UITextField!
    
    @IBOutlet weak var timeInput05: UITextField!
    //指定第六行输入条件
    @IBOutlet weak var pressureInput06: UITextField!
    
    @IBOutlet weak var flowRateInput06: UITextField!
    
    @IBOutlet weak var timeInput06: UITextField!
    //指定第七行输入条件
    @IBOutlet weak var pressureInput07: UITextField!
    
    @IBOutlet weak var flowRateInput07: UITextField!
    
    @IBOutlet weak var timeInput07: UITextField!
    
    //指定Check Box按钮的outlet
    @IBOutlet weak var checkBoxButton01: UIButton!
    
    @IBOutlet weak var checkBoxButton02: UIButton!
    
    @IBOutlet weak var checkBoxButton03: UIButton!
    
    @IBOutlet weak var checkBoxButton04: UIButton!
    
    @IBOutlet weak var checkBoxButton05: UIButton!
    
    @IBOutlet weak var checkBoxButton06: UIButton!
    
    @IBOutlet weak var checkBoxButton07: UIButton!
    
    
    //定义“确认”按钮的outlet
    @IBOutlet weak var checkButtonOutlet: UIButton!
    
    //设定接收数据变量
    var receivedData: String!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //定义“确认“按钮的圆角大小
        checkButtonOutlet.layer.cornerRadius = 5
        checkButtonOutlet.clipsToBounds = true
        
        //将cell返回值添加到textField中显示
        inputText.text = receivedData
        
        //点击uncheckbox后变为已选
        //将checkBox02后的输入text进行设置
        pressureInput02.isUserInteractionEnabled = false
        flowRateInput02.isUserInteractionEnabled = false
        timeInput02.isUserInteractionEnabled = false
        //将checkBox03后的输入text进行设置
        pressureInput03.isUserInteractionEnabled = false
        flowRateInput03.isUserInteractionEnabled = false
        timeInput03.isUserInteractionEnabled = false
        //将checkBox04后的输入text进行设置
        pressureInput04.isUserInteractionEnabled = false
        flowRateInput04.isUserInteractionEnabled = false
        timeInput04.isUserInteractionEnabled = false
        //将checkBox05后的输入text进行设置
        pressureInput05.isUserInteractionEnabled = false
        flowRateInput05.isUserInteractionEnabled = false
        timeInput05.isUserInteractionEnabled = false
        //将checkBox06后的输入text进行设置
        pressureInput06.isUserInteractionEnabled = false
        flowRateInput06.isUserInteractionEnabled = false
        timeInput06.isUserInteractionEnabled = false
        //将checkBox07后的输入text进行设置
        pressureInput07.isUserInteractionEnabled = false
        flowRateInput07.isUserInteractionEnabled = false
        timeInput07.isUserInteractionEnabled = false
        
        //初始化checkbox的状态均为已选择
        checkBoxButton02.isSelected = true;
        checkBoxButton03.isSelected = true;
        checkBoxButton04.isSelected = true;
        checkBoxButton05.isSelected = true;
        checkBoxButton06.isSelected = true;
        checkBoxButton07.isSelected = true;
        
        //将textfield的输入键盘格式设定为数字键盘
        pressureInput01.keyboardType = UIKeyboardType.numberPad;
        flowRateInput01.keyboardType = UIKeyboardType.numberPad;
        timeInput01.keyboardType = UIKeyboardType.numberPad;
        
        pressureInput02.keyboardType = UIKeyboardType.numberPad;
        flowRateInput02.keyboardType = UIKeyboardType.numberPad;
        timeInput02.keyboardType = UIKeyboardType.numberPad;
        
        pressureInput03.keyboardType = UIKeyboardType.numberPad;
        flowRateInput03.keyboardType = UIKeyboardType.numberPad;
        timeInput03.keyboardType = UIKeyboardType.numberPad;
        
        pressureInput04.keyboardType = UIKeyboardType.numberPad;
        flowRateInput04.keyboardType = UIKeyboardType.numberPad;
        timeInput04.keyboardType = UIKeyboardType.numberPad;
        
        pressureInput05.keyboardType = UIKeyboardType.numberPad;
        flowRateInput05.keyboardType = UIKeyboardType.numberPad;
        timeInput05.keyboardType = UIKeyboardType.numberPad;
        
        pressureInput06.keyboardType = UIKeyboardType.numberPad;
        flowRateInput06.keyboardType = UIKeyboardType.numberPad;
        timeInput06.keyboardType = UIKeyboardType.numberPad;
        
        pressureInput07.keyboardType = UIKeyboardType.numberPad;
        flowRateInput07.keyboardType = UIKeyboardType.numberPad;
        timeInput07.keyboardType = UIKeyboardType.numberPad;
        
        //指定Textfield的Delegate
        self.pressureInput02.delegate = self;
        self.flowRateInput01.delegate = self;
        self.timeInput01.delegate = self;
        
        self.pressureInput02.delegate = self;
        self.flowRateInput02.delegate = self;
        self.timeInput02.delegate = self;
        
        self.pressureInput03.delegate = self;
        self.flowRateInput03.delegate = self;
        self.timeInput03.delegate = self;
        
        self.pressureInput04.delegate = self;
        self.flowRateInput04.delegate = self;
        self.timeInput04.delegate = self;
        
        self.pressureInput05.delegate = self;
        self.flowRateInput05.delegate = self;
        self.timeInput05.delegate = self;
        
        self.pressureInput06.delegate = self;
        self.flowRateInput06.delegate = self;
        self.timeInput06.delegate = self;
        
        self.pressureInput07.delegate = self;
        self.flowRateInput07.delegate = self;
        self.timeInput07.delegate = self;
    }
    
    @IBAction func checkBox2Pressed(_ sender: UIButton) {
        if checkBoxButton02.isSelected == true {
            checkBoxButton02.setImage(UIImage(named:"checked.png"), for: UIControlState.normal)
            checkBoxButton02.isSelected = false
            pressureInput02.isUserInteractionEnabled = true
            flowRateInput02.isUserInteractionEnabled = true
            timeInput02.isUserInteractionEnabled = true
            
        } else {
            checkBoxButton02.setImage(UIImage(named:"uncheck.png"), for: UIControlState.normal)
            checkBoxButton02.isSelected = true
            pressureInput02.isUserInteractionEnabled = false
            flowRateInput02.isUserInteractionEnabled = false
            timeInput02.isUserInteractionEnabled = false
        }
        
    }
    
    @IBAction func checkBox3Pressed(_ sender: UIButton) {
        if checkBoxButton03.isSelected == true {
            checkBoxButton03.setImage(UIImage(named:"checked.png"), for: UIControlState.normal)
            checkBoxButton03.isSelected = false
            pressureInput03.isUserInteractionEnabled = true
            flowRateInput03.isUserInteractionEnabled = true
            timeInput03.isUserInteractionEnabled = true
            
        } else {
            checkBoxButton03.setImage(UIImage(named:"uncheck.png"), for: UIControlState.normal)
            checkBoxButton03.isSelected = true
            pressureInput03.isUserInteractionEnabled = false
            flowRateInput03.isUserInteractionEnabled = false
            timeInput03.isUserInteractionEnabled = false
        }
    }
    
    @IBAction func checkBox4Pressed(_ sender: UIButton) {
        if checkBoxButton04.isSelected == true {
            checkBoxButton04.setImage(UIImage(named:"checked.png"), for: UIControlState.normal)
            checkBoxButton04.isSelected = false
            pressureInput04.isUserInteractionEnabled = true
            flowRateInput04.isUserInteractionEnabled = true
            timeInput04.isUserInteractionEnabled = true
            
        } else {
            checkBoxButton04.setImage(UIImage(named:"uncheck.png"), for: UIControlState.normal)
            checkBoxButton04.isSelected = true
            pressureInput04.isUserInteractionEnabled = false
            flowRateInput04.isUserInteractionEnabled = false
            timeInput04.isUserInteractionEnabled = false
        }
    }
    
    @IBAction func checkBox5Pressed(_ sender: UIButton) {
        if checkBoxButton05.isSelected == true {
            checkBoxButton05.setImage(UIImage(named:"checked.png"), for: UIControlState.normal)
            checkBoxButton05.isSelected = false
            pressureInput05.isUserInteractionEnabled = true
            flowRateInput05.isUserInteractionEnabled = true
            timeInput05.isUserInteractionEnabled = true
            
        } else {
            checkBoxButton05.setImage(UIImage(named:"uncheck.png"), for: UIControlState.normal)
            checkBoxButton05.isSelected = true
            pressureInput05.isUserInteractionEnabled = false
            flowRateInput05.isUserInteractionEnabled = false
            timeInput05.isUserInteractionEnabled = false
        }
    }
    
    @IBAction func checkBox6Pressed(_ sender: UIButton) {
        if checkBoxButton06.isSelected == true {
            checkBoxButton06.setImage(UIImage(named:"checked.png"), for: UIControlState.normal)
            checkBoxButton06.isSelected = false
            pressureInput06.isUserInteractionEnabled = true
            flowRateInput06.isUserInteractionEnabled = true
            timeInput06.isUserInteractionEnabled = true
            
        } else {
            checkBoxButton06.setImage(UIImage(named:"uncheck.png"), for: UIControlState.normal)
            checkBoxButton06.isSelected = true
            pressureInput06.isUserInteractionEnabled = false
            flowRateInput06.isUserInteractionEnabled = false
            timeInput06.isUserInteractionEnabled = false
        }
    }
    
    @IBAction func checkBox7Pressed(_ sender: UIButton) {
        if checkBoxButton07.isSelected == true {
            checkBoxButton07.setImage(UIImage(named:"checked.png"), for: UIControlState.normal)
            checkBoxButton07.isSelected = false
            pressureInput07.isUserInteractionEnabled = true
            flowRateInput07.isUserInteractionEnabled = true
            timeInput07.isUserInteractionEnabled = true
            
        } else {
            checkBoxButton07.setImage(UIImage(named:"uncheck.png"), for: UIControlState.normal)
            checkBoxButton07.isSelected = true
            pressureInput07.isUserInteractionEnabled = false
            flowRateInput07.isUserInteractionEnabled = false
            timeInput07.isUserInteractionEnabled = false
        }
    }
    //定义好delegate后，定义该函数与下面的函数可以点击textfield其他地方隐藏键盘
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
        pressureInput01.resignFirstResponder()
        flowRateInput01.resignFirstResponder()
        timeInput01.resignFirstResponder()
        
        pressureInput02.resignFirstResponder()
        flowRateInput02.resignFirstResponder()
        timeInput02.resignFirstResponder()
        
        pressureInput03.resignFirstResponder()
        flowRateInput03.resignFirstResponder()
        timeInput03.resignFirstResponder()
        
        pressureInput04.resignFirstResponder()
        flowRateInput04.resignFirstResponder()
        timeInput04.resignFirstResponder()
        
        pressureInput05.resignFirstResponder()
        flowRateInput05.resignFirstResponder()
        timeInput05.resignFirstResponder()
        
        pressureInput06.resignFirstResponder()
        flowRateInput06.resignFirstResponder()
        timeInput06.resignFirstResponder()
        
        pressureInput07.resignFirstResponder()
        flowRateInput07.resignFirstResponder()
        timeInput07.resignFirstResponder()
        
        return true;
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

