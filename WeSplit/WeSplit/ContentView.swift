import SwiftUI // Імпорт SwiftUI для роботи з інтерфейсом

// Структура ContentView реалізує протокол View
struct ContentView: View {
    // Обов’язкова властивість body, що визначає, як виглядатиме інтерфейс
    var body: some View {
        VStack { // VStack розташовує елементи вертикально
            Image(systemName: "globe") // Іконка із системного набору SF Symbols
                .imageScale(.large) // Робить іконку великою
                .foregroundStyle(.tint) // Застосовує колір (залежить від теми)
            Text("Hello, world!") // Текстовий елемент
        }
        .padding() // Додає відступи навколо VStack
    }
}

// Код прев'ю для відображення інтерфейсу в Xcode
#Preview {
    ContentView() // Викликає ContentView для прев’ю
}
