
class Teacher : FullNameable {
    
    var name: String?
    var lastName: String?
    var secondLastName: String?
    var course: String?
    var gender: String?
    
    var fullName: String {
        return "\(name!) \(lastName!) \(secondLastName!)"
    }
    
    // Si posem = 0, donem el valor per defecte de la edad si no se li pasa al inicialitzar.
    init(name: String, lastName: String, secondLastName: String, course: String = "", gender: String) {
        self.name = name
        self.lastName = lastName
        self.secondLastName = secondLastName
        self.course = course
        self.gender = gender
    }
}
