import Foundation

struct CardItem: Identifiable, Codable, Equatable {
    var id: UUID
    var dateAdded: Date
    var name: String
    var setName: String
    var condition: String
    var cardNumber: String

    init(id: UUID = UUID(), dateAdded: Date = Date(), name: String, setName: String, condition: String, cardNumber: String) {
        self.id = id
        self.dateAdded = dateAdded
        self.name = name
        self.setName = setName
        self.condition = condition
        self.cardNumber = cardNumber
    }

    static func blank() -> CardItem {
        CardItem(name: "", setName: "", condition: "", cardNumber: "")
    }
}
