import SwiftUI // Імпортуємо SwiftUI для роботи з UI

struct ContentView: View {
    @State private var sleepAmount = 8.0 // Початкове значення (години сну)

    var body: some View {
        Form { // Форма для структурованого відображення елементів
            Section(header: Text("Select your sleep amount")) { // Заголовок секції
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                // Stepper: дозволяє вибрати значення між 4 і 12 годинами з кроком 0.25
            }
        }
    }
}

#Preview {
    ContentView() // Попередній перегляд у SwiftUI
}
