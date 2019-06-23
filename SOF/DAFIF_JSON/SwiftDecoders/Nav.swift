
import Foundation

struct Nav: Codable {
	let navIdent: String? 


	enum CodingKeys: String, CodingKey {
		case navIdent = "NAV_IDENT"
}
}