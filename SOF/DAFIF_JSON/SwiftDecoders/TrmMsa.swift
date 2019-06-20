
import Foundation

struct TrmMsa: Codable {
	let arptIdent: String? 	let proc: String? 	let trmIdent: String? 	let secNbr: String? 	let secAlt: String? 	let icao: String? 	let navIdent: String? 	let navType: String? 	let navCtry: String? 	let navKeyCd: String? 	let secBear1: String? 	let secBear2: String? 	let wptIdent: String? 	let wptCtry: String? 	let secMile1: String? 	let secMile2: String? 	let wgsLat: String? 	let wgsDlat: String? 	let wgsLong: String? 	let wgsDlong: String? 	let cycleDate: String? 


	enum CodingKeys: String, CodingKey {
		case arptIdent = "ARPT_IDENT"		case proc = "PROC"		case trmIdent = "TRM_IDENT"		case secNbr = "SEC_NBR"		case secAlt = "SEC_ALT"		case icao = "ICAO"		case navIdent = "NAV_IDENT"		case navType = "NAV_TYPE"		case navCtry = "NAV_CTRY"		case navKeyCd = "NAV_KEY_CD"		case secBear1 = "SEC_BEAR1"		case secBear2 = "SEC_BEAR2"		case wptIdent = "WPT_IDENT"		case wptCtry = "WPT_CTRY"		case secMile1 = "SEC_MILE1"		case secMile2 = "SEC_MILE2"		case wgsLat = "WGS_LAT"		case wgsDlat = "WGS_DLAT"		case wgsLong = "WGS_LONG"		case wgsDlong = "WGS_DLONG"		case cycleDate = "CYCLE_DATE"
}
}