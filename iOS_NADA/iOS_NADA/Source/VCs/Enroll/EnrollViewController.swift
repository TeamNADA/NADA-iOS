//
//  EnrollViewController.swift
//  iOS_NADA
//
//  Created by 민 on 2021/05/23.
//

import UIKit

class EnrollViewController: UIViewController {
    private var obyb: Bool = true
    private var mincho: Bool = true
    private var tangsuyuk: Bool = true
    private var drink: Bool = true
    
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
        self.navigationController?.navigationBar.isHidden = true
        
        obybSegmentedControl.addTarget(self, action: #selector(setObyb(_:)), for: .allEvents)
        minchoSegmentedControl.addTarget(self, action: #selector(setObyb(_:)), for: .allEvents)
        tangsuyukSegmentedControl.addTarget(self, action: #selector(setObyb(_:)), for: .allEvents)
        drinkSegmentedControl.addTarget(self, action: #selector(setObyb(_:)), for: .allEvents)
    }
    
    @objc func setObyb(_ sender: UISegmentedControl){
        print(sender.selectedSegmentIndex)
        if sender.selectedSegmentIndex == 0 {
            obyb = true
        } else {
            obyb = false
        }
    }
    @objc func setTanksuyuk(_ sender: UISegmentedControl){
        print(sender.selectedSegmentIndex)
        if sender.selectedSegmentIndex == 0 {
            mincho = true
        } else {
            mincho = false
        }
    }
    @objc func setMincho(_ sender: UISegmentedControl){
        print(sender.selectedSegmentIndex)
        if sender.selectedSegmentIndex == 0 {
            tangsuyuk = true
        } else {
            tangsuyuk = false
        }
    }
    @objc func setDrink(_ sender: UISegmentedControl){
        print(sender.selectedSegmentIndex)
        if sender.selectedSegmentIndex == 0 {
            drink = true
        } else {
            drink = false
        }
        
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    
    @IBAction func completeButton(_ sender: Any) {
        let input = EnrollReqest(id: idTextField.text!, email: emailTextField.text!, isOB: obyb, part: patrTextField.text!, age: ageTextField.text!, insta: instagramTextField.text!, school: schoolTextField.text!, name: nameTextField.text!, station: subwayTextField.text!, keyword: keywordTextField.text!, detail: Detail(favBaskin: beraTextField.text!, favFood: likefoodTextField.text!, nickname: nicknameTextField.text!, msg: messageTextField.text!), essential: Essential(mbti: mbtiTextField.text!, isMincho: mincho, isBumuk: tangsuyuk, isSoju: drink))
        
        
        UserDefaults.standard.set(idTextField.text!, forKey: "id7")
        
        
        EnrollDataManager.request(input, viewController: self)
        let nextVC = FrontViewController(nibName: "FrontViewController", bundle: nil)
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
