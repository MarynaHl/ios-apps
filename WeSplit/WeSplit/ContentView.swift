import SwiftUI // Імпортуємо SwiftUI для роботи з інтерфейсом

struct ContentView: View {
    // Властивості для зберігання стану програми
    @State private var checkAmount = 0.0 // Сума рахунку
    @State private var numberOfPeople = 2 // Кількість осіб
    @State private var tipPercentage = 20 // Відсоток чайових
    
    // Масив варіантів для чайових
    let tipPercentages = [10, 15, 20, 25, 0]

    var body: some View {
        Form { // Створюємо форму
            Section { // Перша секція: Введення суми
                TextField(
                    "Amount",
                    value: $checkAmount,
                    format: .currency(code: Locale.current.currency?.identifier ?? "USD")
                )
                .keyboardType(.decimalPad) // Клавіатура для введення чисел із десятковою точкою
            }
            
            Section { // Друга секція: Відображення введеної суми
                Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}

#Preview {
    ContentView() // Відображення попереднього перегляду
}
