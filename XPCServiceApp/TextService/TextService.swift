//
//  TextService.m
//  TextService
//
//  Created by 이진하 on 2022/03/15.
//

import Foundation

class TextService: NSObject, TextServiceProtocol {
    func uppercase(_ string: String, withReply reply: @escaping (String) -> Void) {
        reply(string.uppercased())
    }
}
