
import Foundation

struct Acom: Codable {
	let arptIdent: String? 


	enum CodingKeys: String, CodingKey {
		case arptIdent = "ARPT_IDENT"
}
}