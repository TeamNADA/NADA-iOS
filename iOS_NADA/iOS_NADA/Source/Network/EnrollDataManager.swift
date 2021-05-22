//
//  EnrollDataManager.swift
//  iOS_NADA
//
//  Created by Yi Joon Choi on 2021/05/23.
//

import Foundation
import Alamofire

class EnrollDataManager {
    static var HEADERS : HTTPHeaders = ["Content-Type" : "application/json"]
    static func request(_ parameters: EnrollReqest, viewController: EnrollViewController) {
        AF.request("http://18.116.201.53:5000/api/register", method: .post, parameters: parameters, encoder: JSONParameterEncoder(), headers: HEADERS)
            .validate()
            .responseDecodable(of: EnrollResponse.self) { response in
                switch response.result {
                case .success(let response):
                    print("success!")
                case .failure(let error):
                    print(error.localizedDescription)
                    print("서버와의 연결이 원활하지 않습니다")
                }
            }
    }
}
