//
//  Main.swift
//  CoordinatorDemo
//
//  Created by annpriya on 03/10/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import Foundation

public enum Status: String {
    case Scheduled
    case Taken
    case Take
    case Unknown
}


public struct Main {
    public let payloadJSON: [String: Any]?    
    public var dataPayload: [DataPayload] = [DataPayload]()
}

public struct DataPayload {
    public var timeSlot: Int?
    public var timeSlotDetails: [TimeSlotDetails] = [TimeSlotDetails]()
}

public struct TimeSlotDetails {
    public let medicineName: String?
    public var status: Status = .Unknown
}

extension Main {
    public init(json: JSONDictionary) throws {
        payloadJSON = json["payload"] as? [String: Any]
        let dataJSON = payloadJSON?["data"] as? [JSONDictionary]
        
        try dataJSON?.forEach { data in
           let payLoad = try DataPayload(json: data)
           dataPayload.append(payLoad)
        }
    }
}

extension DataPayload {
    public init(json: JSONDictionary) throws {
        timeSlot = json["timeSlot"] as? Int
        let timeSlotJSON = json["timeSlotDetails"] as? [JSONDictionary]
        try timeSlotJSON?.forEach { timeSlot in
            let timeSlotDetail = try TimeSlotDetails(json: timeSlot)
            timeSlotDetails.append(timeSlotDetail)
        }
//        timeSlotDetails =  timeSlotJSON.map { try TimeSlotDetails(json: $0) }
    }
}

extension TimeSlotDetails {
    public init(json: JSONDictionary) throws {
        medicineName = json["medicineName"] as? String
        status = Status(rawValue: (json["status"] as? String)!) ?? Status(rawValue: "")!
    }
}
