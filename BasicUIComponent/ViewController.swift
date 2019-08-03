//
//  ViewController.swift
//  BasicUIComponent
//
//  Created by AcePlus Admin on 8/2/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var tfDOB: UITextField!
	var selectedGender : Int = -1
	private var datePicker : UIDatePicker?

	override func viewDidLoad() {
		super.viewDidLoad()
		datePicker = UIDatePicker()
		datePicker?.datePickerMode = .date
		datePicker?.addTarget(self, action: #selector(selectDate(datePicker:)), for: .valueChanged)
		tfDOB.inputView = datePicker
		
	}

	@IBAction func btnRegisterAction(_ sender: Any) {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let vc = storyboard.instantiateViewController(withIdentifier: UserInfoViewController.identifier) as! UserInfoViewController
		vc.dateOfBirth = tfDOB.text ?? ""
		vc.gender = selectedGender
		self.present(vc, animated: true, completion: nil)
		
	}
	
	@IBAction func scGenderAction(_ sender: UISegmentedControl) {
		selectedGender = sender.selectedSegmentIndex
	}
	
	@objc func selectDate(datePicker:UIDatePicker) {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "yyyy-MM-dd"
		tfDOB.text = dateFormatter.string(from: datePicker.date)
		view.endEditing(true)
		
	}
}

