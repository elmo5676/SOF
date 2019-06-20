
import Foundation

struct TrmClb: Codable {
	let arptIdent: String? 	let proc: String? 	let trmIdent: String? 	let rwyId: String? 	let occNo: String? 	let icao: String? 	let desig: String? 	let knots: String? 	let rateDesc: String? 	let alt: String? 	let ftnote: String? 	let cycleDate: String? 


	enum CodingKeys: String, CodingKey {
		case arptIdent = "ARPT_IDENT"		case proc = "PROC"		case trmIdent = "TRM_IDENT"		case rwyId = "RWY_ID"		case occNo = "OCC_NO"		case icao = "ICAO"		case desig = "DESIG"		case knots = "KNOTS"		case rateDesc = "RATE_DESC"		case alt = "ALT"		case ftnote = "FTNOTE"		case cycleDate = "CYCLE_DATE"
}
}