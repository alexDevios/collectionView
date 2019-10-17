import UIKit

extension CategoryCollectionView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return self.categoryOfShifts.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let item = indexPath.item
            let cell = collectionView.dequeueCellWithClass(ShiftListCategoriesViewCell.self, for: indexPath)
            cell.label.text = self.categoryOfShifts[item].rawValue
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let mainWidth = UIScreen.main.bounds.width
            let rightAndLeftInsets = (mainWidth * 6.0) / 375
            let width = (mainWidth - rightAndLeftInsets * 2) / CGFloat(self.categoryOfShifts.count)
            return CGSize(width: width, height: collectionView.bounds.height)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            let mainWidth = UIScreen.main.bounds.width
            let rightAndLeftInsets = (mainWidth * 6.0) / 375
            return UIEdgeInsets(top: 0, left: rightAndLeftInsets, bottom: 0, right: rightAndLeftInsets)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return .zero
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return .zero
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            bottomLineView.selectedItem = indexPath.item
            UIView.animate(withDuration: 0.9, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveLinear, animations: {
                self.layoutIfNeeded()
            }, completion: nil)
        }
}
