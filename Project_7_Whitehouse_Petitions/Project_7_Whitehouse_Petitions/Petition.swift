//
//  Petition.swift
//  Project_7_Whitehouse_Petitions
//
//  Created by Станислав on 20.05.2022.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
