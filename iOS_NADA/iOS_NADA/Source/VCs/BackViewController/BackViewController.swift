//
//  BackViewController.swift
//  iOS_NADA
//
//  Created by kimhyungyu on 2021/05/23.
//

import UIKit

class BackViewController: UIViewController {
    //MARK: - Properties
    private var enrollList = EnrollReqest(id: "1", email: "email", isOB: true, part: "28기 YB iOS", age: "25", insta: "@insta_1", school: "seouluniversity", name: "hyungyu", station: "공릉역", keyword: "#안녕하세요", detail: Detail(favBaskin: "민초", favFood: "피자", nickname: "철수", msg: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."), essential: Essential(mbti: "esfj", isMincho: true, isBumuk: false, isSoju: false))
    

    //MARK: - @IBOutlet Properties
    @IBOutlet weak var touchBackBtn: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var keywordLabel: UILabel!
    @IBOutlet weak var mbtiLabel: UILabel!
    @IBOutlet weak var mbtiAnswerLabel: UILabel!
    @IBOutlet weak var isBumukLabel: UILabel!
    @IBOutlet weak var isBumukAnswerLabel: UILabel!
    @IBOutlet weak var favBeskinLabel: UILabel!
    @IBOutlet weak var favBeskinAnswerLabel: UILabel!
    @IBOutlet weak var favFoodLabel: UILabel!
    @IBOutlet weak var favFoodAnswerLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var nicknameAnswerLabel: UILabel!
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var msgAnswerLabel: UILabel!
    @IBOutlet weak var isMinchoLabel: UILabel!
    @IBOutlet weak var isMinchoAnswerLabel: UILabel!
    @IBOutlet weak var isSojuLabel: UILabel!
    @IBOutlet weak var isSojuAnswerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func backToFront(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func touchAlertBtn(_ sender: Any) {
        let nextVC = AlertViewController()
        nextVC.modalPresentationStyle = .overCurrentContext
        present(nextVC, animated: true, completion: nil)
    }
    

}
extension BackViewController {
    private func setUI(){
//        enrollList =
//            EnrollReqest(id: "1", email: "email", isOB: true, part: "28기 YB iOS", age: "25", insta: "@insta_1", school: "seouluniversity", name: "hyungyu", station: "공릉역", keyword: "#안녕하세요", detail: Detail(favBaskin: "민초", favFood: "피자", nickname: "철수", msg: "감사합니다"), essential: Essential(mbti: "esfj", isMincho: true, isBumuk: false, isSoju: false))
        
        nameLabel.text = enrollList.name
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        keywordLabel.text = enrollList.keyword
        keywordLabel.font = UIFont.systemFont(ofSize: 16)
        
        mbtiLabel.text = "👀 MBTI"
        mbtiAnswerLabel.text = enrollList.essential.mbti
        
        isBumukLabel.text = "👇 부먹/찍먹"
        if enrollList.essential.isBumuk == true {
            isBumukAnswerLabel.text = "부먹!"
        } else {
            isBumukAnswerLabel.text = "찍먹!"
        }
        
        favBeskinAnswerLabel.text = "🍨 베라 최애 메뉴"
        favBeskinAnswerLabel.text = enrollList.detail.favBaskin
        
        favFoodLabel.text = "🍽 최애 음식"
        favFoodAnswerLabel.text = enrollList.detail.favFood
        
        nicknameLabel.text = "🍽 별명"
        nicknameAnswerLabel.text = enrollList.detail.nickname
        
        msgLabel.text = "🍽 하고싶은말"
        msgAnswerLabel.text = enrollList.detail.msg
        
        isMinchoLabel.text = "🍵 민트초코"
        if enrollList.essential.isMincho == true {
            isMinchoAnswerLabel.text = "민초!"
        } else {
            isMinchoAnswerLabel.text = "반민초!"
        }
        
        isSojuLabel.text = "🥃 소주/맥주"
        if enrollList.essential.isSoju == true {
            isSojuAnswerLabel.text = "소주"
        } else {
            isSojuAnswerLabel.text = "맥주"
        }
    }
}
