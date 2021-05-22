//
//  AlertViewController.swift
//  iOS_NADA
//
//  Created by Yi Joon Choi on 2021/05/23.
//

import UIKit

class AlertViewController: UIViewController {

    private var load :Bool = false
    
    @IBOutlet weak var percentLabel: UILabel!
    
    @IBOutlet weak var matchLabel: UILabel!
    @IBOutlet weak var loadBtn: UIButton!
    
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var inputID: UITextField!

    @IBOutlet weak var goMatchBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alertView.layer.cornerRadius = 20
        percentLabel.isHidden = true
        matchLabel.isHidden = true
        goMatchBtn.backgroundColor = .nadaBrandcolor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goMatch(_ sender: Any) {
        if load == false {
            let id = inputID.text
            //통신 참이면
            percentLabel.isHidden = false
            matchLabel.isHidden = false
            inputID.isHidden = true
            matchLabel.text = "성공!"
            
            percentLabel.text = "90"
            
            
            loadBtn.setTitle("확인", for: .normal)
            load = true
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    @IBAction func dismissAlert(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
