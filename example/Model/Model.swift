//
//  Model.swift
//  example
//
//  Created by Goutham Boya on 30/09/22.
//

import Foundation



// MARK: - Instruction
struct Instruction: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case title = "title"
        case id = "id"
        case body = "body"
    }
}
