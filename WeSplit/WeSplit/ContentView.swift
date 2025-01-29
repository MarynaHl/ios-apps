import SwiftUI

struct ContentView: View {
    // Змінна для суми рахунку (початкове значення 0.0)
    @State private var checkAmount: Double = 0.0
    
    // Змінна для кількості людей (початкове значення 2)
    @State private var numberOfPeople: Int = 2
    
    // Змінна для відсотка чайових (початкове значення 20%)
    @State private var tipPercentage: Int = 20

    // Масив можливих відсотків чайових
    let tipPercentages = [10, 15, 20, 25, 0]

    var body: some View {
        NavigationStack {
            Form {
                // Секція для введення суми рахунку
                Section {
                    TextField(
                        "Amount", // Підказка у полі введення
                        value: $checkAmount, // Двосторонній зв'язок із змінною
                        format: .currency(code: Locale.current.currency?.identifier ?? "USD") // Форматування валюти
                    )
                    .keyboardType(.decimalPad) // Встановлення числової клавіатури з десятковою крапкою
                }

                // Секція для відображення введеної суми
                Section {
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    // Відображає введене значення як валюту
                }
            }
            .navigationTitle("WeSplit") // Заголовок у навігаційному стеку
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
