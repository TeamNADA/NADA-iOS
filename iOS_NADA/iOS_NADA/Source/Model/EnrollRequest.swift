//
//  File.swift
//  iOS_NADA
//
//  Created by kimhyungyu on 2021/05/23.
//


import Foundation

// MARK: - Welcome
struct EnrollReqest: Codable {
    let id, email: String
    let isOB: Bool
    let part, age, insta, school: String
    let name, station, keyword: String
    let detail: Detail
    let essential: Essential
}

// MARK: - Detail
struct Detail: Codable {
    let favBaskin, favFood, nickname, msg: String
}

// MARK: - Essential
struct Essential: Codable {
    let mbti: String
    let isMincho, isBumuk, isSoju: Bool
}
