//
//  FrontViewController.swift
//  iOS_NADA
//
//  Created by kimhyungyu on 2021/05/23.
//

import UIKit

class FrontViewController: UIViewController {

    //MARK: - Properties
    
    
    //MARK: - @IBOutlet Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var keywordLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var subwayLabel: UILabel!
    @IBOutlet weak var backUiview: UIView!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        setUI()
    }

    
    @IBAction func goToBack(_ sender: Any) {
        print("hi")
//        let nextVC = BackViewController()
//        nextVC.modalPresentationStyle = .overFullScreen
//        self.present(nextVC, animated: true, completion: nil)
        self.navigationController?.pushViewController(BackViewController(), animated: true)
    }
    

}

extension FrontViewController {
    private func setUI() {
        backUiview.layer.cornerRadius = 20
        
        nameLabel.text = "이름"
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        keywordLabel.text = "키워드"
        keywordLabel.font = UIFont.systemFont(ofSize: 14)
        gradeLabel.text = "28기 YB iOS"
        instagramLabel.text = "@인스타"
        universityLabel.text = "서울대학교"
        subwayLabel.text = "남구로역"
    }
}
