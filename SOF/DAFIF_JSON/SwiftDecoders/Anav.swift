
import Foundation

struct Anav: Codable {
	let arptIdent: String? 	let navIdent: String? 	let navType: String? 	let navCtry: String? 	let navKeyCd: String? 	let name: String? 	let atFld: String? 	let bearing: String? 	let distance: String? 	let cycleDate: String? 


	enum CodingKeys: String, CodingKey {
		case arptIdent = "ARPT_IDENT"		case navIdent = "NAV_IDENT"		case navType = "NAV_TYPE"		case navCtry = "NAV_CTRY"		case navKeyCd = "NAV_KEY_CD"		case name = "NAME"		case atFld = "AT_FLD"		case bearing = "BEARING"		case distance = "DISTANCE"		case cycleDate = "CYCLE_DATE"
}
}