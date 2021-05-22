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
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var matchLabel: UILabel!
    @IBOutlet weak var loadBtn: UIButton!
    
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var inputID: UITextField!

    @IBOutlet weak var goMatchBtn: UIButton!
    
    var matchList : MatchResponse?
    var manage = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alertView.layer.cornerRadius = 20
        percentLabel.isHidden = true
        matchLabel.isHidden = true
        goMatchBtn.backgroundColor = .nadaBrandcolor
        
        MatchDataManager.match(MatchRequest(myID: "nada", friendID: "yaewon"), viewController: self)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goMatch(_ sender: Any) {
//        MatchDataManager.match(MatchRequest(myID: "jjieun", friendID: "yaewon"), viewController: self)
        if manage == true {
            let id = inputID.text
            //통신 참이면
            percentLabel.isHidden = false
            matchLabel.isHidden = false
            
            subtitleLabel.text = "\(matchList!.data.myID) 와 \(matchList!.data.friendID) 의 궁합!"
            inputID.isHidden = true
            matchLabel.text = matchList?.data.matchMsg
            
            percentLabel.text = String(matchList!.data.percent)
            
            
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
extension AlertViewController{
    func didSuccess(_ result: MatchResponse) {
        matchList = result
        manage = true
        print("끝!!")
    }
}

