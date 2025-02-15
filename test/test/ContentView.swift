import SwiftUI // Імпортуємо SwiftUI

// Створення кастомного контейнера GridStack
struct GridStack<Content: View>: View {
    let rows: Int // Кількість рядків
    let columns: Int // Кількість колонок
    @ViewBuilder let content: (Int, Int) -> Content // Замикання, яке повертає View

    var body: some View {
        VStack { // Відображення елементів вертикально
            ForEach(0..<rows, id: \.self) { row in
                HStack { // Відображення елементів горизонтально
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column) // Вставляємо вміст для кожної комірки
                    }
                }
            }
        }
    }
}

// Використання GridStack у ContentView
struct ContentView: View {
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col in
            VStack { // Додаємо вміст у кожну комірку
                Image(systemName: "\(row * 4 + col).circle") // Номер комірки
                Text("R\(row) C\(col)") // Текст із координатами комірки
            }
            .padding()
        }
    }
}

#Preview {
    ContentView() // Відображення попереднього перегляду
}
