//
//  SIPCodecConfiguration.swift
//
//
//  Created by Zaid Rahhawi on 2/24/24.
//

public struct SIPCodecConfiguration {
    public let audioCodecs: [SIPAudioCodecConfiguration]
    public let videoCodecs: [SIPVideoCodecConfiguration]
    public let opusConfiguration: SIPOpusConfiguration
    
    public init(audioCodecs: [SIPAudioCodecConfiguration], videoCodecs: [SIPVideoCodecConfiguration], opusConfiguration: SIPOpusConfiguration) {
        self.audioCodecs = audioCodecs
        self.videoCodecs = videoCodecs
        self.opusConfiguration = opusConfiguration
    }
    
    public static let `default` = Self(audioCodecs: SIPAudioCodecConfiguration.defaultCodecs, videoCodecs: SIPVideoCodecConfiguration.defaultCodecs, opusConfiguration: .default)
}
