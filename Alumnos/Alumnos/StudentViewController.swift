
import UIKit

class StudentsViewController: UIViewController {
    
    fileprivate var students: [Student]!
    
    @IBOutlet weak var studentsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentsTableView.delegate = self
        studentsTableView.dataSource = self
        students = [Student]()
        
        navigationItem.title = "Students"
        navigationController?.navigationBar.barTintColor = UIColor.flatSand()
    }
    
    // Gestiona la navegacio de la vista cap a altres
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addStudent" {
            let addStudent = segue.destination as! CreateStudentViewController
            addStudent.delegate = self
        }
    }
}

extension StudentsViewController: AddStudentDelegate {
    func addedStudent(student: Student) {
        students.append(student)
        studentsTableView.reloadData()
    }
}

extension StudentsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath) as! StudentTableViewCell
        cell.setData(student: students[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let accionEliminar = UITableViewRowAction(style: .destructive, title: "\u{2715}\n Eliminar") {
            (_, indexPath)
            in
            
            let alert = UIAlertController.init(title: "Delete Student", message: "Are you sure about delating this student?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: { (_)
                in
                tableView.reloadData()
                
            }))
            
            alert.addAction(UIAlertAction.init(title: "Delete", style: .destructive, handler: { (_)
                in
                self.students = self.students.filter {$0.fullName != self.students[indexPath.row].fullName}
                tableView.reloadData()
                
            }))
            
            self.present(alert, animated: true, completion: nil)
        }
        
        let accionEditar = UITableViewRowAction(style: .normal, title: "\u{270E}\n Editar") {
            (_, indexPath)
            in
            print("Editando")
        }
        
        accionEditar.backgroundColor =  UIColor.flatBlue()
        
        return [accionEliminar, accionEditar]
    }
}

