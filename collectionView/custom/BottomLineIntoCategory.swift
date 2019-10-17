import UIKit

class BottomLineIntoCategory: UIView {
    
    var leftConstraint: NSLayoutConstraint!
    var selectedItem: Int = 0 {
        didSet {
            let mainWidth = UIScreen.main.bounds.width
            let rightAndLeftInsets = (mainWidth * 6.0) / 375
            leftConstraint.constant = rightAndLeftInsets + (self.bounds.width * CGFloat(selectedItem))
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //
        self.backgroundColor = UIColor.cyan
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createConstraint(_ constraintOfView: UIView, countOfDivine: Int) {
        let mainWidth = UIScreen.main.bounds.width
        let height = (mainWidth * 5.0) / 375
        let rightAndLeftInsets = (mainWidth * 6.0) / 375
        let width = (mainWidth - rightAndLeftInsets * 2) / CGFloat(countOfDivine)
        leftConstraint = self.leftAnchor.constraint(equalTo: constraintOfView.leftAnchor, constant: rightAndLeftInsets)
        NSLayoutConstraint.activate([leftConstraint,
            self.bottomAnchor.constraint(equalTo: constraintOfView.bottomAnchor, constant: 0),
            self.widthAnchor.constraint(equalToConstant: width),
            self.heightAnchor.constraint(equalToConstant: height)
        ])
        self.roundedCorners([.topLeft, .topRight], radius: 2.5, bounds: CGRect(x: 0, y: 0, width: width, height: height))
    }
}



