//
//  File.swift
//  
//
//  Created by Zaid Rahhawi on 2/24/24.
//

import Foundation
import C

public struct SIPEndpointConfiguration {
    public let maximumNumberOfCalls: UInt
    public let clockRate: UInt
    public let soundClockRate: UInt
    public let disableVideoSupport: Bool
    public let unregisterAfterCall: Bool
    
    public let transportConfigurations: [SIPTransportConfiguration]
    public let ipChangeConfiguration: SIPIPChangeConfiguration = .default
    public let stunConfiguration: SIPStunConfiguration = .default
    public let codecConfiguration: SIPCodecConfiguration = .default
    
    public init(maximumNumberOfCalls: UInt, clockRate: UInt, soundClockRate: UInt, disableVideoSupport: Bool, unregisterAfterCall: Bool, transportConfigurations: [SIPTransportConfiguration]) {
        self.maximumNumberOfCalls = maximumNumberOfCalls
        self.clockRate = clockRate
        self.soundClockRate = soundClockRate
        self.disableVideoSupport = disableVideoSupport
        self.unregisterAfterCall = unregisterAfterCall
        self.transportConfigurations = transportConfigurations
    }
}
