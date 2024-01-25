import UIKit

class ViewController: UIViewController {

    private let nameOfTableUILabel = UILabel()
    private let tableOfRatesUITableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 20/255, green: 18/255, blue: 29/255, alpha: 1.0)
        
        view.addSubview(nameOfTableUILabel)
        nameOfTableUILabel.translatesAutoresizingMaskIntoConstraints = false
        nameOfTableUILabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        nameOfTableUILabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nameOfTableUILabel.text = "Exchange Rates"
        nameOfTableUILabel.textColor = .white
        nameOfTableUILabel.numberOfLines = 0
        nameOfTableUILabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
    }


}

