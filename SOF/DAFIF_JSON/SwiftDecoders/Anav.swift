
import Foundation

struct Anav: Codable {
	let arptIdent: String? 


	enum CodingKeys: String, CodingKey {
		case arptIdent = "ARPT_IDENT"
}
}