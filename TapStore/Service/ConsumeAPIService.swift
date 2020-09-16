//
//  ConsumeAPIService.swift
//  TapStore
//
//  Created by trungnghia on 6/23/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import Foundation

struct ConsumeAPIService {
    
    static let shared = ConsumeAPIService()
    
    private init() {}
    
    func getAllAppSection() -> [Section] {
        var sections = [Section]()
        if let url = Bundle.main.url(forResource: "appstore", withExtension: "json"),
            let data = try? Data(contentsOf: url) {
            let jsonResults = try! JSONDecoder().decode([Section].self, from: data)
            sections = jsonResults
            return sections
        }
        
        return sections
    }
    
}
