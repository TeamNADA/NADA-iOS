//
//  FrontDataManager.swift
//  iOS_NADA
//
//  Created by Yi Joon Choi on 2021/05/23.
//

import Foundation
import Alamofire

class FrontDataManager {
    static var HEADERS2 : HTTPHeaders = ["Content-Type" : "application/json"]
    static func response(_ parameters: FrontRequest, viewController: FrontViewController) {
        AF.request("http://18.116.201.53:5000/api/loadInfo", method: .post, parameters: parameters, encoder: JSONParameterEncoder(), headers: HEADERS2)
            .validate()
            .responseDecodable(of: FrontResponse.self) { response in
                switch response.result {
                case .success(let response):
                    viewController.didSuccess(response)
                    print("success front!")
                    
                case .failure(let error):
                    print(error.localizedDescription)
                    print(response.error)
                    print("서버와의 연결이 원활하지 않습니다")
                }
            }
    }
}
