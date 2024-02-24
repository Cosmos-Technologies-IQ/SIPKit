//
//  SIPIPChangeConfiguration.swift
//
//
//  Created by Zaid Rahhawi on 2/24/24.
//

public struct SIPIPChangeConfiguration {
    public let callsConfiguration: SIPCallIPChangeConfiguration
    public let shutdownTransport: Bool
    public let hangupAllCalls: Bool
    public let reinviteFlags: SIPCallFlags
    
    public init(callsConfiguration: SIPCallIPChangeConfiguration, shutdownTransport: Bool, hangupAllCalls: Bool, reinviteFlags: SIPCallFlags) {
        self.callsConfiguration = callsConfiguration
        self.shutdownTransport = shutdownTransport
        self.hangupAllCalls = hangupAllCalls
        self.reinviteFlags = reinviteFlags
    }
    
    static let `default` = Self(callsConfiguration: .default, shutdownTransport: true, hangupAllCalls: false, reinviteFlags: .default)
}

public enum SIPCallIPChangeConfiguration {
    /// Use the IP change from PJSIP
    case `default`
    
    /// Reinvite the calls self instead of pjsip.
    case reinvite
    
    /// Do an UPDATE sip message instead of a INVITE that is done by pjsip.
    case update
}

public struct SIPCallFlags: OptionSet {
    public var rawValue: UInt
    
    public init(rawValue: UInt) {
        self.rawValue = rawValue
    }
    
    public static let unhold = Self(rawValue: 1 << 0)
    public static let updateContact = Self(rawValue: 1 << 1)
    public static let includeDisabledMedia = Self(rawValue: 1 << 2)
    public static let noSdpOffer = Self(rawValue: 1 << 3)
    public static let reinitMedia = Self(rawValue: 1 << 4)
    public static let updateVia = Self(rawValue: 1 << 5)
    public static let updateTarget = Self(rawValue: 1 << 6)

    public static let all: Self = [.unhold, .updateContact, .includeDisabledMedia, .noSdpOffer, .reinitMedia, .updateVia, .updateTarget]
    public static let `default`: Self = [.reinitMedia, .updateContact, .updateVia]
}
