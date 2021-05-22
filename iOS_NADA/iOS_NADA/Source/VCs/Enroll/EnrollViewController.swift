//
//  EnrollViewController.swift
//  iOS_NADA
//
//  Created by 민 on 2021/05/23.
//

import UIKit

class EnrollViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var keywordTextField: UITextField!
    @IBOutlet weak var obybSegmentedControl: UISegmentedControl!
    @IBOutlet weak var patrTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var instagramTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var subwayTextField: UITextField!
    @IBOutlet weak var mbtiTextField: UITextField!
    @IBOutlet weak var minchoSegmentedControl: UISegmentedControl!
    @IBOutlet weak var tangsuyukSegmentedControl: UISegmentedControl!
    @IBOutlet weak var drinkSegmentedControl: UISegmentedControl!
    @IBOutlet weak var beraTextField: UITextField!
    @IBOutlet weak var likefoodTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeButton(_ sender: Any) {
        let nextVC = FrontViewController(nibName: "FrontViewController", bundle: nil)
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
