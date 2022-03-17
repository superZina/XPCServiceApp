//
//  TextServiceProtocol.h
//  TextService
//
//  Created by 이진하 on 2022/03/15.
//

import Foundation

@objc public protocol TextServiceProtocol {
    func uppercase(_ string: String, withReply reply: @escaping (String) -> Void)
}
