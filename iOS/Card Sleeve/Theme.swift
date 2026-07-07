import SwiftUI

/// Unique visual identity for Card Sleeve: holo-foil blue with rare-card red.
enum Theme {
    static let accent = Color(hex: "#1C4E8A")
    static let accentSecondary = Color(hex: "#D6482F")
    static let background = Color(hex: "#EEF2F7")
    static let ink = Color(hex: "#141C26")

    static var titleFont: Font {
        Font.system(.largeTitle, design: .default).weight(.bold)
    }

    static var bodyFont: Font {
        Font.system(.body, design: .default)
    }

    static var cardCornerRadius: CGFloat { 18 }
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255.0
        let g = Double((v >> 8) & 0xFF) / 255.0
        let b = Double(v & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
