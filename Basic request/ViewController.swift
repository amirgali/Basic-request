//
//  ViewController.swift
//  Basic request
//
//  Created by Амиргали Туралинов on 05.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeRequest()
    }


    private func makeRequest() {
        var request = URLRequest(url: URL(string: "https://v2.jokeapi.dev/joke/Any")!)
        request.allHTTPHeaderFields = ["authToken": "nil"]
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) {data,response,error in
            print(String(decoding: data!, as: UTF8.self))
            print(error)
        }
        task.resume()
    }
}

