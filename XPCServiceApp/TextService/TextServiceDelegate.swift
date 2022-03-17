//
//  TextService.h
//  TextService
//
//  Created by 이진하 on 2022/03/15.
//

import Foundation

class TextServiceDelegate: NSObject, NSXPCListenerDelegate {
    func listener(_ listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool {
        
        newConnection.exportedInterface = NSXPCInterface(with: TextServiceProtocol.self)
        newConnection.exportedObject = TextService()
        newConnection.resume()
        
        return true
    }
}
