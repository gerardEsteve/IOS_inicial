
class Student : FullNameable {
    
    var name: String?
    var lastName: String?
    var secondLastName: String?
    var age: Int?
    var course: String?
    var dni: String?
    var gender: String?
    
    var fullName: String {
        return "\(name!) \(lastName!) \(secondLastName!)"
    }
    
    // Si posem = 0, donem el valor per defecte de la edad si no se li pasa al inicialitzar.
    init(name: String, lastName: String, secondLastName: String, age: Int, course: String = "", dni: String, gender: String) {
        self.name = name
        self.lastName = lastName
        self.secondLastName = secondLastName
        self.age = age
        self.course = course
        self.dni = dni
        self.gender = gender
    }
}
