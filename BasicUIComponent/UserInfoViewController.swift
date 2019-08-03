//
//  UserInfoViewController.swift
//  BasicUIComponent
//
//  Created by AcePlus Admin on 8/2/19.
//  Copyright © 2019 SLH. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {
	static let identifier = "UserInfoViewController"
	
	@IBOutlet weak var lblDOB: UILabel!
	
	@IBOutlet weak var lblGender: UILabel!
	var dateOfBirth : String = ""
	var gender : Int = -1

    override func viewDidLoad() {
        super.viewDidLoad()
		lblDOB.text = dateOfBirth
		switch gender {
		case 0:
			lblGender.text = "Male"
			break
		case 1:
			lblGender.text = "Female"
			break
		default:
			break
		}
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
