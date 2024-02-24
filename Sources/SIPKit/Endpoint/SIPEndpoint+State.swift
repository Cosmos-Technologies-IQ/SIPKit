//
//  SIPEndpoint+State.swift
//
//
//  Created by Zaid Rahhawi on 2/24/24.
//

import Foundation

extension SIPEndpoint {
    enum State: Int {
        case stopped, starting, started, closing
    }
}
