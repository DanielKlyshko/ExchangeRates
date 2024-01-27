import UIKit

class ViewController: UIViewController {

    
    // MARK: - Properties
    private let nameOfTableUILabel = UILabel()
    private let tableOfRatesUITableView = UITableView()
    var coinsArray: [Coins] = []
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 20/255, green: 18/255, blue: 29/255, alpha: 1.0)
        
        tableOfRatesUITableView.dataSource = self
        tableOfRatesUITableView.delegate = self
        tableOfRatesUITableView.register(TableOfRatesTableViewCell.self, forCellReuseIdentifier: "TableOfRatesTableViewCell")
        
        NetworkManager.instance.getCoinsInfo { coins in
            self.coinsArray = coins
            self.tableOfRatesUITableView.reloadData()
        }
        
        view.addSubview(nameOfTableUILabel)
        view.addSubview(tableOfRatesUITableView)
        addConstrains()
        addUI()
    }
    
    
    // MARK: - Constrains config
    private func addConstrains() {
       
        // nameOfTableUILabel
        nameOfTableUILabel.translatesAutoresizingMaskIntoConstraints = false
        nameOfTableUILabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        nameOfTableUILabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // tableOfRatesUITableView
        tableOfRatesUITableView.translatesAutoresizingMaskIntoConstraints = false
        tableOfRatesUITableView.topAnchor.constraint(equalTo: nameOfTableUILabel.bottomAnchor, constant: 10).isActive = true
        tableOfRatesUITableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableOfRatesUITableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableOfRatesUITableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }

    
    // MARK: - UI config
    private func addUI() {
        
        // nameOfTableUILabel
        nameOfTableUILabel.text = "Exchange Rates"
        nameOfTableUILabel.textColor = .white
        nameOfTableUILabel.numberOfLines = 0
        nameOfTableUILabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        
        // tableOfRatesUITableView
        tableOfRatesUITableView.backgroundColor = UIColor(red: 20/255, green: 18/255, blue: 29/255, alpha: 1.0)
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coinsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableOfRatesTableViewCell", for: indexPath) as? TableOfRatesTableViewCell else {return UITableViewCell()}
        let coin = coinsArray[indexPath.row]
        cell.coinConfig(with: coin)
        return cell
    }
}
