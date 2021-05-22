//
//  MatchDataManager.swift
//  iOS_NADA
//
//  Created by kimhyungyu on 2021/05/23.
//

import Foundation
import Alamofire

class MatchDataManager {
    static var HEADERS3 : HTTPHeaders = ["Content-Type" : "application/json"]
    static func match(_ parameters: MatchRequest, viewController: AlertViewController) {
        AF.request("http://18.116.201.53:5000/api/matching", method: .post, parameters: parameters, encoder: JSONParameterEncoder(), headers: HEADERS3)
            .validate()
            .responseDecodable(of: MatchResponse.self) { response in
                print("yayayaya")
                switch response.result {
                case .success(let response):
                    viewController.didSuccess(response)
                    print("success match!")
                    
                case .failure(let error):
                    print(error.localizedDescription)
                    print(response.error)
                    print("서버와의 연결이 원활하지 않습니다")
                }
            }
    }
}
