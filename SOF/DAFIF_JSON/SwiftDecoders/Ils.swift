
import Foundation

struct Ils: Codable {
	let arptIdent: String? 	let rwyIdent: String? 	let compType: String? 	let colctn: String? 	let name: String? 	let freq: String? 	let chan: String? 	let gsAngle: String? 	let lczrGslctn: String? 	let locMkrlctn: String? 	let elev: String? 	let locHdatum: String? 	let wgsDatum: String? 	let ilsCat: String? 	let wgsLat: String? 	let wgsDlat: String? 	let wgsLong: String? 	let wgsDlong: String? 	let navIdent: String? 	let navType: String? 	let navCtry: String? 	let navKeyCd: String? 	let magVar: String? 	let slaveVar: String? 	let ilsBrg: String? 	let locWidth: String? 	let thdCrossingHgt: String? 	let dmeBias: String? 	let cycleDate: String? 	let dmeNP: String? 


	enum CodingKeys: String, CodingKey {
		case arptIdent = "ARPT_IDENT"		case rwyIdent = "RWY_IDENT"		case compType = "COMP_TYPE"		case colctn = "COLCTN"		case name = "NAME"		case freq = "FREQ"		case chan = "CHAN"		case gsAngle = "GS_ANGLE"		case lczrGslctn = "LCZR_GSLCTN"		case locMkrlctn = "LOC_MKRLCTN"		case elev = "ELEV"		case locHdatum = "LOC_HDATUM"		case wgsDatum = "WGS_DATUM"		case ilsCat = "ILS_CAT"		case wgsLat = "WGS_LAT"		case wgsDlat = "WGS_DLAT"		case wgsLong = "WGS_LONG"		case wgsDlong = "WGS_DLONG"		case navIdent = "NAV_IDENT"		case navType = "NAV_TYPE"		case navCtry = "NAV_CTRY"		case navKeyCd = "NAV_KEY_CD"		case magVar = "MAG_VAR"		case slaveVar = "SLAVE_VAR"		case ilsBrg = "ILS_BRG"		case locWidth = "LOC_WIDTH"		case thdCrossingHgt = "THD_CROSSING_HGT"		case dmeBias = "DME_BIAS"		case cycleDate = "CYCLE_DATE"		case dmeNP = "DME_N_P"
}
}