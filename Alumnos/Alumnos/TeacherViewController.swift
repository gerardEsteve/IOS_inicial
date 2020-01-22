
import UIKit

class TeacherViewController: UIViewController {

//    fileprivate var teachers: [Teacher]!
//    
//    @IBOutlet weak var teachersTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        teachersTableView.delegate = self
//        teachersTableView.dataSource = self
//        teachers = [Teacher]()
        
        navigationItem.title = "Teachers"
        navigationController?.navigationBar.barTintColor = UIColor.flatSand()

        // Do any additional setup after loading the view.
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "addTeacher" {
//            let addTeacher = segue.destination as! CreateTeacherViewController
//            addTeacher.delegate = self
//        }
//    }

}
