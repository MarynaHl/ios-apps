import UIKit

// Протокол для передачі даних назад до ViewController
protocol TaskDelegate: AnyObject {
    func didSaveTask(_ task: String)
}

class EntryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var field: UITextField!
    
    weak var delegate: TaskDelegate? // Делегат для передачі даних
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        field.placeholder = "Enter your task here"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        textField.resignFirstResponder() // Закриваємо клавіатуру
        return true
    }

    @IBAction func saveTask() {
        guard let taskText = field.text, !taskText.isEmpty else {
            print("Task field is empty")
            return
        }
        delegate?.didSaveTask(taskText) // Передаємо нове завдання через делегат
        navigationController?.popViewController(animated: true) // Повертаємося назад
    }
}
