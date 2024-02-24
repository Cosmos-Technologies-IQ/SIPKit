//
//  SIPStunConfiguration.swift
//
//
//  Created by Zaid Rahhawi on 2/24/24.
//

public struct SIPStunConfiguration {
    public let servers: [String]
    public var numberOfServers: Int { servers.count }
    
    static let `default` = Self(servers: [])
}
