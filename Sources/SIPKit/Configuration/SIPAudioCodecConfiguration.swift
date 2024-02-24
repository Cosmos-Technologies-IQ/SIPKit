//
//  SIPAudioCodecConfiguration.swift
//
//
//  Created by Zaid Rahhawi on 2/24/24.
//

public struct SIPAudioCodecConfiguration {
    public let codec: SIPAudioCodec
    public let priority: UInt
    
    public init(codec: SIPAudioCodec, priority: UInt) {
        self.codec = codec
        self.priority = priority
    }
    
    public static let defaultCodecs: [Self] = [
        Self(codec: .g711a, priority: 209),
        Self(codec: .g722, priority: 207),
        Self(codec: .ilbc, priority: 206),
        Self(codec: .g711, priority: 210),
        Self(codec: .speex8000, priority: 0),
        Self(codec: .speex16000, priority: 0),
        Self(codec: .speex32000, priority: 0),
        Self(codec: .gsm, priority: 208),
        Self(codec: .opus, priority: 0)
    ]
}

public enum SIPAudioCodec {
    case g711a
    case g722
    case ilbc
    case g711
    case speex8000
    case speex16000
    case speex32000
    case gsm
    case opus
}
