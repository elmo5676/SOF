//
//  Notam.swift
//  SOF
//
//  Created by Matthew Elmore on 6/17/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation

struct Notam {
    var stateCode: String	//ISO 3-Letter code of the State
    var stateName: String	//Name of the State
    var id: String			//ID of the NOTAM
    var entity: String		//First 2 letters of the Q-code, if available
    var status: String		//Last 2 letters of the Q-code, if available
    var qCode: String		//Q-code of the NOTAM, if available
    var area: String		//Decoded category first 2 letters of the Q-code
    var subArea: String		//Decoded area of first 2 letters of the Q-code
    var condition: String	//Decoded sub-area of first 2 letters of the Q-code
    var subject: String		//Decoded area of last 2 letters of the Q-code
    var modifier: String	//Decoded sub-area of last 2 letters of the Q-code
    var message: String		//Message part of the NOTAM, if available
    var startDate: String	//Start datatime of the NOTAM
    var endDate: String		//End datatime of the NOTAM, 100 years after startdate for permanent (PERM) notams
    var all: String			//Full NOTAM
    var location: String	//ICAO code of the location the NOTAM applies to
    var isIcao: String		//If the NOTAM is compliant with Doc ABC. If false, no Q-code decoding is available
    var created: String		//Dattime the NOTAM was created
    var key: String			//Concatenation of ID and Location to form unique id for all NOTAMS
    var type: String		//Location type, either airspace or airport
    var criticality: Int	//The criticality level of the NOTAM as assessed by NORM. Criticality is a number between 0 (garbage) and 4 (critical). -1 if not assessed.
    
}
