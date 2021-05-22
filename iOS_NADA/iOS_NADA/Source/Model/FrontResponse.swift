//
//  FrontResponse.swift
//  iOS_NADA
//
//  Created by Yi Joon Choi on 2021/05/23.
//

import Foundation
// MARK: - FrontResponse
struct FrontResponse: Codable {
    let success: Bool
    let msg: String
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable { 
    let detail: Details
    let essential: Essentials
    let id, dataID, email: String
    let isOB: Bool
    let part, age, insta, school: String
    let name, station, keyword: String
    let v: Int

    enum CodingKeys: String, CodingKey {
        case detail, essential
        case id = "_id"
        case dataID = "id"
        case email, isOB, part, age, insta, school, name, station, keyword
        case v = "__v"
    }
}

// MARK: - Detail
struct Details: Codable {
    let favBaskin, favFood, nickname, msg: String
}

// MARK: - Essential
struct Essentials: Codable {
    let mbti: String
    let isMincho, isBumuk, isSoju: Bool
}
