//
//  File.swift
//  
//
//  Created by Zaid Rahhawi on 2/24/24.
//

import Foundation

struct SIPEndpointError: LocalizedError {
    enum Code {
        case cannotCreatePJSUA
        case cannotInitPJSUA
        case cannotAddTransportConfiguration
        case cannotStartPJSUA
        case cannotCreateThread
    }
    
    let code: Code
}
