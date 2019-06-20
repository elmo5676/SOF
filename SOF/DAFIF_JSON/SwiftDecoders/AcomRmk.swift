
import Foundation

struct AcomRmk: Codable {
	let arptIdent: String? 	let commType: String? 	let rmkSeq: String? 	let remark: String? 	let cycleDate: String? 	let multi: String? 


	enum CodingKeys: String, CodingKey {
		case arptIdent = "ARPT_IDENT"		case commType = "COMM_TYPE"		case rmkSeq = "RMK_SEQ"		case remark = "REMARK"		case cycleDate = "CYCLE_DATE"		case multi = "MULTI"
}
}