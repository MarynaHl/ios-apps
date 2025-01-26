import SwiftUI // Імпортуємо SwiftUI для роботи з інтерфейсом

struct ContentView: View {
    @State private var tapCount = 0 // Використовуємо @State для зберігання стану

    var body: some View {
        Button("Tap Count: \(tapCount)") { // Кнопка відображає поточний tapCount
            self.tapCount += 1 // Збільшуємо tapCount на 1 при натисканні
        }
    }
}

#Preview {
    ContentView() // Відображаємо попередній перегляд у SwiftUI
}
