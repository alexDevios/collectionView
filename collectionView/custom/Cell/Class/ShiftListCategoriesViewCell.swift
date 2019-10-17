import UIKit

class ShiftListCategoriesViewCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    
    override var isHighlighted: Bool {
        didSet {
            label.textColor = isHighlighted ? UIColor.cyan : UIColor.white
        }
    }
    
    override var isSelected: Bool {
        didSet {
            label.textColor = isSelected ? UIColor.cyan : UIColor.white
        }
    }
}
