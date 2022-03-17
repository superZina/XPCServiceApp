//
//  main.m
//  TextService
//
//  Created by 이진하 on 2022/03/15.
//

import Foundation

let delegate = TextServiceDelegate()
let listener = NSXPCListener.service()

listener.delegate = delegate
listener.resume()
