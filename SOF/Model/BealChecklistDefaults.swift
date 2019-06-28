//
//  BealChecklistDefaults.swift
//  SOF
//
//  Created by Matthew Elmore on 6/25/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation


struct BealChecklistDefaults {
    
    var allKBABNormChecklist: [String : [String]] = [:]
    
    let sofOpening_NORM = ["SOF Opening" :
    ["Log into JET",
     "Check Brick is on and set to Maint A or GH-2 (RQ-4)",
     "Turn on radios. Perform radio check on SOF UHF, VHF and 243.0",
     "Review the first response status, flying status, schedule, quiet periods, DV traffic, transients and special items with Watch Supervisor",
     "Check: KSMF: (916)-929-5871 (ATIS: 98-916-874-0679) KCIC: 98-530-345-8828 KMHR: (916)-875-0737  KSUU: DSN-837-5825",
     "Establish FITS Condition - Metro (x 9134)",
     "Establish BIRD Condition for KBAB, KMHR, KCIC, KSMF and KSUU - Scarecrow",
     "Establish Flying status and inform the OG/CC as required (634-9366)",
     "Review previous SOF log and start new entry",
     "Read and sign off SOF meeting minutes and read file in the SOF publications binder.",
     "Log SOF tour in EPEX - [ > CONT TRAINING/REPORT]",
     "0700: Call 4-4734 and confirm contact with on call flight surgeon or technician and confirm phone and/or LMR status in the even of IFE's. Also check COB time for flight surgeon's office. NOTE: IFE's outside flight surgeon duty hours shall be handled by ambulance services. (Flt Doc Cell - (530)-218-3433",
     "Check/Monitor Google Baloon Status: Username: faa, Password: 99CrimsonBall@@ns",
     ]]
    
    let sofChangeOver_NORM = ["SOF Changeover" :
        ["Airfield status",
         "Weather",
         "NOTAMs",
         "Bird status (KBAB, KMHR, KSMF, KCIC, KSUU",
         "Fire response status",
         "Airborne aircraft",
         "Outgoing SOF debriefs with Watch Supervisor",
         "Check/Monitor Google Baloon Status: Username: faa, Password: 99CrimsonBall@@ns",
         "Icoming SOF consult Watch Supervisor on expectations, schedule, special items",
         "Update anticipatedDV's or transient traffic with command post/base ops",
         "Review SOF log",
         "Get radio checks on the LMR and VHF/UHF, if required",
         "Read and sign off the SOF meeting minutesand read file in the SOF publication binder",
         "Recheck the bird status at: KMHR, KSMF, KSUU, KCIC",
         "Log SOF tour in EPEX - [ > CONT TRAINING/REPORT]",
        ]]
    
    let sofClosing_NORM = ["SOF Closing" :
        ["Ensure all aircraft are parked with engines shut down",
         "Update U-2, T-38 Status \"Terminated\" as required",
         "Confirm status of off-station aircraft",
         "Inform command post (634-5700) that flying is terminated",
         "Turn off all radios",
         "Review and send Ops Summary",
         "Closeout the SOF log and leave any notes for the next SOF",
         "Take SOF iPad back to Ops for charging",
         "Clean up SOF area",
         "Notify OGV if there were any outages of phones, radios or computers viaphone (634-8841)",
         "Restart the computer (Do not shutdown)",
         "Saturday closing - recycle LMR battery by placing in the charger with amber light on (you may need to remove and replace LMR to get amber light)",
         "Debrief Watch Supervisor",
         "Call raptor to confirm Global Hawk status (634-1652)",
         "Email the 9 OG/CC regarding status of all 9 OG aircraft",
        ]]
    
    let criticalStatusChange_NORM = ["Critical Status Change" :
        ["Reasons for Critical Status Change: IFE/Mishap, Runway closure, Wind out of limits, WX below mins, Aircraft divert, Code arrival, Opening/Closing Status (if critical status change criteria met), Status changed to \"Stop Launch, WX Hold, or WX recall\"",
         "Requires positive OG contact through: Phone (634-9366), Command Post or LMR",
         "Follow up with email to OG CDs",
        ]]
    
    let routineStatusChange_NORM = ["Routine Status Change" :
        ["Reasons for Routine Status Change: Opening/Closing Status \"Unrestricted\", Bird watch condition, Flying status, Runway change, Wind restrictions, FITS, WX",
         "Email 9 OG/CDs org boxes and personal",
         "Put \"SOF Status Change\" in subject line",
        ]]
    

}
