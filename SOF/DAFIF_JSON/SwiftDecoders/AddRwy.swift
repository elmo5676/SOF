
import Foundation

struct AddRwy: Codable {
	let arptIdent: String? 	let highIdent: String? 	let loIdent: String? 	let icao: String? 	let heDtLat: String? 	let heDtDlat: String? 	let heDtLong: String? 	let heDtDlong: String? 	let heOverrunDis: String? 	let heSurface: String? 	let heOverrunLat: String? 	let heOverrunDlat: String? 	let heOverrunLong: String? 	let heOverrunDlong: String? 	let loDtLat: String? 	let loDtDlat: String? 	let loDtLong: String? 	let loDtDlong: String? 	let loOverrunDis: String? 	let loSurface: String? 	let loOverrunLat: String? 	let loOverrunDlat: String? 	let loOverrunLong: String? 	let loOverrunDlong: String? 	let cycleDate: String? 


	enum CodingKeys: String, CodingKey {
		case arptIdent = "ARPT_IDENT"		case highIdent = "HIGH_IDENT"		case loIdent = "LO_IDENT"		case icao = "ICAO"		case heDtLat = "HE_DT_LAT"		case heDtDlat = "HE_DT_DLAT"		case heDtLong = "HE_DT_LONG"		case heDtDlong = "HE_DT_DLONG"		case heOverrunDis = "HE_OVERRUN_DIS"		case heSurface = "HE_SURFACE"		case heOverrunLat = "HE_OVERRUN_LAT"		case heOverrunDlat = "HE_OVERRUN_DLAT"		case heOverrunLong = "HE_OVERRUN_LONG"		case heOverrunDlong = "HE_OVERRUN_DLONG"		case loDtLat = "LO_DT_LAT"		case loDtDlat = "LO_DT_DLAT"		case loDtLong = "LO_DT_LONG"		case loDtDlong = "LO_DT_DLONG"		case loOverrunDis = "LO_OVERRUN_DIS"		case loSurface = "LO_SURFACE"		case loOverrunLat = "LO_OVERRUN_LAT"		case loOverrunDlat = "LO_OVERRUN_DLAT"		case loOverrunLong = "LO_OVERRUN_LONG"		case loOverrunDlong = "LO_OVERRUN_DLONG"		case cycleDate = "CYCLE_DATE"
}
}