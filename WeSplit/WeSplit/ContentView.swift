import SwiftUI // Імпортуємо SwiftUI для створення інтерфейсу

struct ContentView: View {
    var body: some View {
        // Додаємо NavigationStack для навігаційної панелі
        NavigationStack {
            Form { // Форма для введення даних
                Section { // Секція для групування елементів
                    Text("Hello, world!") // Текстовий елемент
                }
            }
            .navigationTitle("SwiftUI") // Заголовок навігаційної панелі
            .navigationBarTitleDisplayMode(.inline) // Робимо заголовок компактним
        }
    }
}

#Preview {
    ContentView() // Відображення попереднього перегляду у SwiftUI
}
