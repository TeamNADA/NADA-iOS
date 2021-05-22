//
//  FrontViewController.swift
//  iOS_NADA
//
//  Created by kimhyungyu on 2021/05/23.
//

import UIKit

class FrontViewController: UIViewController {

    //MARK: - Properties
    private var enrollList = EnrollReqest(id: "1", email: "1234@email", isOB: true, part: "28기 YB iOS", age: "25", insta: "@insta_1", school: "seouluniversity", name: "hyungyu", station: "공릉역", keyword: "#안녕하세요", detail: Detail(favBaskin: "민초", favFood: "피자", nickname: "철수", msg: "Lorem"), essential: Essential(mbti: "aaaa", isMincho: true, isBumuk: false, isSoju: false))
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    //MARK: - @IBOutlet Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var keywordLabel: UILabel!
    @IBOutlet weak var gradeQlabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var instaQlabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var universityQlabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var emailQlabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var subwayQlabel: UILabel!
    @IBOutlet weak var subwayLabel: UILabel!
    @IBOutlet weak var backUiview: UIView!
    @IBOutlet weak var shadowView: UIView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
           let id =  UserDefaults.standard.string(forKey: "id2")

            FrontDataManager.response(FrontRequest(id: id), viewController: self)
            self.navigationController?.navigationBar.isHidden = true
        }

    
    @IBAction func goToBack(_ sender: Any) {
//        BackViewController().frontList2 = frontList
        self.navigationController?.pushViewController(BackViewController(), animated: true)
    }
    

}

extension FrontViewController {
    func didSuccess(_ result: FrontResponse) {
        appDelegate.frontList = result
        print("끝!!")
        setUI()
    }
    private func setUI() {
        shadowView.layer.shadowOpacity = 0.1
        shadowView.layer.shadowRadius = 5
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 4)
        shadowView.layer.shadowColor =  UIColor.black.cgColor
        shadowView.layer.masksToBounds = false
        
//        gradeQlabel.text = "활동 기수"
//        gradeQlabel.font = UIFont.systemFont(ofSize: 16)
//        instaQlabel.text = "인스타그램 아이디"
//        instaQlabel.font = UIFont.systemFont(ofSize: 16)
//        universityQlabel.text = "학교"
//        universityQlabel.font = UIFont.systemFont(ofSize: 16)
//        emailQlabel.text = "이메일"
//        emailQlabel.font = UIFont.systemFont(ofSize: 16)
//        subwayQlabel.text = "지하철역"
//        subwayQlabel.font = UIFont.systemFont(ofSize: 16)
//
//        nameLabel.text = enrollList.name
//        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
//        keywordLabel.text = enrollList.keyword
//        keywordLabel.font = UIFont.systemFont(ofSize: 16)
//        gradeLabel.text = enrollList.part
//        gradeLabel.font = UIFont.systemFont(ofSize: 20)
//        instagramLabel.text = enrollList.insta
//        instagramLabel.font = UIFont.systemFont(ofSize: 20)
//        universityLabel.text = enrollList.school
//        universityLabel.font = UIFont.systemFont(ofSize: 20)
//        emailLabel.text = enrollList.email
//        emailLabel.font = UIFont.systemFont(ofSize: 20)
//        subwayLabel.text = enrollList.station
//        subwayLabel.font = UIFont.systemFont(ofSize: 20)
        
        gradeQlabel.text = "활동 기수"
        gradeQlabel.font = UIFont.systemFont(ofSize: 16)
        instaQlabel.text = "인스타그램 아이디"
        instaQlabel.font = UIFont.systemFont(ofSize: 16)
        universityQlabel.text = "학교"
        universityQlabel.font = UIFont.systemFont(ofSize: 16)
        emailQlabel.text = "이메일"
        emailQlabel.font = UIFont.systemFont(ofSize: 16)
        subwayQlabel.text = "지하철역"
        subwayQlabel.font = UIFont.systemFont(ofSize: 16)
        
        nameLabel.text = appDelegate.frontList!.data.name
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        keywordLabel.text = appDelegate.frontList!.data.keyword
        keywordLabel.font = UIFont.systemFont(ofSize: 16)
        gradeLabel.text = appDelegate.frontList!.data.part
        gradeLabel.font = UIFont.systemFont(ofSize: 20)
        instagramLabel.text = appDelegate.frontList!.data.insta
        instagramLabel.font = UIFont.systemFont(ofSize: 20)
        universityLabel.text = appDelegate.frontList!.data.school
        universityLabel.font = UIFont.systemFont(ofSize: 20)
        emailLabel.text = appDelegate.frontList!.data.email
        emailLabel.font = UIFont.systemFont(ofSize: 20)
        subwayLabel.text = appDelegate.frontList!.data.station
        subwayLabel.font = UIFont.systemFont(ofSize: 20)
    }
}
