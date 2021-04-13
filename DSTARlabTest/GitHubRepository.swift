//
//  GitHubRepository.swift
//  DSTARlabTest
//
//  Created by mozeX on 12.04.2021.
//

import Foundation

struct SearchRepositoryResponse: Decodable {
    let items: [RepositoryResponse]
}

struct RepositoryResponse: Decodable {
    
    var fullName: String
    var description: String?
    var language: String?
    var starCount: Int
    var updatedAt: Date
    var url: URL
    
    enum CodingKeys: String, CodingKey {
        case fullName = "full_name"
        case description
        case language
        case starCount = "stargazers_count"
        case updatedAt = "updated_at"
        case url = "html_url"
    }
}
