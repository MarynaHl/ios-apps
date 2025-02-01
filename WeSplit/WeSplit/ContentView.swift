import SwiftUI

struct ContentView: View {
    @State private var checkAmount: Double = 0.0 // Введена сума рахунку
    @State private var numberOfPeople: Int = 2 // Кількість людей, які ділять рахунок
    @State private var tipPercentage: Int = 20 // Відсоток чайових

    let tipPercentages = [10, 15, 20, 25, 0] // Можливі значення чайових

    // Обчислювана змінна для підрахунку суми на кожного
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2) // Коригуємо кількість людей
        let tipSelection = Double(tipPercentage) // Конвертуємо відсоток чайових у Double

        let tipValue = checkAmount / 100 * tipSelection // Обчислюємо суму чайових
        let grandTotal = checkAmount + tipValue // Додаємо чайові до загальної суми
        let amountPerPerson = grandTotal / peopleCount // Рахуємо суму на кожного

        return amountPerPerson // Повертаємо обчислену суму
    }

    var body: some View {
        NavigationStack {
            Form {
                // Секція для введення суми рахунку та вибору кількості людей
                Section {
                    TextField(
                        "Amount", // Підказка у полі введення
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

                // Секція для вибору відсотка чайових
                Section("How much tip do you want to leave?") { // Заголовок секції
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) { // Використовуємо масив відсотків
                            Text($0, format: .percent) // Форматуємо значення як %
                        }
                    }
                    .pickerStyle(.segmented) // Використовуємо Segmented Control для компактного вигляду
                }

                // Секція для відображення загальної суми на кожного
                Section("Total per person") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit") // Встановлюємо заголовок екрану
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
