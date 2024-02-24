//
//  SIPOpusConfiguration.swift
//
//
//  Created by Zaid Rahhawi on 2/24/24.
//

public struct SIPOpusConfiguration {
    public enum SampeRate: UInt {
        case fullBand = 48000
        case superWideBand = 24000
        case wideBand = 16000
        case mediumBand = 12000
        case narrowBand = 8000
    }
    
    public enum FrameDuration: UInt {
        case five = 5
        case ten = 10
        case twenty = 20
        case forty = 40
        case sixty = 60
    }
    
    public let sampleRate: SampeRate
    public let frameDuration: FrameDuration
    public let complexity: UInt
    public let constantBitRate: Bool
    
    public init(sampleRate: SampeRate, frameDuration: FrameDuration, complexity: UInt, constantBitRate: Bool) {
        self.sampleRate = sampleRate
        self.frameDuration = frameDuration
        self.complexity = complexity
        self.constantBitRate = constantBitRate
    }
    
    public static let `default` = Self(sampleRate: .fullBand, frameDuration: .sixty, complexity: 5, constantBitRate: false)
}
