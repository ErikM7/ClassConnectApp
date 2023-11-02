//
//  API request.swift
//  ClassConnectApp
//
//  Created by Erik Mejia on 10/31/23.
//

import Foundation
func joinClass() {
    let apiUrl = "http://your-api-url-here/api/joinclass"
    
    guard let url = URL(string: apiUrl) else {
        print("Invalid URL")
        return
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let classCode = "your_class_code"
    let studentName = "your_student_name"
    let field1 = "field1_value"
    let field2 = "field2_value"
    let field3 = "field3_value"
    let field4 = "field4_value"
    let field5 = "field5_value"
    let field6 = "field6_value"
    let field7 = "field7_value"
    let groupNumber = 123 // Your group number
    
    let parameters: [String: Any] = [
        "class_code": classCode,
        "student_name": studentName,
        "field1": field1,
        "field2": field2,
        "field3": field3,
        "field4": field4,
        "field5": field5,
        "field6": field6,
        "field7": field7,
        "group_number": groupNumber
    ]
    
    do {
        request.httpBody = try JSONSerialization.data(withJSONObject: parameters)
    } catch {
        print("Error serializing JSON: \(error)")
        return
    }
    
    let session = URLSession.shared
    
    let task = session.dataTask(with: request) { (data, response, error) in
        if let error = error {
            print("Error: \(error)")
        } else if let data = data {
            if let httpResponse = response as? HTTPURLResponse {
                if 200...299 ~= httpResponse.statusCode {
                    print("Success: \(httpResponse.statusCode)")
                } else {
                    print("Server error: \(httpResponse.statusCode)")
                }
            }
            if let responseString = String(data: data, encoding: .utf8) {
                print("Response: \(responseString)")
            }
        }
    }
    
    task.resume()
}
