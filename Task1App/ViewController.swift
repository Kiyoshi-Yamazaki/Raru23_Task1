//
//  ViewController.swift
//  Task1App
//
//  Created by 山崎喜代志 on 2021/03/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var textField1: UITextField!
    @IBOutlet weak private var textField2: UITextField!
    @IBOutlet weak private var textField3: UITextField!
    @IBOutlet weak private var textField4: UITextField!
    @IBOutlet weak private var textField5: UITextField!

    @IBOutlet weak private var textlabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()

        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
        textField3.keyboardType = .numberPad
        textField4.keyboardType = .numberPad
        textField5.keyboardType = .numberPad
    }

    func changeStringToInt(string: String) -> Int {
        Int(string) ?? 0
    }

    func culculate(num1: Int, num2: Int, num3: Int, num4: Int, num5: Int) -> Int {
        // 合計値を算出する
        num1 + num2 + num3 + num4 + num5
    }

    @IBAction private func calculationButton(_ sender: Any) {
        // textFieldに入力した値を合計したtotalValueをLabelに表示する
        let totalValue = culculate(
            num1: changeStringToInt(string: textField1.text ?? ""),
            num2: changeStringToInt(string: textField2.text ?? ""),
            num3: changeStringToInt(string: textField3.text ?? ""),
            num4: changeStringToInt(string: textField4.text ?? ""),
            num5: changeStringToInt(string: textField5.text ?? "")
        )

        textlabel?.text = String(totalValue)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
