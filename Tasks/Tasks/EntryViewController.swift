import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        field.placeholder = "Enter your task here"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        textField.resignFirstResponder() // Dismiss the keyboard
        return true
    }

    @IBAction func saveTask() {
        guard let taskText = field.text, !taskText.isEmpty else {
            print("Task field is empty")
            return
        }
        print("Task Saved: \(taskText)")
        // Implement saving logic here (e.g., notify a delegate or save to a list)
    }
}
