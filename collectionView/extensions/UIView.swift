import UIKit
extension UIView {
    
    //
    func roundedCorners(_ corners: UIRectCorner, radius: CGFloat, bounds: CGRect) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
