import SwiftUI

// Кастомний модифікатор для заголовків
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

// Додаємо зручний виклик модифікатора
extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

// Кастомний модифікатор Watermark
struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

// Додаємо метод для спрощеного виклику watermark
extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("SwiftUI Modifiers")
                .titleStyle() // Використання кастомного модифікатора
            
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "Hacking with Swift") // Водяний знак
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
