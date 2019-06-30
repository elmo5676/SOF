//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateSOFStatusInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, u2Status: String? = nil, t38Status: String? = nil, u2Restrictions: String? = nil, t38Restrictions: String? = nil, u2Alternates: String? = nil, t38Alternates: String? = nil, navaids: String? = nil, approachLights: String? = nil, localAirfields: String? = nil, birdStatus: String? = nil, fits: String? = nil, activeRunway: String? = nil, runwayConditions: String? = nil, date: String? = nil, time: String? = nil, sofOnDuty: String? = nil) {
    graphQLMap = ["id": id, "u2Status": u2Status, "t38Status": t38Status, "u2Restrictions": u2Restrictions, "t38Restrictions": t38Restrictions, "u2Alternates": u2Alternates, "t38Alternates": t38Alternates, "navaids": navaids, "approachLights": approachLights, "localAirfields": localAirfields, "birdStatus": birdStatus, "fits": fits, "activeRunway": activeRunway, "runwayConditions": runwayConditions, "date": date, "time": time, "sofOnDuty": sofOnDuty]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var u2Status: String? {
    get {
      return graphQLMap["u2Status"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "u2Status")
    }
  }

  public var t38Status: String? {
    get {
      return graphQLMap["t38Status"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "t38Status")
    }
  }

  public var u2Restrictions: String? {
    get {
      return graphQLMap["u2Restrictions"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "u2Restrictions")
    }
  }

  public var t38Restrictions: String? {
    get {
      return graphQLMap["t38Restrictions"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "t38Restrictions")
    }
  }

  public var u2Alternates: String? {
    get {
      return graphQLMap["u2Alternates"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "u2Alternates")
    }
  }

  public var t38Alternates: String? {
    get {
      return graphQLMap["t38Alternates"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "t38Alternates")
    }
  }

  public var navaids: String? {
    get {
      return graphQLMap["navaids"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "navaids")
    }
  }

  public var approachLights: String? {
    get {
      return graphQLMap["approachLights"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "approachLights")
    }
  }

  public var localAirfields: String? {
    get {
      return graphQLMap["localAirfields"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "localAirfields")
    }
  }

  public var birdStatus: String? {
    get {
      return graphQLMap["birdStatus"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birdStatus")
    }
  }

  public var fits: String? {
    get {
      return graphQLMap["fits"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fits")
    }
  }

  public var activeRunway: String? {
    get {
      return graphQLMap["activeRunway"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "activeRunway")
    }
  }

  public var runwayConditions: String? {
    get {
      return graphQLMap["runwayConditions"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "runwayConditions")
    }
  }

  public var date: String? {
    get {
      return graphQLMap["date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var time: String? {
    get {
      return graphQLMap["time"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "time")
    }
  }

  public var sofOnDuty: String? {
    get {
      return graphQLMap["sofOnDuty"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sofOnDuty")
    }
  }
}

public struct UpdateSOFStatusInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, u2Status: String? = nil, t38Status: String? = nil, u2Restrictions: String? = nil, t38Restrictions: String? = nil, u2Alternates: String? = nil, t38Alternates: String? = nil, navaids: String? = nil, approachLights: String? = nil, localAirfields: String? = nil, birdStatus: String? = nil, fits: String? = nil, activeRunway: String? = nil, runwayConditions: String? = nil, date: String? = nil, time: String? = nil, sofOnDuty: String? = nil) {
    graphQLMap = ["id": id, "u2Status": u2Status, "t38Status": t38Status, "u2Restrictions": u2Restrictions, "t38Restrictions": t38Restrictions, "u2Alternates": u2Alternates, "t38Alternates": t38Alternates, "navaids": navaids, "approachLights": approachLights, "localAirfields": localAirfields, "birdStatus": birdStatus, "fits": fits, "activeRunway": activeRunway, "runwayConditions": runwayConditions, "date": date, "time": time, "sofOnDuty": sofOnDuty]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var u2Status: String? {
    get {
      return graphQLMap["u2Status"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "u2Status")
    }
  }

  public var t38Status: String? {
    get {
      return graphQLMap["t38Status"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "t38Status")
    }
  }

  public var u2Restrictions: String? {
    get {
      return graphQLMap["u2Restrictions"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "u2Restrictions")
    }
  }

  public var t38Restrictions: String? {
    get {
      return graphQLMap["t38Restrictions"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "t38Restrictions")
    }
  }

  public var u2Alternates: String? {
    get {
      return graphQLMap["u2Alternates"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "u2Alternates")
    }
  }

  public var t38Alternates: String? {
    get {
      return graphQLMap["t38Alternates"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "t38Alternates")
    }
  }

  public var navaids: String? {
    get {
      return graphQLMap["navaids"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "navaids")
    }
  }

  public var approachLights: String? {
    get {
      return graphQLMap["approachLights"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "approachLights")
    }
  }

  public var localAirfields: String? {
    get {
      return graphQLMap["localAirfields"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "localAirfields")
    }
  }

  public var birdStatus: String? {
    get {
      return graphQLMap["birdStatus"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birdStatus")
    }
  }

  public var fits: String? {
    get {
      return graphQLMap["fits"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fits")
    }
  }

  public var activeRunway: String? {
    get {
      return graphQLMap["activeRunway"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "activeRunway")
    }
  }

  public var runwayConditions: String? {
    get {
      return graphQLMap["runwayConditions"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "runwayConditions")
    }
  }

  public var date: String? {
    get {
      return graphQLMap["date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var time: String? {
    get {
      return graphQLMap["time"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "time")
    }
  }

  public var sofOnDuty: String? {
    get {
      return graphQLMap["sofOnDuty"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sofOnDuty")
    }
  }
}

public struct DeleteSOFStatusInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateChecklistInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String? = nil, items: [String?]? = nil) {
    graphQLMap = ["id": id, "name": name, "items": items]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var items: [String?]? {
    get {
      return graphQLMap["items"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "items")
    }
  }
}

public struct UpdateChecklistInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, items: [String?]? = nil) {
    graphQLMap = ["id": id, "name": name, "items": items]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var items: [String?]? {
    get {
      return graphQLMap["items"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "items")
    }
  }
}

public struct DeleteChecklistInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateNotesInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(note: String? = nil) {
    graphQLMap = ["note": note]
  }

  public var note: String? {
    get {
      return graphQLMap["note"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "note")
    }
  }
}

public struct UpdateNotesInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(note: String? = nil) {
    graphQLMap = ["note": note]
  }

  public var note: String? {
    get {
      return graphQLMap["note"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "note")
    }
  }
}

public struct DeleteNotesInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateContactsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(category: String? = nil, name: String? = nil, phoneNumber: String? = nil, email: String? = nil, dsn: Bool? = nil) {
    graphQLMap = ["category": category, "name": name, "phoneNumber": phoneNumber, "email": email, "dsn": dsn]
  }

  public var category: String? {
    get {
      return graphQLMap["category"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var phoneNumber: String? {
    get {
      return graphQLMap["phoneNumber"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }

  public var email: String? {
    get {
      return graphQLMap["email"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var dsn: Bool? {
    get {
      return graphQLMap["dsn"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dsn")
    }
  }
}

public struct UpdateContactsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(category: String? = nil, name: String? = nil, phoneNumber: String? = nil, email: String? = nil, dsn: Bool? = nil) {
    graphQLMap = ["category": category, "name": name, "phoneNumber": phoneNumber, "email": email, "dsn": dsn]
  }

  public var category: String? {
    get {
      return graphQLMap["category"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var phoneNumber: String? {
    get {
      return graphQLMap["phoneNumber"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }

  public var email: String? {
    get {
      return graphQLMap["email"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var dsn: Bool? {
    get {
      return graphQLMap["dsn"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dsn")
    }
  }
}

public struct DeleteContactsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateEmergencyInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, startDate: Int? = nil, startTime: Int? = nil, terminationDate: Int? = nil, terminationTime: Int? = nil, callSign: String? = nil, aircraftType: String? = nil, tailNumber: String? = nil, soulsOnBoard: String? = nil, fuelRemainingTimeInMinutes: Int? = nil, systemAffected: String? = nil, details: String? = nil) {
    graphQLMap = ["id": id, "startDate": startDate, "startTime": startTime, "terminationDate": terminationDate, "terminationTime": terminationTime, "callSign": callSign, "aircraftType": aircraftType, "tailNumber": tailNumber, "soulsOnBoard": soulsOnBoard, "fuelRemainingTimeInMinutes": fuelRemainingTimeInMinutes, "systemAffected": systemAffected, "details": details]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var startDate: Int? {
    get {
      return graphQLMap["startDate"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var startTime: Int? {
    get {
      return graphQLMap["startTime"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startTime")
    }
  }

  public var terminationDate: Int? {
    get {
      return graphQLMap["terminationDate"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "terminationDate")
    }
  }

  public var terminationTime: Int? {
    get {
      return graphQLMap["terminationTime"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "terminationTime")
    }
  }

  public var callSign: String? {
    get {
      return graphQLMap["callSign"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "callSign")
    }
  }

  public var aircraftType: String? {
    get {
      return graphQLMap["aircraftType"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "aircraftType")
    }
  }

  public var tailNumber: String? {
    get {
      return graphQLMap["tailNumber"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tailNumber")
    }
  }

  public var soulsOnBoard: String? {
    get {
      return graphQLMap["soulsOnBoard"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "soulsOnBoard")
    }
  }

  public var fuelRemainingTimeInMinutes: Int? {
    get {
      return graphQLMap["fuelRemainingTimeInMinutes"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fuelRemainingTimeInMinutes")
    }
  }

  public var systemAffected: String? {
    get {
      return graphQLMap["systemAffected"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "systemAffected")
    }
  }

  public var details: String? {
    get {
      return graphQLMap["details"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "details")
    }
  }
}

public struct UpdateEmergencyInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, startDate: Int? = nil, startTime: Int? = nil, terminationDate: Int? = nil, terminationTime: Int? = nil, callSign: String? = nil, aircraftType: String? = nil, tailNumber: String? = nil, soulsOnBoard: String? = nil, fuelRemainingTimeInMinutes: Int? = nil, systemAffected: String? = nil, details: String? = nil) {
    graphQLMap = ["id": id, "startDate": startDate, "startTime": startTime, "terminationDate": terminationDate, "terminationTime": terminationTime, "callSign": callSign, "aircraftType": aircraftType, "tailNumber": tailNumber, "soulsOnBoard": soulsOnBoard, "fuelRemainingTimeInMinutes": fuelRemainingTimeInMinutes, "systemAffected": systemAffected, "details": details]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var startDate: Int? {
    get {
      return graphQLMap["startDate"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var startTime: Int? {
    get {
      return graphQLMap["startTime"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startTime")
    }
  }

  public var terminationDate: Int? {
    get {
      return graphQLMap["terminationDate"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "terminationDate")
    }
  }

  public var terminationTime: Int? {
    get {
      return graphQLMap["terminationTime"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "terminationTime")
    }
  }

  public var callSign: String? {
    get {
      return graphQLMap["callSign"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "callSign")
    }
  }

  public var aircraftType: String? {
    get {
      return graphQLMap["aircraftType"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "aircraftType")
    }
  }

  public var tailNumber: String? {
    get {
      return graphQLMap["tailNumber"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tailNumber")
    }
  }

  public var soulsOnBoard: String? {
    get {
      return graphQLMap["soulsOnBoard"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "soulsOnBoard")
    }
  }

  public var fuelRemainingTimeInMinutes: Int? {
    get {
      return graphQLMap["fuelRemainingTimeInMinutes"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fuelRemainingTimeInMinutes")
    }
  }

  public var systemAffected: String? {
    get {
      return graphQLMap["systemAffected"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "systemAffected")
    }
  }

  public var details: String? {
    get {
      return graphQLMap["details"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "details")
    }
  }
}

public struct DeleteEmergencyInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelSOFStatusFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDFilterInput? = nil, u2Status: ModelStringFilterInput? = nil, t38Status: ModelStringFilterInput? = nil, u2Restrictions: ModelStringFilterInput? = nil, t38Restrictions: ModelStringFilterInput? = nil, u2Alternates: ModelStringFilterInput? = nil, t38Alternates: ModelStringFilterInput? = nil, navaids: ModelStringFilterInput? = nil, approachLights: ModelStringFilterInput? = nil, localAirfields: ModelStringFilterInput? = nil, birdStatus: ModelStringFilterInput? = nil, fits: ModelStringFilterInput? = nil, activeRunway: ModelStringFilterInput? = nil, runwayConditions: ModelStringFilterInput? = nil, date: ModelStringFilterInput? = nil, time: ModelStringFilterInput? = nil, sofOnDuty: ModelStringFilterInput? = nil, and: [ModelSOFStatusFilterInput?]? = nil, or: [ModelSOFStatusFilterInput?]? = nil, not: ModelSOFStatusFilterInput? = nil) {
    graphQLMap = ["id": id, "u2Status": u2Status, "t38Status": t38Status, "u2Restrictions": u2Restrictions, "t38Restrictions": t38Restrictions, "u2Alternates": u2Alternates, "t38Alternates": t38Alternates, "navaids": navaids, "approachLights": approachLights, "localAirfields": localAirfields, "birdStatus": birdStatus, "fits": fits, "activeRunway": activeRunway, "runwayConditions": runwayConditions, "date": date, "time": time, "sofOnDuty": sofOnDuty, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDFilterInput? {
    get {
      return graphQLMap["id"] as! ModelIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var u2Status: ModelStringFilterInput? {
    get {
      return graphQLMap["u2Status"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "u2Status")
    }
  }

  public var t38Status: ModelStringFilterInput? {
    get {
      return graphQLMap["t38Status"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "t38Status")
    }
  }

  public var u2Restrictions: ModelStringFilterInput? {
    get {
      return graphQLMap["u2Restrictions"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "u2Restrictions")
    }
  }

  public var t38Restrictions: ModelStringFilterInput? {
    get {
      return graphQLMap["t38Restrictions"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "t38Restrictions")
    }
  }

  public var u2Alternates: ModelStringFilterInput? {
    get {
      return graphQLMap["u2Alternates"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "u2Alternates")
    }
  }

  public var t38Alternates: ModelStringFilterInput? {
    get {
      return graphQLMap["t38Alternates"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "t38Alternates")
    }
  }

  public var navaids: ModelStringFilterInput? {
    get {
      return graphQLMap["navaids"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "navaids")
    }
  }

  public var approachLights: ModelStringFilterInput? {
    get {
      return graphQLMap["approachLights"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "approachLights")
    }
  }

  public var localAirfields: ModelStringFilterInput? {
    get {
      return graphQLMap["localAirfields"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "localAirfields")
    }
  }

  public var birdStatus: ModelStringFilterInput? {
    get {
      return graphQLMap["birdStatus"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birdStatus")
    }
  }

  public var fits: ModelStringFilterInput? {
    get {
      return graphQLMap["fits"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fits")
    }
  }

  public var activeRunway: ModelStringFilterInput? {
    get {
      return graphQLMap["activeRunway"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "activeRunway")
    }
  }

  public var runwayConditions: ModelStringFilterInput? {
    get {
      return graphQLMap["runwayConditions"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "runwayConditions")
    }
  }

  public var date: ModelStringFilterInput? {
    get {
      return graphQLMap["date"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var time: ModelStringFilterInput? {
    get {
      return graphQLMap["time"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "time")
    }
  }

  public var sofOnDuty: ModelStringFilterInput? {
    get {
      return graphQLMap["sofOnDuty"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sofOnDuty")
    }
  }

  public var and: [ModelSOFStatusFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSOFStatusFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSOFStatusFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSOFStatusFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelSOFStatusFilterInput? {
    get {
      return graphQLMap["not"] as! ModelSOFStatusFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct ModelStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct ModelChecklistFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDFilterInput? = nil, name: ModelStringFilterInput? = nil, items: ModelStringFilterInput? = nil, and: [ModelChecklistFilterInput?]? = nil, or: [ModelChecklistFilterInput?]? = nil, not: ModelChecklistFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "items": items, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDFilterInput? {
    get {
      return graphQLMap["id"] as! ModelIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringFilterInput? {
    get {
      return graphQLMap["name"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var items: ModelStringFilterInput? {
    get {
      return graphQLMap["items"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "items")
    }
  }

  public var and: [ModelChecklistFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelChecklistFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelChecklistFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelChecklistFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelChecklistFilterInput? {
    get {
      return graphQLMap["not"] as! ModelChecklistFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelNotesFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(note: ModelStringFilterInput? = nil, and: [ModelNotesFilterInput?]? = nil, or: [ModelNotesFilterInput?]? = nil, not: ModelNotesFilterInput? = nil) {
    graphQLMap = ["note": note, "and": and, "or": or, "not": not]
  }

  public var note: ModelStringFilterInput? {
    get {
      return graphQLMap["note"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "note")
    }
  }

  public var and: [ModelNotesFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelNotesFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelNotesFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelNotesFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelNotesFilterInput? {
    get {
      return graphQLMap["not"] as! ModelNotesFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelContactsFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(category: ModelStringFilterInput? = nil, name: ModelStringFilterInput? = nil, phoneNumber: ModelStringFilterInput? = nil, email: ModelStringFilterInput? = nil, dsn: ModelBooleanFilterInput? = nil, and: [ModelContactsFilterInput?]? = nil, or: [ModelContactsFilterInput?]? = nil, not: ModelContactsFilterInput? = nil) {
    graphQLMap = ["category": category, "name": name, "phoneNumber": phoneNumber, "email": email, "dsn": dsn, "and": and, "or": or, "not": not]
  }

  public var category: ModelStringFilterInput? {
    get {
      return graphQLMap["category"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var name: ModelStringFilterInput? {
    get {
      return graphQLMap["name"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var phoneNumber: ModelStringFilterInput? {
    get {
      return graphQLMap["phoneNumber"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }

  public var email: ModelStringFilterInput? {
    get {
      return graphQLMap["email"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var dsn: ModelBooleanFilterInput? {
    get {
      return graphQLMap["dsn"] as! ModelBooleanFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dsn")
    }
  }

  public var and: [ModelContactsFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelContactsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelContactsFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelContactsFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelContactsFilterInput? {
    get {
      return graphQLMap["not"] as! ModelContactsFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelBooleanFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Bool? = nil, eq: Bool? = nil) {
    graphQLMap = ["ne": ne, "eq": eq]
  }

  public var ne: Bool? {
    get {
      return graphQLMap["ne"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Bool? {
    get {
      return graphQLMap["eq"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }
}

public struct ModelEmergencyFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDFilterInput? = nil, startDate: ModelIntFilterInput? = nil, startTime: ModelIntFilterInput? = nil, terminationDate: ModelIntFilterInput? = nil, terminationTime: ModelIntFilterInput? = nil, callSign: ModelStringFilterInput? = nil, aircraftType: ModelStringFilterInput? = nil, tailNumber: ModelStringFilterInput? = nil, soulsOnBoard: ModelStringFilterInput? = nil, fuelRemainingTimeInMinutes: ModelIntFilterInput? = nil, systemAffected: ModelStringFilterInput? = nil, details: ModelStringFilterInput? = nil, and: [ModelEmergencyFilterInput?]? = nil, or: [ModelEmergencyFilterInput?]? = nil, not: ModelEmergencyFilterInput? = nil) {
    graphQLMap = ["id": id, "startDate": startDate, "startTime": startTime, "terminationDate": terminationDate, "terminationTime": terminationTime, "callSign": callSign, "aircraftType": aircraftType, "tailNumber": tailNumber, "soulsOnBoard": soulsOnBoard, "fuelRemainingTimeInMinutes": fuelRemainingTimeInMinutes, "systemAffected": systemAffected, "details": details, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDFilterInput? {
    get {
      return graphQLMap["id"] as! ModelIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var startDate: ModelIntFilterInput? {
    get {
      return graphQLMap["startDate"] as! ModelIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var startTime: ModelIntFilterInput? {
    get {
      return graphQLMap["startTime"] as! ModelIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startTime")
    }
  }

  public var terminationDate: ModelIntFilterInput? {
    get {
      return graphQLMap["terminationDate"] as! ModelIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "terminationDate")
    }
  }

  public var terminationTime: ModelIntFilterInput? {
    get {
      return graphQLMap["terminationTime"] as! ModelIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "terminationTime")
    }
  }

  public var callSign: ModelStringFilterInput? {
    get {
      return graphQLMap["callSign"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "callSign")
    }
  }

  public var aircraftType: ModelStringFilterInput? {
    get {
      return graphQLMap["aircraftType"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "aircraftType")
    }
  }

  public var tailNumber: ModelStringFilterInput? {
    get {
      return graphQLMap["tailNumber"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tailNumber")
    }
  }

  public var soulsOnBoard: ModelStringFilterInput? {
    get {
      return graphQLMap["soulsOnBoard"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "soulsOnBoard")
    }
  }

  public var fuelRemainingTimeInMinutes: ModelIntFilterInput? {
    get {
      return graphQLMap["fuelRemainingTimeInMinutes"] as! ModelIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fuelRemainingTimeInMinutes")
    }
  }

  public var systemAffected: ModelStringFilterInput? {
    get {
      return graphQLMap["systemAffected"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "systemAffected")
    }
  }

  public var details: ModelStringFilterInput? {
    get {
      return graphQLMap["details"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "details")
    }
  }

  public var and: [ModelEmergencyFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelEmergencyFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelEmergencyFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelEmergencyFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelEmergencyFilterInput? {
    get {
      return graphQLMap["not"] as! ModelEmergencyFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIntFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, contains: Int? = nil, notContains: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Int? {
    get {
      return graphQLMap["contains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Int? {
    get {
      return graphQLMap["notContains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public final class CreateSofStatusMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateSofStatus($input: CreateSOFStatusInput!) {\n  createSOFStatus(input: $input) {\n    __typename\n    id\n    u2Status\n    t38Status\n    u2Restrictions\n    t38Restrictions\n    u2Alternates\n    t38Alternates\n    navaids\n    approachLights\n    localAirfields\n    birdStatus\n    fits\n    activeRunway\n    runwayConditions\n    date\n    time\n    sofOnDuty\n  }\n}"

  public var input: CreateSOFStatusInput

  public init(input: CreateSOFStatusInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createSOFStatus", arguments: ["input": GraphQLVariable("input")], type: .object(CreateSofStatus.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createSofStatus: CreateSofStatus? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createSOFStatus": createSofStatus.flatMap { $0.snapshot }])
    }

    public var createSofStatus: CreateSofStatus? {
      get {
        return (snapshot["createSOFStatus"] as? Snapshot).flatMap { CreateSofStatus(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createSOFStatus")
      }
    }

    public struct CreateSofStatus: GraphQLSelectionSet {
      public static let possibleTypes = ["SOFStatus"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("u2Status", type: .scalar(String.self)),
        GraphQLField("t38Status", type: .scalar(String.self)),
        GraphQLField("u2Restrictions", type: .scalar(String.self)),
        GraphQLField("t38Restrictions", type: .scalar(String.self)),
        GraphQLField("u2Alternates", type: .scalar(String.self)),
        GraphQLField("t38Alternates", type: .scalar(String.self)),
        GraphQLField("navaids", type: .scalar(String.self)),
        GraphQLField("approachLights", type: .scalar(String.self)),
        GraphQLField("localAirfields", type: .scalar(String.self)),
        GraphQLField("birdStatus", type: .scalar(String.self)),
        GraphQLField("fits", type: .scalar(String.self)),
        GraphQLField("activeRunway", type: .scalar(String.self)),
        GraphQLField("runwayConditions", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("time", type: .scalar(String.self)),
        GraphQLField("sofOnDuty", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, u2Status: String? = nil, t38Status: String? = nil, u2Restrictions: String? = nil, t38Restrictions: String? = nil, u2Alternates: String? = nil, t38Alternates: String? = nil, navaids: String? = nil, approachLights: String? = nil, localAirfields: String? = nil, birdStatus: String? = nil, fits: String? = nil, activeRunway: String? = nil, runwayConditions: String? = nil, date: String? = nil, time: String? = nil, sofOnDuty: String? = nil) {
        self.init(snapshot: ["__typename": "SOFStatus", "id": id, "u2Status": u2Status, "t38Status": t38Status, "u2Restrictions": u2Restrictions, "t38Restrictions": t38Restrictions, "u2Alternates": u2Alternates, "t38Alternates": t38Alternates, "navaids": navaids, "approachLights": approachLights, "localAirfields": localAirfields, "birdStatus": birdStatus, "fits": fits, "activeRunway": activeRunway, "runwayConditions": runwayConditions, "date": date, "time": time, "sofOnDuty": sofOnDuty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var u2Status: String? {
        get {
          return snapshot["u2Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Status")
        }
      }

      public var t38Status: String? {
        get {
          return snapshot["t38Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Status")
        }
      }

      public var u2Restrictions: String? {
        get {
          return snapshot["u2Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Restrictions")
        }
      }

      public var t38Restrictions: String? {
        get {
          return snapshot["t38Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Restrictions")
        }
      }

      public var u2Alternates: String? {
        get {
          return snapshot["u2Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Alternates")
        }
      }

      public var t38Alternates: String? {
        get {
          return snapshot["t38Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Alternates")
        }
      }

      public var navaids: String? {
        get {
          return snapshot["navaids"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "navaids")
        }
      }

      public var approachLights: String? {
        get {
          return snapshot["approachLights"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "approachLights")
        }
      }

      public var localAirfields: String? {
        get {
          return snapshot["localAirfields"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "localAirfields")
        }
      }

      public var birdStatus: String? {
        get {
          return snapshot["birdStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birdStatus")
        }
      }

      public var fits: String? {
        get {
          return snapshot["fits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fits")
        }
      }

      public var activeRunway: String? {
        get {
          return snapshot["activeRunway"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "activeRunway")
        }
      }

      public var runwayConditions: String? {
        get {
          return snapshot["runwayConditions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "runwayConditions")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var sofOnDuty: String? {
        get {
          return snapshot["sofOnDuty"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sofOnDuty")
        }
      }
    }
  }
}

public final class UpdateSofStatusMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateSofStatus($input: UpdateSOFStatusInput!) {\n  updateSOFStatus(input: $input) {\n    __typename\n    id\n    u2Status\n    t38Status\n    u2Restrictions\n    t38Restrictions\n    u2Alternates\n    t38Alternates\n    navaids\n    approachLights\n    localAirfields\n    birdStatus\n    fits\n    activeRunway\n    runwayConditions\n    date\n    time\n    sofOnDuty\n  }\n}"

  public var input: UpdateSOFStatusInput

  public init(input: UpdateSOFStatusInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateSOFStatus", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateSofStatus.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateSofStatus: UpdateSofStatus? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateSOFStatus": updateSofStatus.flatMap { $0.snapshot }])
    }

    public var updateSofStatus: UpdateSofStatus? {
      get {
        return (snapshot["updateSOFStatus"] as? Snapshot).flatMap { UpdateSofStatus(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateSOFStatus")
      }
    }

    public struct UpdateSofStatus: GraphQLSelectionSet {
      public static let possibleTypes = ["SOFStatus"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("u2Status", type: .scalar(String.self)),
        GraphQLField("t38Status", type: .scalar(String.self)),
        GraphQLField("u2Restrictions", type: .scalar(String.self)),
        GraphQLField("t38Restrictions", type: .scalar(String.self)),
        GraphQLField("u2Alternates", type: .scalar(String.self)),
        GraphQLField("t38Alternates", type: .scalar(String.self)),
        GraphQLField("navaids", type: .scalar(String.self)),
        GraphQLField("approachLights", type: .scalar(String.self)),
        GraphQLField("localAirfields", type: .scalar(String.self)),
        GraphQLField("birdStatus", type: .scalar(String.self)),
        GraphQLField("fits", type: .scalar(String.self)),
        GraphQLField("activeRunway", type: .scalar(String.self)),
        GraphQLField("runwayConditions", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("time", type: .scalar(String.self)),
        GraphQLField("sofOnDuty", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, u2Status: String? = nil, t38Status: String? = nil, u2Restrictions: String? = nil, t38Restrictions: String? = nil, u2Alternates: String? = nil, t38Alternates: String? = nil, navaids: String? = nil, approachLights: String? = nil, localAirfields: String? = nil, birdStatus: String? = nil, fits: String? = nil, activeRunway: String? = nil, runwayConditions: String? = nil, date: String? = nil, time: String? = nil, sofOnDuty: String? = nil) {
        self.init(snapshot: ["__typename": "SOFStatus", "id": id, "u2Status": u2Status, "t38Status": t38Status, "u2Restrictions": u2Restrictions, "t38Restrictions": t38Restrictions, "u2Alternates": u2Alternates, "t38Alternates": t38Alternates, "navaids": navaids, "approachLights": approachLights, "localAirfields": localAirfields, "birdStatus": birdStatus, "fits": fits, "activeRunway": activeRunway, "runwayConditions": runwayConditions, "date": date, "time": time, "sofOnDuty": sofOnDuty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var u2Status: String? {
        get {
          return snapshot["u2Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Status")
        }
      }

      public var t38Status: String? {
        get {
          return snapshot["t38Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Status")
        }
      }

      public var u2Restrictions: String? {
        get {
          return snapshot["u2Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Restrictions")
        }
      }

      public var t38Restrictions: String? {
        get {
          return snapshot["t38Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Restrictions")
        }
      }

      public var u2Alternates: String? {
        get {
          return snapshot["u2Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Alternates")
        }
      }

      public var t38Alternates: String? {
        get {
          return snapshot["t38Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Alternates")
        }
      }

      public var navaids: String? {
        get {
          return snapshot["navaids"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "navaids")
        }
      }

      public var approachLights: String? {
        get {
          return snapshot["approachLights"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "approachLights")
        }
      }

      public var localAirfields: String? {
        get {
          return snapshot["localAirfields"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "localAirfields")
        }
      }

      public var birdStatus: String? {
        get {
          return snapshot["birdStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birdStatus")
        }
      }

      public var fits: String? {
        get {
          return snapshot["fits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fits")
        }
      }

      public var activeRunway: String? {
        get {
          return snapshot["activeRunway"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "activeRunway")
        }
      }

      public var runwayConditions: String? {
        get {
          return snapshot["runwayConditions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "runwayConditions")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var sofOnDuty: String? {
        get {
          return snapshot["sofOnDuty"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sofOnDuty")
        }
      }
    }
  }
}

public final class DeleteSofStatusMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteSofStatus($input: DeleteSOFStatusInput!) {\n  deleteSOFStatus(input: $input) {\n    __typename\n    id\n    u2Status\n    t38Status\n    u2Restrictions\n    t38Restrictions\n    u2Alternates\n    t38Alternates\n    navaids\n    approachLights\n    localAirfields\n    birdStatus\n    fits\n    activeRunway\n    runwayConditions\n    date\n    time\n    sofOnDuty\n  }\n}"

  public var input: DeleteSOFStatusInput

  public init(input: DeleteSOFStatusInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteSOFStatus", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteSofStatus.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteSofStatus: DeleteSofStatus? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteSOFStatus": deleteSofStatus.flatMap { $0.snapshot }])
    }

    public var deleteSofStatus: DeleteSofStatus? {
      get {
        return (snapshot["deleteSOFStatus"] as? Snapshot).flatMap { DeleteSofStatus(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteSOFStatus")
      }
    }

    public struct DeleteSofStatus: GraphQLSelectionSet {
      public static let possibleTypes = ["SOFStatus"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("u2Status", type: .scalar(String.self)),
        GraphQLField("t38Status", type: .scalar(String.self)),
        GraphQLField("u2Restrictions", type: .scalar(String.self)),
        GraphQLField("t38Restrictions", type: .scalar(String.self)),
        GraphQLField("u2Alternates", type: .scalar(String.self)),
        GraphQLField("t38Alternates", type: .scalar(String.self)),
        GraphQLField("navaids", type: .scalar(String.self)),
        GraphQLField("approachLights", type: .scalar(String.self)),
        GraphQLField("localAirfields", type: .scalar(String.self)),
        GraphQLField("birdStatus", type: .scalar(String.self)),
        GraphQLField("fits", type: .scalar(String.self)),
        GraphQLField("activeRunway", type: .scalar(String.self)),
        GraphQLField("runwayConditions", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("time", type: .scalar(String.self)),
        GraphQLField("sofOnDuty", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, u2Status: String? = nil, t38Status: String? = nil, u2Restrictions: String? = nil, t38Restrictions: String? = nil, u2Alternates: String? = nil, t38Alternates: String? = nil, navaids: String? = nil, approachLights: String? = nil, localAirfields: String? = nil, birdStatus: String? = nil, fits: String? = nil, activeRunway: String? = nil, runwayConditions: String? = nil, date: String? = nil, time: String? = nil, sofOnDuty: String? = nil) {
        self.init(snapshot: ["__typename": "SOFStatus", "id": id, "u2Status": u2Status, "t38Status": t38Status, "u2Restrictions": u2Restrictions, "t38Restrictions": t38Restrictions, "u2Alternates": u2Alternates, "t38Alternates": t38Alternates, "navaids": navaids, "approachLights": approachLights, "localAirfields": localAirfields, "birdStatus": birdStatus, "fits": fits, "activeRunway": activeRunway, "runwayConditions": runwayConditions, "date": date, "time": time, "sofOnDuty": sofOnDuty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var u2Status: String? {
        get {
          return snapshot["u2Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Status")
        }
      }

      public var t38Status: String? {
        get {
          return snapshot["t38Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Status")
        }
      }

      public var u2Restrictions: String? {
        get {
          return snapshot["u2Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Restrictions")
        }
      }

      public var t38Restrictions: String? {
        get {
          return snapshot["t38Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Restrictions")
        }
      }

      public var u2Alternates: String? {
        get {
          return snapshot["u2Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Alternates")
        }
      }

      public var t38Alternates: String? {
        get {
          return snapshot["t38Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Alternates")
        }
      }

      public var navaids: String? {
        get {
          return snapshot["navaids"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "navaids")
        }
      }

      public var approachLights: String? {
        get {
          return snapshot["approachLights"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "approachLights")
        }
      }

      public var localAirfields: String? {
        get {
          return snapshot["localAirfields"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "localAirfields")
        }
      }

      public var birdStatus: String? {
        get {
          return snapshot["birdStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birdStatus")
        }
      }

      public var fits: String? {
        get {
          return snapshot["fits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fits")
        }
      }

      public var activeRunway: String? {
        get {
          return snapshot["activeRunway"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "activeRunway")
        }
      }

      public var runwayConditions: String? {
        get {
          return snapshot["runwayConditions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "runwayConditions")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var sofOnDuty: String? {
        get {
          return snapshot["sofOnDuty"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sofOnDuty")
        }
      }
    }
  }
}

public final class CreateChecklistMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateChecklist($input: CreateChecklistInput!) {\n  createChecklist(input: $input) {\n    __typename\n    id\n    name\n    items\n  }\n}"

  public var input: CreateChecklistInput

  public init(input: CreateChecklistInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createChecklist", arguments: ["input": GraphQLVariable("input")], type: .object(CreateChecklist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createChecklist: CreateChecklist? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createChecklist": createChecklist.flatMap { $0.snapshot }])
    }

    public var createChecklist: CreateChecklist? {
      get {
        return (snapshot["createChecklist"] as? Snapshot).flatMap { CreateChecklist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createChecklist")
      }
    }

    public struct CreateChecklist: GraphQLSelectionSet {
      public static let possibleTypes = ["Checklist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, items: [String?]? = nil) {
        self.init(snapshot: ["__typename": "Checklist", "id": id, "name": name, "items": items])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var items: [String?]? {
        get {
          return snapshot["items"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "items")
        }
      }
    }
  }
}

public final class UpdateChecklistMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateChecklist($input: UpdateChecklistInput!) {\n  updateChecklist(input: $input) {\n    __typename\n    id\n    name\n    items\n  }\n}"

  public var input: UpdateChecklistInput

  public init(input: UpdateChecklistInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateChecklist", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateChecklist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateChecklist: UpdateChecklist? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateChecklist": updateChecklist.flatMap { $0.snapshot }])
    }

    public var updateChecklist: UpdateChecklist? {
      get {
        return (snapshot["updateChecklist"] as? Snapshot).flatMap { UpdateChecklist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateChecklist")
      }
    }

    public struct UpdateChecklist: GraphQLSelectionSet {
      public static let possibleTypes = ["Checklist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, items: [String?]? = nil) {
        self.init(snapshot: ["__typename": "Checklist", "id": id, "name": name, "items": items])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var items: [String?]? {
        get {
          return snapshot["items"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "items")
        }
      }
    }
  }
}

public final class DeleteChecklistMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteChecklist($input: DeleteChecklistInput!) {\n  deleteChecklist(input: $input) {\n    __typename\n    id\n    name\n    items\n  }\n}"

  public var input: DeleteChecklistInput

  public init(input: DeleteChecklistInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteChecklist", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteChecklist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteChecklist: DeleteChecklist? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteChecklist": deleteChecklist.flatMap { $0.snapshot }])
    }

    public var deleteChecklist: DeleteChecklist? {
      get {
        return (snapshot["deleteChecklist"] as? Snapshot).flatMap { DeleteChecklist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteChecklist")
      }
    }

    public struct DeleteChecklist: GraphQLSelectionSet {
      public static let possibleTypes = ["Checklist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, items: [String?]? = nil) {
        self.init(snapshot: ["__typename": "Checklist", "id": id, "name": name, "items": items])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var items: [String?]? {
        get {
          return snapshot["items"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "items")
        }
      }
    }
  }
}

public final class CreateNotesMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateNotes($input: CreateNotesInput!) {\n  createNotes(input: $input) {\n    __typename\n    note\n  }\n}"

  public var input: CreateNotesInput

  public init(input: CreateNotesInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createNotes", arguments: ["input": GraphQLVariable("input")], type: .object(CreateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createNotes: CreateNote? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createNotes": createNotes.flatMap { $0.snapshot }])
    }

    public var createNotes: CreateNote? {
      get {
        return (snapshot["createNotes"] as? Snapshot).flatMap { CreateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createNotes")
      }
    }

    public struct CreateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(note: String? = nil) {
        self.init(snapshot: ["__typename": "Notes", "note": note])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var note: String? {
        get {
          return snapshot["note"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }
    }
  }
}

public final class UpdateNotesMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateNotes($input: UpdateNotesInput!) {\n  updateNotes(input: $input) {\n    __typename\n    note\n  }\n}"

  public var input: UpdateNotesInput

  public init(input: UpdateNotesInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateNotes", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateNotes: UpdateNote? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateNotes": updateNotes.flatMap { $0.snapshot }])
    }

    public var updateNotes: UpdateNote? {
      get {
        return (snapshot["updateNotes"] as? Snapshot).flatMap { UpdateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateNotes")
      }
    }

    public struct UpdateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(note: String? = nil) {
        self.init(snapshot: ["__typename": "Notes", "note": note])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var note: String? {
        get {
          return snapshot["note"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }
    }
  }
}

public final class DeleteNotesMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteNotes($input: DeleteNotesInput!) {\n  deleteNotes(input: $input) {\n    __typename\n    note\n  }\n}"

  public var input: DeleteNotesInput

  public init(input: DeleteNotesInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteNotes", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteNotes: DeleteNote? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteNotes": deleteNotes.flatMap { $0.snapshot }])
    }

    public var deleteNotes: DeleteNote? {
      get {
        return (snapshot["deleteNotes"] as? Snapshot).flatMap { DeleteNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteNotes")
      }
    }

    public struct DeleteNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(note: String? = nil) {
        self.init(snapshot: ["__typename": "Notes", "note": note])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var note: String? {
        get {
          return snapshot["note"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }
    }
  }
}

public final class CreateContactsMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateContacts($input: CreateContactsInput!) {\n  createContacts(input: $input) {\n    __typename\n    category\n    name\n    phoneNumber\n    email\n    dsn\n  }\n}"

  public var input: CreateContactsInput

  public init(input: CreateContactsInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createContacts", arguments: ["input": GraphQLVariable("input")], type: .object(CreateContact.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createContacts: CreateContact? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createContacts": createContacts.flatMap { $0.snapshot }])
    }

    public var createContacts: CreateContact? {
      get {
        return (snapshot["createContacts"] as? Snapshot).flatMap { CreateContact(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createContacts")
      }
    }

    public struct CreateContact: GraphQLSelectionSet {
      public static let possibleTypes = ["Contacts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .scalar(String.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("dsn", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: String? = nil, name: String? = nil, phoneNumber: String? = nil, email: String? = nil, dsn: Bool? = nil) {
        self.init(snapshot: ["__typename": "Contacts", "category": category, "name": name, "phoneNumber": phoneNumber, "email": email, "dsn": dsn])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: String? {
        get {
          return snapshot["category"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var dsn: Bool? {
        get {
          return snapshot["dsn"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "dsn")
        }
      }
    }
  }
}

public final class UpdateContactsMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateContacts($input: UpdateContactsInput!) {\n  updateContacts(input: $input) {\n    __typename\n    category\n    name\n    phoneNumber\n    email\n    dsn\n  }\n}"

  public var input: UpdateContactsInput

  public init(input: UpdateContactsInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateContacts", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateContact.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateContacts: UpdateContact? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateContacts": updateContacts.flatMap { $0.snapshot }])
    }

    public var updateContacts: UpdateContact? {
      get {
        return (snapshot["updateContacts"] as? Snapshot).flatMap { UpdateContact(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateContacts")
      }
    }

    public struct UpdateContact: GraphQLSelectionSet {
      public static let possibleTypes = ["Contacts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .scalar(String.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("dsn", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: String? = nil, name: String? = nil, phoneNumber: String? = nil, email: String? = nil, dsn: Bool? = nil) {
        self.init(snapshot: ["__typename": "Contacts", "category": category, "name": name, "phoneNumber": phoneNumber, "email": email, "dsn": dsn])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: String? {
        get {
          return snapshot["category"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var dsn: Bool? {
        get {
          return snapshot["dsn"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "dsn")
        }
      }
    }
  }
}

public final class DeleteContactsMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteContacts($input: DeleteContactsInput!) {\n  deleteContacts(input: $input) {\n    __typename\n    category\n    name\n    phoneNumber\n    email\n    dsn\n  }\n}"

  public var input: DeleteContactsInput

  public init(input: DeleteContactsInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteContacts", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteContact.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteContacts: DeleteContact? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteContacts": deleteContacts.flatMap { $0.snapshot }])
    }

    public var deleteContacts: DeleteContact? {
      get {
        return (snapshot["deleteContacts"] as? Snapshot).flatMap { DeleteContact(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteContacts")
      }
    }

    public struct DeleteContact: GraphQLSelectionSet {
      public static let possibleTypes = ["Contacts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .scalar(String.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("dsn", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: String? = nil, name: String? = nil, phoneNumber: String? = nil, email: String? = nil, dsn: Bool? = nil) {
        self.init(snapshot: ["__typename": "Contacts", "category": category, "name": name, "phoneNumber": phoneNumber, "email": email, "dsn": dsn])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: String? {
        get {
          return snapshot["category"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var dsn: Bool? {
        get {
          return snapshot["dsn"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "dsn")
        }
      }
    }
  }
}

public final class CreateEmergencyMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateEmergency($input: CreateEmergencyInput!) {\n  createEmergency(input: $input) {\n    __typename\n    id\n    startDate\n    startTime\n    terminationDate\n    terminationTime\n    callSign\n    aircraftType\n    tailNumber\n    soulsOnBoard\n    fuelRemainingTimeInMinutes\n    systemAffected\n    details\n  }\n}"

  public var input: CreateEmergencyInput

  public init(input: CreateEmergencyInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createEmergency", arguments: ["input": GraphQLVariable("input")], type: .object(CreateEmergency.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createEmergency: CreateEmergency? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createEmergency": createEmergency.flatMap { $0.snapshot }])
    }

    public var createEmergency: CreateEmergency? {
      get {
        return (snapshot["createEmergency"] as? Snapshot).flatMap { CreateEmergency(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createEmergency")
      }
    }

    public struct CreateEmergency: GraphQLSelectionSet {
      public static let possibleTypes = ["Emergency"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("startDate", type: .scalar(Int.self)),
        GraphQLField("startTime", type: .scalar(Int.self)),
        GraphQLField("terminationDate", type: .scalar(Int.self)),
        GraphQLField("terminationTime", type: .scalar(Int.self)),
        GraphQLField("callSign", type: .scalar(String.self)),
        GraphQLField("aircraftType", type: .scalar(String.self)),
        GraphQLField("tailNumber", type: .scalar(String.self)),
        GraphQLField("soulsOnBoard", type: .scalar(String.self)),
        GraphQLField("fuelRemainingTimeInMinutes", type: .scalar(Int.self)),
        GraphQLField("systemAffected", type: .scalar(String.self)),
        GraphQLField("details", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, startDate: Int? = nil, startTime: Int? = nil, terminationDate: Int? = nil, terminationTime: Int? = nil, callSign: String? = nil, aircraftType: String? = nil, tailNumber: String? = nil, soulsOnBoard: String? = nil, fuelRemainingTimeInMinutes: Int? = nil, systemAffected: String? = nil, details: String? = nil) {
        self.init(snapshot: ["__typename": "Emergency", "id": id, "startDate": startDate, "startTime": startTime, "terminationDate": terminationDate, "terminationTime": terminationTime, "callSign": callSign, "aircraftType": aircraftType, "tailNumber": tailNumber, "soulsOnBoard": soulsOnBoard, "fuelRemainingTimeInMinutes": fuelRemainingTimeInMinutes, "systemAffected": systemAffected, "details": details])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var startDate: Int? {
        get {
          return snapshot["startDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var startTime: Int? {
        get {
          return snapshot["startTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startTime")
        }
      }

      public var terminationDate: Int? {
        get {
          return snapshot["terminationDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationDate")
        }
      }

      public var terminationTime: Int? {
        get {
          return snapshot["terminationTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationTime")
        }
      }

      public var callSign: String? {
        get {
          return snapshot["callSign"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "callSign")
        }
      }

      public var aircraftType: String? {
        get {
          return snapshot["aircraftType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "aircraftType")
        }
      }

      public var tailNumber: String? {
        get {
          return snapshot["tailNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "tailNumber")
        }
      }

      public var soulsOnBoard: String? {
        get {
          return snapshot["soulsOnBoard"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "soulsOnBoard")
        }
      }

      public var fuelRemainingTimeInMinutes: Int? {
        get {
          return snapshot["fuelRemainingTimeInMinutes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "fuelRemainingTimeInMinutes")
        }
      }

      public var systemAffected: String? {
        get {
          return snapshot["systemAffected"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "systemAffected")
        }
      }

      public var details: String? {
        get {
          return snapshot["details"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "details")
        }
      }
    }
  }
}

public final class UpdateEmergencyMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateEmergency($input: UpdateEmergencyInput!) {\n  updateEmergency(input: $input) {\n    __typename\n    id\n    startDate\n    startTime\n    terminationDate\n    terminationTime\n    callSign\n    aircraftType\n    tailNumber\n    soulsOnBoard\n    fuelRemainingTimeInMinutes\n    systemAffected\n    details\n  }\n}"

  public var input: UpdateEmergencyInput

  public init(input: UpdateEmergencyInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateEmergency", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateEmergency.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateEmergency: UpdateEmergency? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateEmergency": updateEmergency.flatMap { $0.snapshot }])
    }

    public var updateEmergency: UpdateEmergency? {
      get {
        return (snapshot["updateEmergency"] as? Snapshot).flatMap { UpdateEmergency(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateEmergency")
      }
    }

    public struct UpdateEmergency: GraphQLSelectionSet {
      public static let possibleTypes = ["Emergency"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("startDate", type: .scalar(Int.self)),
        GraphQLField("startTime", type: .scalar(Int.self)),
        GraphQLField("terminationDate", type: .scalar(Int.self)),
        GraphQLField("terminationTime", type: .scalar(Int.self)),
        GraphQLField("callSign", type: .scalar(String.self)),
        GraphQLField("aircraftType", type: .scalar(String.self)),
        GraphQLField("tailNumber", type: .scalar(String.self)),
        GraphQLField("soulsOnBoard", type: .scalar(String.self)),
        GraphQLField("fuelRemainingTimeInMinutes", type: .scalar(Int.self)),
        GraphQLField("systemAffected", type: .scalar(String.self)),
        GraphQLField("details", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, startDate: Int? = nil, startTime: Int? = nil, terminationDate: Int? = nil, terminationTime: Int? = nil, callSign: String? = nil, aircraftType: String? = nil, tailNumber: String? = nil, soulsOnBoard: String? = nil, fuelRemainingTimeInMinutes: Int? = nil, systemAffected: String? = nil, details: String? = nil) {
        self.init(snapshot: ["__typename": "Emergency", "id": id, "startDate": startDate, "startTime": startTime, "terminationDate": terminationDate, "terminationTime": terminationTime, "callSign": callSign, "aircraftType": aircraftType, "tailNumber": tailNumber, "soulsOnBoard": soulsOnBoard, "fuelRemainingTimeInMinutes": fuelRemainingTimeInMinutes, "systemAffected": systemAffected, "details": details])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var startDate: Int? {
        get {
          return snapshot["startDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var startTime: Int? {
        get {
          return snapshot["startTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startTime")
        }
      }

      public var terminationDate: Int? {
        get {
          return snapshot["terminationDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationDate")
        }
      }

      public var terminationTime: Int? {
        get {
          return snapshot["terminationTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationTime")
        }
      }

      public var callSign: String? {
        get {
          return snapshot["callSign"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "callSign")
        }
      }

      public var aircraftType: String? {
        get {
          return snapshot["aircraftType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "aircraftType")
        }
      }

      public var tailNumber: String? {
        get {
          return snapshot["tailNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "tailNumber")
        }
      }

      public var soulsOnBoard: String? {
        get {
          return snapshot["soulsOnBoard"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "soulsOnBoard")
        }
      }

      public var fuelRemainingTimeInMinutes: Int? {
        get {
          return snapshot["fuelRemainingTimeInMinutes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "fuelRemainingTimeInMinutes")
        }
      }

      public var systemAffected: String? {
        get {
          return snapshot["systemAffected"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "systemAffected")
        }
      }

      public var details: String? {
        get {
          return snapshot["details"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "details")
        }
      }
    }
  }
}

public final class DeleteEmergencyMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteEmergency($input: DeleteEmergencyInput!) {\n  deleteEmergency(input: $input) {\n    __typename\n    id\n    startDate\n    startTime\n    terminationDate\n    terminationTime\n    callSign\n    aircraftType\n    tailNumber\n    soulsOnBoard\n    fuelRemainingTimeInMinutes\n    systemAffected\n    details\n  }\n}"

  public var input: DeleteEmergencyInput

  public init(input: DeleteEmergencyInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteEmergency", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteEmergency.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteEmergency: DeleteEmergency? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteEmergency": deleteEmergency.flatMap { $0.snapshot }])
    }

    public var deleteEmergency: DeleteEmergency? {
      get {
        return (snapshot["deleteEmergency"] as? Snapshot).flatMap { DeleteEmergency(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteEmergency")
      }
    }

    public struct DeleteEmergency: GraphQLSelectionSet {
      public static let possibleTypes = ["Emergency"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("startDate", type: .scalar(Int.self)),
        GraphQLField("startTime", type: .scalar(Int.self)),
        GraphQLField("terminationDate", type: .scalar(Int.self)),
        GraphQLField("terminationTime", type: .scalar(Int.self)),
        GraphQLField("callSign", type: .scalar(String.self)),
        GraphQLField("aircraftType", type: .scalar(String.self)),
        GraphQLField("tailNumber", type: .scalar(String.self)),
        GraphQLField("soulsOnBoard", type: .scalar(String.self)),
        GraphQLField("fuelRemainingTimeInMinutes", type: .scalar(Int.self)),
        GraphQLField("systemAffected", type: .scalar(String.self)),
        GraphQLField("details", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, startDate: Int? = nil, startTime: Int? = nil, terminationDate: Int? = nil, terminationTime: Int? = nil, callSign: String? = nil, aircraftType: String? = nil, tailNumber: String? = nil, soulsOnBoard: String? = nil, fuelRemainingTimeInMinutes: Int? = nil, systemAffected: String? = nil, details: String? = nil) {
        self.init(snapshot: ["__typename": "Emergency", "id": id, "startDate": startDate, "startTime": startTime, "terminationDate": terminationDate, "terminationTime": terminationTime, "callSign": callSign, "aircraftType": aircraftType, "tailNumber": tailNumber, "soulsOnBoard": soulsOnBoard, "fuelRemainingTimeInMinutes": fuelRemainingTimeInMinutes, "systemAffected": systemAffected, "details": details])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var startDate: Int? {
        get {
          return snapshot["startDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var startTime: Int? {
        get {
          return snapshot["startTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startTime")
        }
      }

      public var terminationDate: Int? {
        get {
          return snapshot["terminationDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationDate")
        }
      }

      public var terminationTime: Int? {
        get {
          return snapshot["terminationTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationTime")
        }
      }

      public var callSign: String? {
        get {
          return snapshot["callSign"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "callSign")
        }
      }

      public var aircraftType: String? {
        get {
          return snapshot["aircraftType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "aircraftType")
        }
      }

      public var tailNumber: String? {
        get {
          return snapshot["tailNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "tailNumber")
        }
      }

      public var soulsOnBoard: String? {
        get {
          return snapshot["soulsOnBoard"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "soulsOnBoard")
        }
      }

      public var fuelRemainingTimeInMinutes: Int? {
        get {
          return snapshot["fuelRemainingTimeInMinutes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "fuelRemainingTimeInMinutes")
        }
      }

      public var systemAffected: String? {
        get {
          return snapshot["systemAffected"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "systemAffected")
        }
      }

      public var details: String? {
        get {
          return snapshot["details"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "details")
        }
      }
    }
  }
}

public final class GetSofStatusQuery: GraphQLQuery {
  public static let operationString =
    "query GetSofStatus($id: ID!) {\n  getSOFStatus(id: $id) {\n    __typename\n    id\n    u2Status\n    t38Status\n    u2Restrictions\n    t38Restrictions\n    u2Alternates\n    t38Alternates\n    navaids\n    approachLights\n    localAirfields\n    birdStatus\n    fits\n    activeRunway\n    runwayConditions\n    date\n    time\n    sofOnDuty\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getSOFStatus", arguments: ["id": GraphQLVariable("id")], type: .object(GetSofStatus.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getSofStatus: GetSofStatus? = nil) {
      self.init(snapshot: ["__typename": "Query", "getSOFStatus": getSofStatus.flatMap { $0.snapshot }])
    }

    public var getSofStatus: GetSofStatus? {
      get {
        return (snapshot["getSOFStatus"] as? Snapshot).flatMap { GetSofStatus(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getSOFStatus")
      }
    }

    public struct GetSofStatus: GraphQLSelectionSet {
      public static let possibleTypes = ["SOFStatus"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("u2Status", type: .scalar(String.self)),
        GraphQLField("t38Status", type: .scalar(String.self)),
        GraphQLField("u2Restrictions", type: .scalar(String.self)),
        GraphQLField("t38Restrictions", type: .scalar(String.self)),
        GraphQLField("u2Alternates", type: .scalar(String.self)),
        GraphQLField("t38Alternates", type: .scalar(String.self)),
        GraphQLField("navaids", type: .scalar(String.self)),
        GraphQLField("approachLights", type: .scalar(String.self)),
        GraphQLField("localAirfields", type: .scalar(String.self)),
        GraphQLField("birdStatus", type: .scalar(String.self)),
        GraphQLField("fits", type: .scalar(String.self)),
        GraphQLField("activeRunway", type: .scalar(String.self)),
        GraphQLField("runwayConditions", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("time", type: .scalar(String.self)),
        GraphQLField("sofOnDuty", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, u2Status: String? = nil, t38Status: String? = nil, u2Restrictions: String? = nil, t38Restrictions: String? = nil, u2Alternates: String? = nil, t38Alternates: String? = nil, navaids: String? = nil, approachLights: String? = nil, localAirfields: String? = nil, birdStatus: String? = nil, fits: String? = nil, activeRunway: String? = nil, runwayConditions: String? = nil, date: String? = nil, time: String? = nil, sofOnDuty: String? = nil) {
        self.init(snapshot: ["__typename": "SOFStatus", "id": id, "u2Status": u2Status, "t38Status": t38Status, "u2Restrictions": u2Restrictions, "t38Restrictions": t38Restrictions, "u2Alternates": u2Alternates, "t38Alternates": t38Alternates, "navaids": navaids, "approachLights": approachLights, "localAirfields": localAirfields, "birdStatus": birdStatus, "fits": fits, "activeRunway": activeRunway, "runwayConditions": runwayConditions, "date": date, "time": time, "sofOnDuty": sofOnDuty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var u2Status: String? {
        get {
          return snapshot["u2Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Status")
        }
      }

      public var t38Status: String? {
        get {
          return snapshot["t38Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Status")
        }
      }

      public var u2Restrictions: String? {
        get {
          return snapshot["u2Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Restrictions")
        }
      }

      public var t38Restrictions: String? {
        get {
          return snapshot["t38Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Restrictions")
        }
      }

      public var u2Alternates: String? {
        get {
          return snapshot["u2Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Alternates")
        }
      }

      public var t38Alternates: String? {
        get {
          return snapshot["t38Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Alternates")
        }
      }

      public var navaids: String? {
        get {
          return snapshot["navaids"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "navaids")
        }
      }

      public var approachLights: String? {
        get {
          return snapshot["approachLights"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "approachLights")
        }
      }

      public var localAirfields: String? {
        get {
          return snapshot["localAirfields"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "localAirfields")
        }
      }

      public var birdStatus: String? {
        get {
          return snapshot["birdStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birdStatus")
        }
      }

      public var fits: String? {
        get {
          return snapshot["fits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fits")
        }
      }

      public var activeRunway: String? {
        get {
          return snapshot["activeRunway"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "activeRunway")
        }
      }

      public var runwayConditions: String? {
        get {
          return snapshot["runwayConditions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "runwayConditions")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var sofOnDuty: String? {
        get {
          return snapshot["sofOnDuty"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sofOnDuty")
        }
      }
    }
  }
}

public final class ListSofStatussQuery: GraphQLQuery {
  public static let operationString =
    "query ListSofStatuss($filter: ModelSOFStatusFilterInput, $limit: Int, $nextToken: String) {\n  listSOFStatuss(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      u2Status\n      t38Status\n      u2Restrictions\n      t38Restrictions\n      u2Alternates\n      t38Alternates\n      navaids\n      approachLights\n      localAirfields\n      birdStatus\n      fits\n      activeRunway\n      runwayConditions\n      date\n      time\n      sofOnDuty\n    }\n    nextToken\n  }\n}"

  public var filter: ModelSOFStatusFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelSOFStatusFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listSOFStatuss", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListSofStatuss.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listSofStatuss: ListSofStatuss? = nil) {
      self.init(snapshot: ["__typename": "Query", "listSOFStatuss": listSofStatuss.flatMap { $0.snapshot }])
    }

    public var listSofStatuss: ListSofStatuss? {
      get {
        return (snapshot["listSOFStatuss"] as? Snapshot).flatMap { ListSofStatuss(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listSOFStatuss")
      }
    }

    public struct ListSofStatuss: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelSOFStatusConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelSOFStatusConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["SOFStatus"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("u2Status", type: .scalar(String.self)),
          GraphQLField("t38Status", type: .scalar(String.self)),
          GraphQLField("u2Restrictions", type: .scalar(String.self)),
          GraphQLField("t38Restrictions", type: .scalar(String.self)),
          GraphQLField("u2Alternates", type: .scalar(String.self)),
          GraphQLField("t38Alternates", type: .scalar(String.self)),
          GraphQLField("navaids", type: .scalar(String.self)),
          GraphQLField("approachLights", type: .scalar(String.self)),
          GraphQLField("localAirfields", type: .scalar(String.self)),
          GraphQLField("birdStatus", type: .scalar(String.self)),
          GraphQLField("fits", type: .scalar(String.self)),
          GraphQLField("activeRunway", type: .scalar(String.self)),
          GraphQLField("runwayConditions", type: .scalar(String.self)),
          GraphQLField("date", type: .scalar(String.self)),
          GraphQLField("time", type: .scalar(String.self)),
          GraphQLField("sofOnDuty", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, u2Status: String? = nil, t38Status: String? = nil, u2Restrictions: String? = nil, t38Restrictions: String? = nil, u2Alternates: String? = nil, t38Alternates: String? = nil, navaids: String? = nil, approachLights: String? = nil, localAirfields: String? = nil, birdStatus: String? = nil, fits: String? = nil, activeRunway: String? = nil, runwayConditions: String? = nil, date: String? = nil, time: String? = nil, sofOnDuty: String? = nil) {
          self.init(snapshot: ["__typename": "SOFStatus", "id": id, "u2Status": u2Status, "t38Status": t38Status, "u2Restrictions": u2Restrictions, "t38Restrictions": t38Restrictions, "u2Alternates": u2Alternates, "t38Alternates": t38Alternates, "navaids": navaids, "approachLights": approachLights, "localAirfields": localAirfields, "birdStatus": birdStatus, "fits": fits, "activeRunway": activeRunway, "runwayConditions": runwayConditions, "date": date, "time": time, "sofOnDuty": sofOnDuty])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var u2Status: String? {
          get {
            return snapshot["u2Status"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "u2Status")
          }
        }

        public var t38Status: String? {
          get {
            return snapshot["t38Status"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "t38Status")
          }
        }

        public var u2Restrictions: String? {
          get {
            return snapshot["u2Restrictions"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "u2Restrictions")
          }
        }

        public var t38Restrictions: String? {
          get {
            return snapshot["t38Restrictions"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "t38Restrictions")
          }
        }

        public var u2Alternates: String? {
          get {
            return snapshot["u2Alternates"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "u2Alternates")
          }
        }

        public var t38Alternates: String? {
          get {
            return snapshot["t38Alternates"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "t38Alternates")
          }
        }

        public var navaids: String? {
          get {
            return snapshot["navaids"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "navaids")
          }
        }

        public var approachLights: String? {
          get {
            return snapshot["approachLights"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "approachLights")
          }
        }

        public var localAirfields: String? {
          get {
            return snapshot["localAirfields"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "localAirfields")
          }
        }

        public var birdStatus: String? {
          get {
            return snapshot["birdStatus"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "birdStatus")
          }
        }

        public var fits: String? {
          get {
            return snapshot["fits"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "fits")
          }
        }

        public var activeRunway: String? {
          get {
            return snapshot["activeRunway"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "activeRunway")
          }
        }

        public var runwayConditions: String? {
          get {
            return snapshot["runwayConditions"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "runwayConditions")
          }
        }

        public var date: String? {
          get {
            return snapshot["date"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var time: String? {
          get {
            return snapshot["time"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }

        public var sofOnDuty: String? {
          get {
            return snapshot["sofOnDuty"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sofOnDuty")
          }
        }
      }
    }
  }
}

public final class GetChecklistQuery: GraphQLQuery {
  public static let operationString =
    "query GetChecklist($id: ID!) {\n  getChecklist(id: $id) {\n    __typename\n    id\n    name\n    items\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getChecklist", arguments: ["id": GraphQLVariable("id")], type: .object(GetChecklist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getChecklist: GetChecklist? = nil) {
      self.init(snapshot: ["__typename": "Query", "getChecklist": getChecklist.flatMap { $0.snapshot }])
    }

    public var getChecklist: GetChecklist? {
      get {
        return (snapshot["getChecklist"] as? Snapshot).flatMap { GetChecklist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getChecklist")
      }
    }

    public struct GetChecklist: GraphQLSelectionSet {
      public static let possibleTypes = ["Checklist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, items: [String?]? = nil) {
        self.init(snapshot: ["__typename": "Checklist", "id": id, "name": name, "items": items])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var items: [String?]? {
        get {
          return snapshot["items"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "items")
        }
      }
    }
  }
}

public final class ListChecklistsQuery: GraphQLQuery {
  public static let operationString =
    "query ListChecklists($filter: ModelChecklistFilterInput, $limit: Int, $nextToken: String) {\n  listChecklists(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      items\n    }\n    nextToken\n  }\n}"

  public var filter: ModelChecklistFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelChecklistFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listChecklists", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListChecklist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listChecklists: ListChecklist? = nil) {
      self.init(snapshot: ["__typename": "Query", "listChecklists": listChecklists.flatMap { $0.snapshot }])
    }

    public var listChecklists: ListChecklist? {
      get {
        return (snapshot["listChecklists"] as? Snapshot).flatMap { ListChecklist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listChecklists")
      }
    }

    public struct ListChecklist: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelChecklistConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelChecklistConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Checklist"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("items", type: .list(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil, items: [String?]? = nil) {
          self.init(snapshot: ["__typename": "Checklist", "id": id, "name": name, "items": items])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var items: [String?]? {
          get {
            return snapshot["items"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "items")
          }
        }
      }
    }
  }
}

public final class GetNotesQuery: GraphQLQuery {
  public static let operationString =
    "query GetNotes($id: ID!) {\n  getNotes(id: $id) {\n    __typename\n    note\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getNotes", arguments: ["id": GraphQLVariable("id")], type: .object(GetNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getNotes: GetNote? = nil) {
      self.init(snapshot: ["__typename": "Query", "getNotes": getNotes.flatMap { $0.snapshot }])
    }

    public var getNotes: GetNote? {
      get {
        return (snapshot["getNotes"] as? Snapshot).flatMap { GetNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getNotes")
      }
    }

    public struct GetNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(note: String? = nil) {
        self.init(snapshot: ["__typename": "Notes", "note": note])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var note: String? {
        get {
          return snapshot["note"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }
    }
  }
}

public final class ListNotessQuery: GraphQLQuery {
  public static let operationString =
    "query ListNotess($filter: ModelNotesFilterInput, $limit: Int, $nextToken: String) {\n  listNotess(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      note\n    }\n    nextToken\n  }\n}"

  public var filter: ModelNotesFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelNotesFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listNotess", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListNotess.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listNotess: ListNotess? = nil) {
      self.init(snapshot: ["__typename": "Query", "listNotess": listNotess.flatMap { $0.snapshot }])
    }

    public var listNotess: ListNotess? {
      get {
        return (snapshot["listNotess"] as? Snapshot).flatMap { ListNotess(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listNotess")
      }
    }

    public struct ListNotess: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelNotesConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelNotesConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Notes"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("note", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(note: String? = nil) {
          self.init(snapshot: ["__typename": "Notes", "note": note])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var note: String? {
          get {
            return snapshot["note"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "note")
          }
        }
      }
    }
  }
}

public final class GetContactsQuery: GraphQLQuery {
  public static let operationString =
    "query GetContacts($id: ID!) {\n  getContacts(id: $id) {\n    __typename\n    category\n    name\n    phoneNumber\n    email\n    dsn\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getContacts", arguments: ["id": GraphQLVariable("id")], type: .object(GetContact.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getContacts: GetContact? = nil) {
      self.init(snapshot: ["__typename": "Query", "getContacts": getContacts.flatMap { $0.snapshot }])
    }

    public var getContacts: GetContact? {
      get {
        return (snapshot["getContacts"] as? Snapshot).flatMap { GetContact(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getContacts")
      }
    }

    public struct GetContact: GraphQLSelectionSet {
      public static let possibleTypes = ["Contacts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .scalar(String.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("dsn", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: String? = nil, name: String? = nil, phoneNumber: String? = nil, email: String? = nil, dsn: Bool? = nil) {
        self.init(snapshot: ["__typename": "Contacts", "category": category, "name": name, "phoneNumber": phoneNumber, "email": email, "dsn": dsn])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: String? {
        get {
          return snapshot["category"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var dsn: Bool? {
        get {
          return snapshot["dsn"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "dsn")
        }
      }
    }
  }
}

public final class ListContactssQuery: GraphQLQuery {
  public static let operationString =
    "query ListContactss($filter: ModelContactsFilterInput, $limit: Int, $nextToken: String) {\n  listContactss(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      category\n      name\n      phoneNumber\n      email\n      dsn\n    }\n    nextToken\n  }\n}"

  public var filter: ModelContactsFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelContactsFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listContactss", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListContactss.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listContactss: ListContactss? = nil) {
      self.init(snapshot: ["__typename": "Query", "listContactss": listContactss.flatMap { $0.snapshot }])
    }

    public var listContactss: ListContactss? {
      get {
        return (snapshot["listContactss"] as? Snapshot).flatMap { ListContactss(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listContactss")
      }
    }

    public struct ListContactss: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelContactsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelContactsConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Contacts"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("phoneNumber", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("dsn", type: .scalar(Bool.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: String? = nil, name: String? = nil, phoneNumber: String? = nil, email: String? = nil, dsn: Bool? = nil) {
          self.init(snapshot: ["__typename": "Contacts", "category": category, "name": name, "phoneNumber": phoneNumber, "email": email, "dsn": dsn])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: String? {
          get {
            return snapshot["category"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var phoneNumber: String? {
          get {
            return snapshot["phoneNumber"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phoneNumber")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var dsn: Bool? {
          get {
            return snapshot["dsn"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "dsn")
          }
        }
      }
    }
  }
}

public final class GetEmergencyQuery: GraphQLQuery {
  public static let operationString =
    "query GetEmergency($id: ID!) {\n  getEmergency(id: $id) {\n    __typename\n    id\n    startDate\n    startTime\n    terminationDate\n    terminationTime\n    callSign\n    aircraftType\n    tailNumber\n    soulsOnBoard\n    fuelRemainingTimeInMinutes\n    systemAffected\n    details\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getEmergency", arguments: ["id": GraphQLVariable("id")], type: .object(GetEmergency.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getEmergency: GetEmergency? = nil) {
      self.init(snapshot: ["__typename": "Query", "getEmergency": getEmergency.flatMap { $0.snapshot }])
    }

    public var getEmergency: GetEmergency? {
      get {
        return (snapshot["getEmergency"] as? Snapshot).flatMap { GetEmergency(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getEmergency")
      }
    }

    public struct GetEmergency: GraphQLSelectionSet {
      public static let possibleTypes = ["Emergency"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("startDate", type: .scalar(Int.self)),
        GraphQLField("startTime", type: .scalar(Int.self)),
        GraphQLField("terminationDate", type: .scalar(Int.self)),
        GraphQLField("terminationTime", type: .scalar(Int.self)),
        GraphQLField("callSign", type: .scalar(String.self)),
        GraphQLField("aircraftType", type: .scalar(String.self)),
        GraphQLField("tailNumber", type: .scalar(String.self)),
        GraphQLField("soulsOnBoard", type: .scalar(String.self)),
        GraphQLField("fuelRemainingTimeInMinutes", type: .scalar(Int.self)),
        GraphQLField("systemAffected", type: .scalar(String.self)),
        GraphQLField("details", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, startDate: Int? = nil, startTime: Int? = nil, terminationDate: Int? = nil, terminationTime: Int? = nil, callSign: String? = nil, aircraftType: String? = nil, tailNumber: String? = nil, soulsOnBoard: String? = nil, fuelRemainingTimeInMinutes: Int? = nil, systemAffected: String? = nil, details: String? = nil) {
        self.init(snapshot: ["__typename": "Emergency", "id": id, "startDate": startDate, "startTime": startTime, "terminationDate": terminationDate, "terminationTime": terminationTime, "callSign": callSign, "aircraftType": aircraftType, "tailNumber": tailNumber, "soulsOnBoard": soulsOnBoard, "fuelRemainingTimeInMinutes": fuelRemainingTimeInMinutes, "systemAffected": systemAffected, "details": details])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var startDate: Int? {
        get {
          return snapshot["startDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var startTime: Int? {
        get {
          return snapshot["startTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startTime")
        }
      }

      public var terminationDate: Int? {
        get {
          return snapshot["terminationDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationDate")
        }
      }

      public var terminationTime: Int? {
        get {
          return snapshot["terminationTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationTime")
        }
      }

      public var callSign: String? {
        get {
          return snapshot["callSign"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "callSign")
        }
      }

      public var aircraftType: String? {
        get {
          return snapshot["aircraftType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "aircraftType")
        }
      }

      public var tailNumber: String? {
        get {
          return snapshot["tailNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "tailNumber")
        }
      }

      public var soulsOnBoard: String? {
        get {
          return snapshot["soulsOnBoard"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "soulsOnBoard")
        }
      }

      public var fuelRemainingTimeInMinutes: Int? {
        get {
          return snapshot["fuelRemainingTimeInMinutes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "fuelRemainingTimeInMinutes")
        }
      }

      public var systemAffected: String? {
        get {
          return snapshot["systemAffected"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "systemAffected")
        }
      }

      public var details: String? {
        get {
          return snapshot["details"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "details")
        }
      }
    }
  }
}

public final class ListEmergencysQuery: GraphQLQuery {
  public static let operationString =
    "query ListEmergencys($filter: ModelEmergencyFilterInput, $limit: Int, $nextToken: String) {\n  listEmergencys(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      startDate\n      startTime\n      terminationDate\n      terminationTime\n      callSign\n      aircraftType\n      tailNumber\n      soulsOnBoard\n      fuelRemainingTimeInMinutes\n      systemAffected\n      details\n    }\n    nextToken\n  }\n}"

  public var filter: ModelEmergencyFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelEmergencyFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listEmergencys", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListEmergency.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listEmergencys: ListEmergency? = nil) {
      self.init(snapshot: ["__typename": "Query", "listEmergencys": listEmergencys.flatMap { $0.snapshot }])
    }

    public var listEmergencys: ListEmergency? {
      get {
        return (snapshot["listEmergencys"] as? Snapshot).flatMap { ListEmergency(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listEmergencys")
      }
    }

    public struct ListEmergency: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelEmergencyConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelEmergencyConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Emergency"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("startDate", type: .scalar(Int.self)),
          GraphQLField("startTime", type: .scalar(Int.self)),
          GraphQLField("terminationDate", type: .scalar(Int.self)),
          GraphQLField("terminationTime", type: .scalar(Int.self)),
          GraphQLField("callSign", type: .scalar(String.self)),
          GraphQLField("aircraftType", type: .scalar(String.self)),
          GraphQLField("tailNumber", type: .scalar(String.self)),
          GraphQLField("soulsOnBoard", type: .scalar(String.self)),
          GraphQLField("fuelRemainingTimeInMinutes", type: .scalar(Int.self)),
          GraphQLField("systemAffected", type: .scalar(String.self)),
          GraphQLField("details", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, startDate: Int? = nil, startTime: Int? = nil, terminationDate: Int? = nil, terminationTime: Int? = nil, callSign: String? = nil, aircraftType: String? = nil, tailNumber: String? = nil, soulsOnBoard: String? = nil, fuelRemainingTimeInMinutes: Int? = nil, systemAffected: String? = nil, details: String? = nil) {
          self.init(snapshot: ["__typename": "Emergency", "id": id, "startDate": startDate, "startTime": startTime, "terminationDate": terminationDate, "terminationTime": terminationTime, "callSign": callSign, "aircraftType": aircraftType, "tailNumber": tailNumber, "soulsOnBoard": soulsOnBoard, "fuelRemainingTimeInMinutes": fuelRemainingTimeInMinutes, "systemAffected": systemAffected, "details": details])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var startDate: Int? {
          get {
            return snapshot["startDate"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startDate")
          }
        }

        public var startTime: Int? {
          get {
            return snapshot["startTime"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startTime")
          }
        }

        public var terminationDate: Int? {
          get {
            return snapshot["terminationDate"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "terminationDate")
          }
        }

        public var terminationTime: Int? {
          get {
            return snapshot["terminationTime"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "terminationTime")
          }
        }

        public var callSign: String? {
          get {
            return snapshot["callSign"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "callSign")
          }
        }

        public var aircraftType: String? {
          get {
            return snapshot["aircraftType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "aircraftType")
          }
        }

        public var tailNumber: String? {
          get {
            return snapshot["tailNumber"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "tailNumber")
          }
        }

        public var soulsOnBoard: String? {
          get {
            return snapshot["soulsOnBoard"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "soulsOnBoard")
          }
        }

        public var fuelRemainingTimeInMinutes: Int? {
          get {
            return snapshot["fuelRemainingTimeInMinutes"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "fuelRemainingTimeInMinutes")
          }
        }

        public var systemAffected: String? {
          get {
            return snapshot["systemAffected"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "systemAffected")
          }
        }

        public var details: String? {
          get {
            return snapshot["details"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "details")
          }
        }
      }
    }
  }
}

public final class OnCreateSofStatusSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateSofStatus {\n  onCreateSOFStatus {\n    __typename\n    id\n    u2Status\n    t38Status\n    u2Restrictions\n    t38Restrictions\n    u2Alternates\n    t38Alternates\n    navaids\n    approachLights\n    localAirfields\n    birdStatus\n    fits\n    activeRunway\n    runwayConditions\n    date\n    time\n    sofOnDuty\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateSOFStatus", type: .object(OnCreateSofStatus.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateSofStatus: OnCreateSofStatus? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateSOFStatus": onCreateSofStatus.flatMap { $0.snapshot }])
    }

    public var onCreateSofStatus: OnCreateSofStatus? {
      get {
        return (snapshot["onCreateSOFStatus"] as? Snapshot).flatMap { OnCreateSofStatus(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateSOFStatus")
      }
    }

    public struct OnCreateSofStatus: GraphQLSelectionSet {
      public static let possibleTypes = ["SOFStatus"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("u2Status", type: .scalar(String.self)),
        GraphQLField("t38Status", type: .scalar(String.self)),
        GraphQLField("u2Restrictions", type: .scalar(String.self)),
        GraphQLField("t38Restrictions", type: .scalar(String.self)),
        GraphQLField("u2Alternates", type: .scalar(String.self)),
        GraphQLField("t38Alternates", type: .scalar(String.self)),
        GraphQLField("navaids", type: .scalar(String.self)),
        GraphQLField("approachLights", type: .scalar(String.self)),
        GraphQLField("localAirfields", type: .scalar(String.self)),
        GraphQLField("birdStatus", type: .scalar(String.self)),
        GraphQLField("fits", type: .scalar(String.self)),
        GraphQLField("activeRunway", type: .scalar(String.self)),
        GraphQLField("runwayConditions", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("time", type: .scalar(String.self)),
        GraphQLField("sofOnDuty", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, u2Status: String? = nil, t38Status: String? = nil, u2Restrictions: String? = nil, t38Restrictions: String? = nil, u2Alternates: String? = nil, t38Alternates: String? = nil, navaids: String? = nil, approachLights: String? = nil, localAirfields: String? = nil, birdStatus: String? = nil, fits: String? = nil, activeRunway: String? = nil, runwayConditions: String? = nil, date: String? = nil, time: String? = nil, sofOnDuty: String? = nil) {
        self.init(snapshot: ["__typename": "SOFStatus", "id": id, "u2Status": u2Status, "t38Status": t38Status, "u2Restrictions": u2Restrictions, "t38Restrictions": t38Restrictions, "u2Alternates": u2Alternates, "t38Alternates": t38Alternates, "navaids": navaids, "approachLights": approachLights, "localAirfields": localAirfields, "birdStatus": birdStatus, "fits": fits, "activeRunway": activeRunway, "runwayConditions": runwayConditions, "date": date, "time": time, "sofOnDuty": sofOnDuty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var u2Status: String? {
        get {
          return snapshot["u2Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Status")
        }
      }

      public var t38Status: String? {
        get {
          return snapshot["t38Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Status")
        }
      }

      public var u2Restrictions: String? {
        get {
          return snapshot["u2Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Restrictions")
        }
      }

      public var t38Restrictions: String? {
        get {
          return snapshot["t38Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Restrictions")
        }
      }

      public var u2Alternates: String? {
        get {
          return snapshot["u2Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Alternates")
        }
      }

      public var t38Alternates: String? {
        get {
          return snapshot["t38Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Alternates")
        }
      }

      public var navaids: String? {
        get {
          return snapshot["navaids"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "navaids")
        }
      }

      public var approachLights: String? {
        get {
          return snapshot["approachLights"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "approachLights")
        }
      }

      public var localAirfields: String? {
        get {
          return snapshot["localAirfields"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "localAirfields")
        }
      }

      public var birdStatus: String? {
        get {
          return snapshot["birdStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birdStatus")
        }
      }

      public var fits: String? {
        get {
          return snapshot["fits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fits")
        }
      }

      public var activeRunway: String? {
        get {
          return snapshot["activeRunway"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "activeRunway")
        }
      }

      public var runwayConditions: String? {
        get {
          return snapshot["runwayConditions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "runwayConditions")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var sofOnDuty: String? {
        get {
          return snapshot["sofOnDuty"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sofOnDuty")
        }
      }
    }
  }
}

public final class OnUpdateSofStatusSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateSofStatus {\n  onUpdateSOFStatus {\n    __typename\n    id\n    u2Status\n    t38Status\n    u2Restrictions\n    t38Restrictions\n    u2Alternates\n    t38Alternates\n    navaids\n    approachLights\n    localAirfields\n    birdStatus\n    fits\n    activeRunway\n    runwayConditions\n    date\n    time\n    sofOnDuty\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateSOFStatus", type: .object(OnUpdateSofStatus.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateSofStatus: OnUpdateSofStatus? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateSOFStatus": onUpdateSofStatus.flatMap { $0.snapshot }])
    }

    public var onUpdateSofStatus: OnUpdateSofStatus? {
      get {
        return (snapshot["onUpdateSOFStatus"] as? Snapshot).flatMap { OnUpdateSofStatus(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateSOFStatus")
      }
    }

    public struct OnUpdateSofStatus: GraphQLSelectionSet {
      public static let possibleTypes = ["SOFStatus"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("u2Status", type: .scalar(String.self)),
        GraphQLField("t38Status", type: .scalar(String.self)),
        GraphQLField("u2Restrictions", type: .scalar(String.self)),
        GraphQLField("t38Restrictions", type: .scalar(String.self)),
        GraphQLField("u2Alternates", type: .scalar(String.self)),
        GraphQLField("t38Alternates", type: .scalar(String.self)),
        GraphQLField("navaids", type: .scalar(String.self)),
        GraphQLField("approachLights", type: .scalar(String.self)),
        GraphQLField("localAirfields", type: .scalar(String.self)),
        GraphQLField("birdStatus", type: .scalar(String.self)),
        GraphQLField("fits", type: .scalar(String.self)),
        GraphQLField("activeRunway", type: .scalar(String.self)),
        GraphQLField("runwayConditions", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("time", type: .scalar(String.self)),
        GraphQLField("sofOnDuty", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, u2Status: String? = nil, t38Status: String? = nil, u2Restrictions: String? = nil, t38Restrictions: String? = nil, u2Alternates: String? = nil, t38Alternates: String? = nil, navaids: String? = nil, approachLights: String? = nil, localAirfields: String? = nil, birdStatus: String? = nil, fits: String? = nil, activeRunway: String? = nil, runwayConditions: String? = nil, date: String? = nil, time: String? = nil, sofOnDuty: String? = nil) {
        self.init(snapshot: ["__typename": "SOFStatus", "id": id, "u2Status": u2Status, "t38Status": t38Status, "u2Restrictions": u2Restrictions, "t38Restrictions": t38Restrictions, "u2Alternates": u2Alternates, "t38Alternates": t38Alternates, "navaids": navaids, "approachLights": approachLights, "localAirfields": localAirfields, "birdStatus": birdStatus, "fits": fits, "activeRunway": activeRunway, "runwayConditions": runwayConditions, "date": date, "time": time, "sofOnDuty": sofOnDuty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var u2Status: String? {
        get {
          return snapshot["u2Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Status")
        }
      }

      public var t38Status: String? {
        get {
          return snapshot["t38Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Status")
        }
      }

      public var u2Restrictions: String? {
        get {
          return snapshot["u2Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Restrictions")
        }
      }

      public var t38Restrictions: String? {
        get {
          return snapshot["t38Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Restrictions")
        }
      }

      public var u2Alternates: String? {
        get {
          return snapshot["u2Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Alternates")
        }
      }

      public var t38Alternates: String? {
        get {
          return snapshot["t38Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Alternates")
        }
      }

      public var navaids: String? {
        get {
          return snapshot["navaids"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "navaids")
        }
      }

      public var approachLights: String? {
        get {
          return snapshot["approachLights"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "approachLights")
        }
      }

      public var localAirfields: String? {
        get {
          return snapshot["localAirfields"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "localAirfields")
        }
      }

      public var birdStatus: String? {
        get {
          return snapshot["birdStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birdStatus")
        }
      }

      public var fits: String? {
        get {
          return snapshot["fits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fits")
        }
      }

      public var activeRunway: String? {
        get {
          return snapshot["activeRunway"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "activeRunway")
        }
      }

      public var runwayConditions: String? {
        get {
          return snapshot["runwayConditions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "runwayConditions")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var sofOnDuty: String? {
        get {
          return snapshot["sofOnDuty"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sofOnDuty")
        }
      }
    }
  }
}

public final class OnDeleteSofStatusSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteSofStatus {\n  onDeleteSOFStatus {\n    __typename\n    id\n    u2Status\n    t38Status\n    u2Restrictions\n    t38Restrictions\n    u2Alternates\n    t38Alternates\n    navaids\n    approachLights\n    localAirfields\n    birdStatus\n    fits\n    activeRunway\n    runwayConditions\n    date\n    time\n    sofOnDuty\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteSOFStatus", type: .object(OnDeleteSofStatus.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteSofStatus: OnDeleteSofStatus? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteSOFStatus": onDeleteSofStatus.flatMap { $0.snapshot }])
    }

    public var onDeleteSofStatus: OnDeleteSofStatus? {
      get {
        return (snapshot["onDeleteSOFStatus"] as? Snapshot).flatMap { OnDeleteSofStatus(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteSOFStatus")
      }
    }

    public struct OnDeleteSofStatus: GraphQLSelectionSet {
      public static let possibleTypes = ["SOFStatus"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("u2Status", type: .scalar(String.self)),
        GraphQLField("t38Status", type: .scalar(String.self)),
        GraphQLField("u2Restrictions", type: .scalar(String.self)),
        GraphQLField("t38Restrictions", type: .scalar(String.self)),
        GraphQLField("u2Alternates", type: .scalar(String.self)),
        GraphQLField("t38Alternates", type: .scalar(String.self)),
        GraphQLField("navaids", type: .scalar(String.self)),
        GraphQLField("approachLights", type: .scalar(String.self)),
        GraphQLField("localAirfields", type: .scalar(String.self)),
        GraphQLField("birdStatus", type: .scalar(String.self)),
        GraphQLField("fits", type: .scalar(String.self)),
        GraphQLField("activeRunway", type: .scalar(String.self)),
        GraphQLField("runwayConditions", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("time", type: .scalar(String.self)),
        GraphQLField("sofOnDuty", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, u2Status: String? = nil, t38Status: String? = nil, u2Restrictions: String? = nil, t38Restrictions: String? = nil, u2Alternates: String? = nil, t38Alternates: String? = nil, navaids: String? = nil, approachLights: String? = nil, localAirfields: String? = nil, birdStatus: String? = nil, fits: String? = nil, activeRunway: String? = nil, runwayConditions: String? = nil, date: String? = nil, time: String? = nil, sofOnDuty: String? = nil) {
        self.init(snapshot: ["__typename": "SOFStatus", "id": id, "u2Status": u2Status, "t38Status": t38Status, "u2Restrictions": u2Restrictions, "t38Restrictions": t38Restrictions, "u2Alternates": u2Alternates, "t38Alternates": t38Alternates, "navaids": navaids, "approachLights": approachLights, "localAirfields": localAirfields, "birdStatus": birdStatus, "fits": fits, "activeRunway": activeRunway, "runwayConditions": runwayConditions, "date": date, "time": time, "sofOnDuty": sofOnDuty])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var u2Status: String? {
        get {
          return snapshot["u2Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Status")
        }
      }

      public var t38Status: String? {
        get {
          return snapshot["t38Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Status")
        }
      }

      public var u2Restrictions: String? {
        get {
          return snapshot["u2Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Restrictions")
        }
      }

      public var t38Restrictions: String? {
        get {
          return snapshot["t38Restrictions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Restrictions")
        }
      }

      public var u2Alternates: String? {
        get {
          return snapshot["u2Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "u2Alternates")
        }
      }

      public var t38Alternates: String? {
        get {
          return snapshot["t38Alternates"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "t38Alternates")
        }
      }

      public var navaids: String? {
        get {
          return snapshot["navaids"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "navaids")
        }
      }

      public var approachLights: String? {
        get {
          return snapshot["approachLights"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "approachLights")
        }
      }

      public var localAirfields: String? {
        get {
          return snapshot["localAirfields"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "localAirfields")
        }
      }

      public var birdStatus: String? {
        get {
          return snapshot["birdStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birdStatus")
        }
      }

      public var fits: String? {
        get {
          return snapshot["fits"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fits")
        }
      }

      public var activeRunway: String? {
        get {
          return snapshot["activeRunway"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "activeRunway")
        }
      }

      public var runwayConditions: String? {
        get {
          return snapshot["runwayConditions"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "runwayConditions")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var sofOnDuty: String? {
        get {
          return snapshot["sofOnDuty"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sofOnDuty")
        }
      }
    }
  }
}

public final class OnCreateChecklistSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateChecklist {\n  onCreateChecklist {\n    __typename\n    id\n    name\n    items\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateChecklist", type: .object(OnCreateChecklist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateChecklist: OnCreateChecklist? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateChecklist": onCreateChecklist.flatMap { $0.snapshot }])
    }

    public var onCreateChecklist: OnCreateChecklist? {
      get {
        return (snapshot["onCreateChecklist"] as? Snapshot).flatMap { OnCreateChecklist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateChecklist")
      }
    }

    public struct OnCreateChecklist: GraphQLSelectionSet {
      public static let possibleTypes = ["Checklist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, items: [String?]? = nil) {
        self.init(snapshot: ["__typename": "Checklist", "id": id, "name": name, "items": items])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var items: [String?]? {
        get {
          return snapshot["items"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "items")
        }
      }
    }
  }
}

public final class OnUpdateChecklistSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateChecklist {\n  onUpdateChecklist {\n    __typename\n    id\n    name\n    items\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateChecklist", type: .object(OnUpdateChecklist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateChecklist: OnUpdateChecklist? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateChecklist": onUpdateChecklist.flatMap { $0.snapshot }])
    }

    public var onUpdateChecklist: OnUpdateChecklist? {
      get {
        return (snapshot["onUpdateChecklist"] as? Snapshot).flatMap { OnUpdateChecklist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateChecklist")
      }
    }

    public struct OnUpdateChecklist: GraphQLSelectionSet {
      public static let possibleTypes = ["Checklist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, items: [String?]? = nil) {
        self.init(snapshot: ["__typename": "Checklist", "id": id, "name": name, "items": items])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var items: [String?]? {
        get {
          return snapshot["items"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "items")
        }
      }
    }
  }
}

public final class OnDeleteChecklistSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteChecklist {\n  onDeleteChecklist {\n    __typename\n    id\n    name\n    items\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteChecklist", type: .object(OnDeleteChecklist.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteChecklist: OnDeleteChecklist? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteChecklist": onDeleteChecklist.flatMap { $0.snapshot }])
    }

    public var onDeleteChecklist: OnDeleteChecklist? {
      get {
        return (snapshot["onDeleteChecklist"] as? Snapshot).flatMap { OnDeleteChecklist(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteChecklist")
      }
    }

    public struct OnDeleteChecklist: GraphQLSelectionSet {
      public static let possibleTypes = ["Checklist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String? = nil, items: [String?]? = nil) {
        self.init(snapshot: ["__typename": "Checklist", "id": id, "name": name, "items": items])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var items: [String?]? {
        get {
          return snapshot["items"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "items")
        }
      }
    }
  }
}

public final class OnCreateNotesSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateNotes {\n  onCreateNotes {\n    __typename\n    note\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateNotes", type: .object(OnCreateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateNotes: OnCreateNote? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateNotes": onCreateNotes.flatMap { $0.snapshot }])
    }

    public var onCreateNotes: OnCreateNote? {
      get {
        return (snapshot["onCreateNotes"] as? Snapshot).flatMap { OnCreateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateNotes")
      }
    }

    public struct OnCreateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(note: String? = nil) {
        self.init(snapshot: ["__typename": "Notes", "note": note])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var note: String? {
        get {
          return snapshot["note"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }
    }
  }
}

public final class OnUpdateNotesSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateNotes {\n  onUpdateNotes {\n    __typename\n    note\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateNotes", type: .object(OnUpdateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateNotes: OnUpdateNote? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateNotes": onUpdateNotes.flatMap { $0.snapshot }])
    }

    public var onUpdateNotes: OnUpdateNote? {
      get {
        return (snapshot["onUpdateNotes"] as? Snapshot).flatMap { OnUpdateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateNotes")
      }
    }

    public struct OnUpdateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(note: String? = nil) {
        self.init(snapshot: ["__typename": "Notes", "note": note])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var note: String? {
        get {
          return snapshot["note"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }
    }
  }
}

public final class OnDeleteNotesSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteNotes {\n  onDeleteNotes {\n    __typename\n    note\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteNotes", type: .object(OnDeleteNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteNotes: OnDeleteNote? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteNotes": onDeleteNotes.flatMap { $0.snapshot }])
    }

    public var onDeleteNotes: OnDeleteNote? {
      get {
        return (snapshot["onDeleteNotes"] as? Snapshot).flatMap { OnDeleteNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteNotes")
      }
    }

    public struct OnDeleteNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("note", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(note: String? = nil) {
        self.init(snapshot: ["__typename": "Notes", "note": note])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var note: String? {
        get {
          return snapshot["note"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "note")
        }
      }
    }
  }
}

public final class OnCreateContactsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateContacts {\n  onCreateContacts {\n    __typename\n    category\n    name\n    phoneNumber\n    email\n    dsn\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateContacts", type: .object(OnCreateContact.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateContacts: OnCreateContact? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateContacts": onCreateContacts.flatMap { $0.snapshot }])
    }

    public var onCreateContacts: OnCreateContact? {
      get {
        return (snapshot["onCreateContacts"] as? Snapshot).flatMap { OnCreateContact(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateContacts")
      }
    }

    public struct OnCreateContact: GraphQLSelectionSet {
      public static let possibleTypes = ["Contacts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .scalar(String.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("dsn", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: String? = nil, name: String? = nil, phoneNumber: String? = nil, email: String? = nil, dsn: Bool? = nil) {
        self.init(snapshot: ["__typename": "Contacts", "category": category, "name": name, "phoneNumber": phoneNumber, "email": email, "dsn": dsn])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: String? {
        get {
          return snapshot["category"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var dsn: Bool? {
        get {
          return snapshot["dsn"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "dsn")
        }
      }
    }
  }
}

public final class OnUpdateContactsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateContacts {\n  onUpdateContacts {\n    __typename\n    category\n    name\n    phoneNumber\n    email\n    dsn\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateContacts", type: .object(OnUpdateContact.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateContacts: OnUpdateContact? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateContacts": onUpdateContacts.flatMap { $0.snapshot }])
    }

    public var onUpdateContacts: OnUpdateContact? {
      get {
        return (snapshot["onUpdateContacts"] as? Snapshot).flatMap { OnUpdateContact(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateContacts")
      }
    }

    public struct OnUpdateContact: GraphQLSelectionSet {
      public static let possibleTypes = ["Contacts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .scalar(String.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("dsn", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: String? = nil, name: String? = nil, phoneNumber: String? = nil, email: String? = nil, dsn: Bool? = nil) {
        self.init(snapshot: ["__typename": "Contacts", "category": category, "name": name, "phoneNumber": phoneNumber, "email": email, "dsn": dsn])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: String? {
        get {
          return snapshot["category"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var dsn: Bool? {
        get {
          return snapshot["dsn"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "dsn")
        }
      }
    }
  }
}

public final class OnDeleteContactsSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteContacts {\n  onDeleteContacts {\n    __typename\n    category\n    name\n    phoneNumber\n    email\n    dsn\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteContacts", type: .object(OnDeleteContact.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteContacts: OnDeleteContact? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteContacts": onDeleteContacts.flatMap { $0.snapshot }])
    }

    public var onDeleteContacts: OnDeleteContact? {
      get {
        return (snapshot["onDeleteContacts"] as? Snapshot).flatMap { OnDeleteContact(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteContacts")
      }
    }

    public struct OnDeleteContact: GraphQLSelectionSet {
      public static let possibleTypes = ["Contacts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .scalar(String.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("phoneNumber", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("dsn", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: String? = nil, name: String? = nil, phoneNumber: String? = nil, email: String? = nil, dsn: Bool? = nil) {
        self.init(snapshot: ["__typename": "Contacts", "category": category, "name": name, "phoneNumber": phoneNumber, "email": email, "dsn": dsn])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: String? {
        get {
          return snapshot["category"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var phoneNumber: String? {
        get {
          return snapshot["phoneNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var dsn: Bool? {
        get {
          return snapshot["dsn"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "dsn")
        }
      }
    }
  }
}

public final class OnCreateEmergencySubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateEmergency {\n  onCreateEmergency {\n    __typename\n    id\n    startDate\n    startTime\n    terminationDate\n    terminationTime\n    callSign\n    aircraftType\n    tailNumber\n    soulsOnBoard\n    fuelRemainingTimeInMinutes\n    systemAffected\n    details\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateEmergency", type: .object(OnCreateEmergency.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateEmergency: OnCreateEmergency? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateEmergency": onCreateEmergency.flatMap { $0.snapshot }])
    }

    public var onCreateEmergency: OnCreateEmergency? {
      get {
        return (snapshot["onCreateEmergency"] as? Snapshot).flatMap { OnCreateEmergency(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateEmergency")
      }
    }

    public struct OnCreateEmergency: GraphQLSelectionSet {
      public static let possibleTypes = ["Emergency"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("startDate", type: .scalar(Int.self)),
        GraphQLField("startTime", type: .scalar(Int.self)),
        GraphQLField("terminationDate", type: .scalar(Int.self)),
        GraphQLField("terminationTime", type: .scalar(Int.self)),
        GraphQLField("callSign", type: .scalar(String.self)),
        GraphQLField("aircraftType", type: .scalar(String.self)),
        GraphQLField("tailNumber", type: .scalar(String.self)),
        GraphQLField("soulsOnBoard", type: .scalar(String.self)),
        GraphQLField("fuelRemainingTimeInMinutes", type: .scalar(Int.self)),
        GraphQLField("systemAffected", type: .scalar(String.self)),
        GraphQLField("details", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, startDate: Int? = nil, startTime: Int? = nil, terminationDate: Int? = nil, terminationTime: Int? = nil, callSign: String? = nil, aircraftType: String? = nil, tailNumber: String? = nil, soulsOnBoard: String? = nil, fuelRemainingTimeInMinutes: Int? = nil, systemAffected: String? = nil, details: String? = nil) {
        self.init(snapshot: ["__typename": "Emergency", "id": id, "startDate": startDate, "startTime": startTime, "terminationDate": terminationDate, "terminationTime": terminationTime, "callSign": callSign, "aircraftType": aircraftType, "tailNumber": tailNumber, "soulsOnBoard": soulsOnBoard, "fuelRemainingTimeInMinutes": fuelRemainingTimeInMinutes, "systemAffected": systemAffected, "details": details])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var startDate: Int? {
        get {
          return snapshot["startDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var startTime: Int? {
        get {
          return snapshot["startTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startTime")
        }
      }

      public var terminationDate: Int? {
        get {
          return snapshot["terminationDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationDate")
        }
      }

      public var terminationTime: Int? {
        get {
          return snapshot["terminationTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationTime")
        }
      }

      public var callSign: String? {
        get {
          return snapshot["callSign"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "callSign")
        }
      }

      public var aircraftType: String? {
        get {
          return snapshot["aircraftType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "aircraftType")
        }
      }

      public var tailNumber: String? {
        get {
          return snapshot["tailNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "tailNumber")
        }
      }

      public var soulsOnBoard: String? {
        get {
          return snapshot["soulsOnBoard"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "soulsOnBoard")
        }
      }

      public var fuelRemainingTimeInMinutes: Int? {
        get {
          return snapshot["fuelRemainingTimeInMinutes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "fuelRemainingTimeInMinutes")
        }
      }

      public var systemAffected: String? {
        get {
          return snapshot["systemAffected"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "systemAffected")
        }
      }

      public var details: String? {
        get {
          return snapshot["details"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "details")
        }
      }
    }
  }
}

public final class OnUpdateEmergencySubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateEmergency {\n  onUpdateEmergency {\n    __typename\n    id\n    startDate\n    startTime\n    terminationDate\n    terminationTime\n    callSign\n    aircraftType\n    tailNumber\n    soulsOnBoard\n    fuelRemainingTimeInMinutes\n    systemAffected\n    details\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateEmergency", type: .object(OnUpdateEmergency.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateEmergency: OnUpdateEmergency? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateEmergency": onUpdateEmergency.flatMap { $0.snapshot }])
    }

    public var onUpdateEmergency: OnUpdateEmergency? {
      get {
        return (snapshot["onUpdateEmergency"] as? Snapshot).flatMap { OnUpdateEmergency(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateEmergency")
      }
    }

    public struct OnUpdateEmergency: GraphQLSelectionSet {
      public static let possibleTypes = ["Emergency"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("startDate", type: .scalar(Int.self)),
        GraphQLField("startTime", type: .scalar(Int.self)),
        GraphQLField("terminationDate", type: .scalar(Int.self)),
        GraphQLField("terminationTime", type: .scalar(Int.self)),
        GraphQLField("callSign", type: .scalar(String.self)),
        GraphQLField("aircraftType", type: .scalar(String.self)),
        GraphQLField("tailNumber", type: .scalar(String.self)),
        GraphQLField("soulsOnBoard", type: .scalar(String.self)),
        GraphQLField("fuelRemainingTimeInMinutes", type: .scalar(Int.self)),
        GraphQLField("systemAffected", type: .scalar(String.self)),
        GraphQLField("details", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, startDate: Int? = nil, startTime: Int? = nil, terminationDate: Int? = nil, terminationTime: Int? = nil, callSign: String? = nil, aircraftType: String? = nil, tailNumber: String? = nil, soulsOnBoard: String? = nil, fuelRemainingTimeInMinutes: Int? = nil, systemAffected: String? = nil, details: String? = nil) {
        self.init(snapshot: ["__typename": "Emergency", "id": id, "startDate": startDate, "startTime": startTime, "terminationDate": terminationDate, "terminationTime": terminationTime, "callSign": callSign, "aircraftType": aircraftType, "tailNumber": tailNumber, "soulsOnBoard": soulsOnBoard, "fuelRemainingTimeInMinutes": fuelRemainingTimeInMinutes, "systemAffected": systemAffected, "details": details])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var startDate: Int? {
        get {
          return snapshot["startDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var startTime: Int? {
        get {
          return snapshot["startTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startTime")
        }
      }

      public var terminationDate: Int? {
        get {
          return snapshot["terminationDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationDate")
        }
      }

      public var terminationTime: Int? {
        get {
          return snapshot["terminationTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationTime")
        }
      }

      public var callSign: String? {
        get {
          return snapshot["callSign"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "callSign")
        }
      }

      public var aircraftType: String? {
        get {
          return snapshot["aircraftType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "aircraftType")
        }
      }

      public var tailNumber: String? {
        get {
          return snapshot["tailNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "tailNumber")
        }
      }

      public var soulsOnBoard: String? {
        get {
          return snapshot["soulsOnBoard"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "soulsOnBoard")
        }
      }

      public var fuelRemainingTimeInMinutes: Int? {
        get {
          return snapshot["fuelRemainingTimeInMinutes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "fuelRemainingTimeInMinutes")
        }
      }

      public var systemAffected: String? {
        get {
          return snapshot["systemAffected"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "systemAffected")
        }
      }

      public var details: String? {
        get {
          return snapshot["details"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "details")
        }
      }
    }
  }
}

public final class OnDeleteEmergencySubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteEmergency {\n  onDeleteEmergency {\n    __typename\n    id\n    startDate\n    startTime\n    terminationDate\n    terminationTime\n    callSign\n    aircraftType\n    tailNumber\n    soulsOnBoard\n    fuelRemainingTimeInMinutes\n    systemAffected\n    details\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteEmergency", type: .object(OnDeleteEmergency.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteEmergency: OnDeleteEmergency? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteEmergency": onDeleteEmergency.flatMap { $0.snapshot }])
    }

    public var onDeleteEmergency: OnDeleteEmergency? {
      get {
        return (snapshot["onDeleteEmergency"] as? Snapshot).flatMap { OnDeleteEmergency(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteEmergency")
      }
    }

    public struct OnDeleteEmergency: GraphQLSelectionSet {
      public static let possibleTypes = ["Emergency"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("startDate", type: .scalar(Int.self)),
        GraphQLField("startTime", type: .scalar(Int.self)),
        GraphQLField("terminationDate", type: .scalar(Int.self)),
        GraphQLField("terminationTime", type: .scalar(Int.self)),
        GraphQLField("callSign", type: .scalar(String.self)),
        GraphQLField("aircraftType", type: .scalar(String.self)),
        GraphQLField("tailNumber", type: .scalar(String.self)),
        GraphQLField("soulsOnBoard", type: .scalar(String.self)),
        GraphQLField("fuelRemainingTimeInMinutes", type: .scalar(Int.self)),
        GraphQLField("systemAffected", type: .scalar(String.self)),
        GraphQLField("details", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, startDate: Int? = nil, startTime: Int? = nil, terminationDate: Int? = nil, terminationTime: Int? = nil, callSign: String? = nil, aircraftType: String? = nil, tailNumber: String? = nil, soulsOnBoard: String? = nil, fuelRemainingTimeInMinutes: Int? = nil, systemAffected: String? = nil, details: String? = nil) {
        self.init(snapshot: ["__typename": "Emergency", "id": id, "startDate": startDate, "startTime": startTime, "terminationDate": terminationDate, "terminationTime": terminationTime, "callSign": callSign, "aircraftType": aircraftType, "tailNumber": tailNumber, "soulsOnBoard": soulsOnBoard, "fuelRemainingTimeInMinutes": fuelRemainingTimeInMinutes, "systemAffected": systemAffected, "details": details])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var startDate: Int? {
        get {
          return snapshot["startDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var startTime: Int? {
        get {
          return snapshot["startTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startTime")
        }
      }

      public var terminationDate: Int? {
        get {
          return snapshot["terminationDate"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationDate")
        }
      }

      public var terminationTime: Int? {
        get {
          return snapshot["terminationTime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "terminationTime")
        }
      }

      public var callSign: String? {
        get {
          return snapshot["callSign"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "callSign")
        }
      }

      public var aircraftType: String? {
        get {
          return snapshot["aircraftType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "aircraftType")
        }
      }

      public var tailNumber: String? {
        get {
          return snapshot["tailNumber"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "tailNumber")
        }
      }

      public var soulsOnBoard: String? {
        get {
          return snapshot["soulsOnBoard"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "soulsOnBoard")
        }
      }

      public var fuelRemainingTimeInMinutes: Int? {
        get {
          return snapshot["fuelRemainingTimeInMinutes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "fuelRemainingTimeInMinutes")
        }
      }

      public var systemAffected: String? {
        get {
          return snapshot["systemAffected"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "systemAffected")
        }
      }

      public var details: String? {
        get {
          return snapshot["details"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "details")
        }
      }
    }
  }
}