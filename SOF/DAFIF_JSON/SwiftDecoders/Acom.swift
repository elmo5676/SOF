
import Foundation

struct Acom: Codable {
	let arptIdent: String? 	let commType: String? 	let commName: String? 	let sym: String? 	let freq1: String? 	let freq2: String? 	let freq3: String? 	let freq4: String? 	let freq5: String? 	let sec: String? 	let sOprH: String? 	let cycleDate: String? 	let multi: String? 	let freqMulti: String? 	let comFreq1: String? 	let freqUnit1: String? 	let comFreq2: String? 	let freqUnit2: String? 	let comFreq3: String? 	let freqUnit3: String? 	let comFreq4: String? 	let freqUnit4: String? 	let comFreq5: String? 	let freqUnit5: String? 


	enum CodingKeys: String, CodingKey {
		case arptIdent = "ARPT_IDENT"		case commType = "COMM_TYPE"		case commName = "COMM_NAME"		case sym = "SYM"		case freq1 = "FREQ_1"		case freq2 = "FREQ_2"		case freq3 = "FREQ_3"		case freq4 = "FREQ_4"		case freq5 = "FREQ_5"		case sec = "SEC"		case sOprH = "S_OPR_H"		case cycleDate = "CYCLE_DATE"		case multi = "MULTI"		case freqMulti = "FREQ_MULTI"		case comFreq1 = "COM_FREQ1"		case freqUnit1 = "FREQ_UNIT1"		case comFreq2 = "COM_FREQ2"		case freqUnit2 = "FREQ_UNIT2"		case comFreq3 = "COM_FREQ3"		case freqUnit3 = "FREQ_UNIT3"		case comFreq4 = "COM_FREQ4"		case freqUnit4 = "FREQ_UNIT4"		case comFreq5 = "COM_FREQ5"		case freqUnit5 = "FREQ_UNIT5"
}
}