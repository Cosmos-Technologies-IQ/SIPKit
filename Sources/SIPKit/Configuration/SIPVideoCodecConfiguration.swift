//
//  SIPVideoCodecConfiguration.swift
//
//
//  Created by Zaid Rahhawi on 2/24/24.
//

import Foundation

public struct SIPVideoCodecConfiguration {
    public let codec: SIPVideoCodec
    public let priority: UInt
    
    public init(codec: SIPVideoCodec, priority: UInt) {
        self.codec = codec
        self.priority = priority
    }
    
    public static let defaultCodecs: [Self] = [
        Self(codec: .h264, priority: 210)
    ]
}

public enum SIPVideoCodec {
    case h264
}
