import SwiftUI // Імпортуємо фреймворк для роботи з інтерфейсом

struct ContentView: View {
    var body: some View {
        Form { // Створюємо форму
            Section { // Перша секція
                Text("Hello, world!") // Рядок тексту
            }
            
            Section { // Друга секція
                Text("This is row 1") // Текстовий рядок
                Text("This is row 2") // Ще один текстовий рядок
            }
        }
    }
}

#Preview {
    ContentView() // Відображаємо попередній перегляд форми
}
