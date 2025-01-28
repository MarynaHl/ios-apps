import SwiftUI

struct ContentView: View {
    // Властивість для зберігання суми рахунку
    @State private var checkAmount: Double = 0.0

    // Властивість для кількості людей
    @State private var numberOfPeople: Int = 2

    // Властивість для відсотка чайових
    @State private var tipPercentage: Int = 20

    // Масив можливих відсотків чайових
    let tipPercentages = [10, 15, 20, 25, 0]

    var body: some View {
        NavigationStack { // Додаємо навігаційний стек для підтримки переходів
            Form { // Формуємо структуру форми
                Section { // Секція для введення суми рахунку
                    TextField(
                        "Amount", // Підказка для поля
                        value: $checkAmount, // Двосторонній зв'язок із змінною
                        format: .currency(code: Locale.current.currency?.identifier ?? "USD") // Формат для валюти
                    )
                    .keyboardType(.decimalPad) // Використовуємо числову клавіатуру із десятковою точкою

                    Picker("Number of people", selection: $numberOfPeople) {
                        // Створюємо список значень від 2 до 99
                        ForEach(2..<100) {
                            Text("\($0) people") // Форматуємо текст для кожного значення
                        }
                    }
                    .pickerStyle(.navigationLink) // Встановлюємо стиль для переходу в окремий екран
                }
            }
            .navigationTitle("WeSplit") // Заголовок форми в навігаційному стеку
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
