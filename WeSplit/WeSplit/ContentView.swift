import SwiftUI

struct ContentView: View {
    @State private var checkAmount: Double = 0.0 // Введена сума рахунку
    @State private var numberOfPeople: Int = 2 // Кількість людей, які ділять рахунок
    @State private var tipPercentage: Int = 20 // Відсоток чайових

    let tipPercentages = [10, 15, 20, 25, 0] // Можливі значення чайових

    var body: some View {
        NavigationStack { // Додаємо NavigationStack для підтримки переходів
            Form {
                // Секція для введення суми рахунку
                Section {
                    TextField(
                        "Amount", // Підказка для користувача
                        value: $checkAmount, // Двосторонній зв’язок із змінною
                        format: .currency(code: Locale.current.currency?.identifier ?? "USD") // Форматування валюти
                    )
                    .keyboardType(.decimalPad) // Використання цифрової клавіатури

                    // Вибір кількості людей, які ділять рахунок
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) { // Генеруємо значення від 2 до 99
                            Text("\($0) people") // Відображаємо значення як текст
                        }
                    }
                    .pickerStyle(.navigationLink) // Відкриває новий екран для вибору
                }
            }
            .navigationTitle("WeSplit") // Встановлюємо заголовок для екрану
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
