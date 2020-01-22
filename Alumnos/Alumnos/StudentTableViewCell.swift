
import UIKit

class StudentTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var labelFullName: UILabel!
    @IBOutlet private weak var studentImageView: UIImageView!
    @IBOutlet private weak var labelDNI: UILabel!
    @IBOutlet private weak var labelAge: UILabel!
    @IBOutlet private weak var labelGender: UILabel!
    @IBOutlet private weak var labelCourse: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setData(student: Student) {
        labelFullName.text = student.fullName
        labelDNI.text = student.dni
        labelAge.text = String(describing: student.age)
        labelCourse.text = student.course
        labelGender.text = student.gender
        if student.gender == "F" {
            studentImageView.image = UIImage.init(named: "profilepic.png")
        }
        else {
            studentImageView.image = UIImage.init(named: "profilepic.png")
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
