//
//  UppercaseUtility.swift
//  XPCServiceApp
//
//  Created by 이진하 on 2022/03/18.
//

import Foundation
import TextService

class UppercaseUtility {
    static func uppercase(_ string: String, withReply reply: @escaping (String) -> Void) {
        
        let connection = NSXPCConnection(serviceName: "com.boostcamp.S046.TextService")
        connection.remoteObjectInterface = NSXPCInterface(with: TextServiceProtocol.self)
        connection.resume()
        
        let service = connection.remoteObjectProxyWithErrorHandler { error in
            print("Error: \(error)")
        } as? TextServiceProtocol
        
        service?.uppercase(string, withReply: reply)
        
    }
}
