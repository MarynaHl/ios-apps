import SwiftUI // Імпортуємо SwiftUI для роботи з інтерфейсом

struct ContentView: View {
    @State private var name = "" // Створюємо властивість @State для збереження введеного тексту

    var body: some View {
        Form { // Створюємо форму
            TextField("Enter your name", text: $name)
            // TextField використовує $name для двостороннього зв’язування
            Text("Your name is \(name)")
            // Text лише читає значення name, тому $ не використовується
        }
    }
}

#Preview {
    ContentView() // Відображення попереднього перегляду у SwiftUI
}
