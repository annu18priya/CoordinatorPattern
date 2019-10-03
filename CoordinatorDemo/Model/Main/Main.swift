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
    let payloadJSON: [String: Any]?
}

public struct Payload {
    public var dataPayload: [DataPayload] = [DataPayload]()
    
    //    public enum CodingKeys: String, CodingKey {
    //        case data = "data"
    //    }
    
    
}


public struct DataPayload {
    public var timeSlotDetails: [TimeSlotDetails] = [TimeSlotDetails]()
    
    //    public enum CodingKeys: String, CodingKey {
    //        case timeSlotDetails = "timeSlotDetails"
    //    }
}

public struct TimeSlotDetails {
    public let medicineName: String?
    public let status: Status = .Unknown
}

extension Main {
    public init(json: JSONDictionary) throws {
        payloadJSON = json["payload"] as? [String: Any]        
    }
}
