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
        backgroundOfCellUIView.translatesAutoresizingMaskIntoConstraints = false
        backgroundOfCellUIView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        backgroundOfCellUIView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        backgroundOfCellUIView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        backgroundOfCellUIView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        backgroundOfCellUIView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    
    // MARK: - UI config
    private func uiConfig() {
        backgroundOfCellUIView.layer.cornerRadius = 10
        backgroundOfCellUIView.backgroundColor = UIColor(red: 37/255, green: 35/255, blue: 51/255, alpha: 1.0)
    }
    
    
    // MARK: - Helper
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
