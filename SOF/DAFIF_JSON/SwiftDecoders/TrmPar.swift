
import Foundation

struct TrmPar: Codable {
	let arptIdent: String? 


	enum CodingKeys: String, CodingKey {
		case arptIdent = "ARPT_IDENT"
}
}