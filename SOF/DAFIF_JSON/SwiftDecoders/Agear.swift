
import Foundation

struct Agear: Codable {
	let arptIdent: String? 	let rwyIdent: String? 	let location: String? 	let type: String? 	let cycleDate: String? 


	enum CodingKeys: String, CodingKey {
		case arptIdent = "ARPT_IDENT"		case rwyIdent = "RWY_IDENT"		case location = "LOCATION"		case type = "TYPE"		case cycleDate = "CYCLE_DATE"
}
}