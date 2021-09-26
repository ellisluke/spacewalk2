//
//  Request.swift
//  Spacewalk2
//
//  Created by Luke Ellis on 9/26/21.
//

import Foundation
import SwiftUI
import SwiftyJSON
import Alamofire


class Requests {

    var server : String = "http://10.49.2.23:5000/"

    //Endpoint is a string containing the backend endpoint followed by query paramters
    //example: "body?name=Earth" or "signUp"
    func get(endpoint: String, completion: @escaping (JSON) -> Void){
        let url = URL(string: server + endpoint)!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in

            if let error = error {
            // completion(String(error))
                print(error)
            } else if let data = data {
                do {
                    let json = try JSON(data: data)
                    completion(json)
                } catch {
                    print("Error \(error)")
                }
            } else {
                print("-1")
            }
        }
        task.resume()
    }
    
    
//    var components = URLComponents(url: url, resolvingAgainstBaseURL: false)!
//
//    components.queryItems = [
//        URLQueryItem(name: "key1", value: "NeedToEscape=And&"),
//        URLQueryItem(name: "key2", value: "vålüé")
//    ]

//    let query = components.url!.query
    //Endpoint is a string containing the backend endpoint followed by query paramters
    //example: "body?name=Earth" or "signUp"
    func post(endpoint: String, body: [String:Any], completion: @escaping (JSON) -> Void){
        print("entered")
        print(body)
        AF.request(server + endpoint, method: .post, parameters:body, encoding: JSONEncoding.default)
            .responseJSON {
                
                response in
                            debugPrint(response)

                            if let json = response.data {
                                do{
                                let data = try JSON(data: json)
                                    completion(data)}
                                catch {
                                    print("Error \(error)")
                                    }
                                
                            }
                
            }
        
//                let url = URL(string: server + endpoint)!
//
//                var request = URLRequest(url: url)
//                request.httpMethod = "POST"
//                print("arrived here")
//                request.httpBody = Data(body.utf8)
//                print("arrived here as well")
//                let session = URLSession.shared
//                let task = session.dataTask(with: request) { (data, response, error) in
//
//                    if let error = error {
//                    // completion(String(error))
//                        print(error)
//                    } else if let data = data {
//                        do {
//                            let json = try JSON(data: data)
//                            completion(json)
//                        } catch {
//                            print("Error \(error)")
//                        }
//                    } else {
//                        print("-1")
//                    }
//                }
//                task.resume()
//            }
        
        
    }

}
