//
//  SIPTransportConfiguration.swift
//
//
//  Created by Zaid Rahhawi on 2/24/24.
//

import C

public struct SIPTransportConfiguration {
    public enum TransportType: Int {
        case udp = 1
        case udp6 = 129
        case tcp = 2
        case tcp6 = 130
        case tls = 3
        case tls6 = 131
    }
    
    public let transportType: TransportType
    public let port: Int
    public let portRange: Int
    
    public init(transportType: TransportType, port: Int, portRange: Int) {
        self.transportType = transportType
        self.port = port
        self.portRange = portRange
    }
    
    public init(transportType: TransportType) {
        self.init(transportType: transportType, port: 5060, portRange: 0)
    }
}
