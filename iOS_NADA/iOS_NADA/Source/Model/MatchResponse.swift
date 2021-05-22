//
//  MatchResponse.swift
//  iOS_NADA
//
//  Created by kimhyungyu on 2021/05/23.
//

import Foundation

// MARK: - MatchResponse
struct MatchResponse: Codable {
    let success: Bool
    let message: String
    let data: DataClass2
}

// MARK: - DataClass
struct DataClass2: Codable {
    let myID, friendID: String
    let percent: Int
    let matchMsg: String
}
