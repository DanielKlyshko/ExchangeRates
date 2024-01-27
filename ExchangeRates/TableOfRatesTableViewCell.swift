import UIKit

final class TableOfRatesTableViewCell: UITableViewCell {

    // MARK: - Properties
    private let backgroundOfCellUIView = UIView()
    private let nameOfCurrencyUILabel = UILabel()
    private let valueOfCurrencyUILabel = UILabel()
    
    
    // MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "ViewController")
        
        contentView.backgroundColor = UIColor(red: 20/255, green: 18/255, blue: 29/255, alpha: 1.0)
        
        contentView.addSubview(backgroundOfCellUIView)
        contentView.addSubview(nameOfCurrencyUILabel)
        contentView.addSubview(valueOfCurrencyUILabel)
        
        configConstraints()
        uiConfig()
    }
    
    
    // MARK: - Constrains config
    private func configConstraints() {
        
        // backgroundOfCellUIView
        backgroundOfCellUIView.translatesAutoresizingMaskIntoConstraints = false
        backgroundOfCellUIView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        backgroundOfCellUIView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        backgroundOfCellUIView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        backgroundOfCellUIView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        backgroundOfCellUIView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        // nameOfCurrencyUILabel
        nameOfCurrencyUILabel.translatesAutoresizingMaskIntoConstraints = false
        nameOfCurrencyUILabel.leadingAnchor.constraint(equalTo: backgroundOfCellUIView.leadingAnchor, constant: 20).isActive = true
        nameOfCurrencyUILabel.centerYAnchor.constraint(equalTo: backgroundOfCellUIView.centerYAnchor).isActive = true
        
        //
        valueOfCurrencyUILabel.translatesAutoresizingMaskIntoConstraints = false
        valueOfCurrencyUILabel.trailingAnchor.constraint(equalTo: backgroundOfCellUIView.trailingAnchor, constant: -20).isActive = true
        valueOfCurrencyUILabel.centerYAnchor.constraint(equalTo: backgroundOfCellUIView.centerYAnchor).isActive = true
    }
    
    
    // MARK: - UI config
    private func uiConfig() {
        
        // backgroundOfCellUIView
        backgroundOfCellUIView.layer.cornerRadius = 10
        backgroundOfCellUIView.backgroundColor = UIColor(red: 37/255, green: 35/255, blue: 51/255, alpha: 1.0)
        
        // nameOfCurrencyUILabel
        nameOfCurrencyUILabel.textColor = .white
        nameOfCurrencyUILabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        
        // valueOfCurrencyUILabel
        valueOfCurrencyUILabel.textColor = .lightGray
        valueOfCurrencyUILabel.font = UIFont.systemFont(ofSize: 14)
    }
    
    func coinConfig(with coin: Coins) {
        nameOfCurrencyUILabel.text = coin.exchange_id
        valueOfCurrencyUILabel.text = ("$\(coin.volume_1hrs_usd)")
    }
    
    // MARK: - Helper
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
