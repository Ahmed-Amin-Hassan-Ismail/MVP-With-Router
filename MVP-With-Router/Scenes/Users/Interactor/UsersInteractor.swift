//
//  UsersInteractor.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/27/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation


import Foundation
import Alamofire

class UsersInteractor {
    
    func fetchData(completion: @escaping (Result<[UsersModel]?, NSError>) -> Void) {
        
        let url = "https://jsonplaceholder.typicode.com/users"
        AF.request(url, method: .get, parameters: nil, headers: nil).responseJSON { (response) in
            
            // Check status Code
            guard let statusCode = response.response?.statusCode else { return }
            if statusCode == 200 {
                // Check Json Response
                guard let jsonResponse = try? response.result.get() else { return }
                // Check Transfering Response into Data
                guard let jsonData = try?  JSONSerialization.data(withJSONObject: jsonResponse, options: []) else { return }
                // Check Decoding Json Data
                guard let jsonObject = try? JSONDecoder().decode([UsersModel].self, from: jsonData) else { return }
                completion(.success(jsonObject))
            } else {
                completion(.failure(NSError()))
            }
        }
        
    }
}
