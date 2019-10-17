import UIKit

enum CategoriesOfShifts: String {
    case Getting
    case InWaiting
    case Refused
    case Finished
}

class CategoryCollectionView: UIView {
    
    lazy var bottomLineView: BottomLineIntoCategory! = {
        var view = BottomLineIntoCategory()
        return view
    }()
    
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.registerCellNibs([ShiftListCategoriesViewCell.self])
            selectedItem = 0
            addSubview(bottomLineView)
            //
            bottomLineView.createConstraint(self, countOfDivine: self.categoryOfShifts.count)
        }
    }
    var selectedItem = 0 {
        didSet {
            //
            let selectedIndexPath = IndexPath(item: selectedItem, section: 0)
            collectionView.selectItem(at: selectedIndexPath, animated: false, scrollPosition: .right)
        }
    }
    
    var categoryOfShifts: [CategoriesOfShifts] = [.Getting,
                                                          .InWaiting,
                                                          .Refused,
                                                          .Finished]
}
