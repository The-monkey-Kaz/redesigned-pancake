//
//  NetworkManager.swift
//  H4X0R
//
//  Created by myruei on 2023/03/12.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData () {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoader = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoader.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
