
import UIKit

open class View: UIView {
  
    // MARK: Init
    override public init(frame: CGRect) {
        super.init(frame: frame)
        makeUI()
    }

    @available(*,
               unavailable,
               message: "Loading this view from a nib is resticted")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is resticted")
    }
    
    
    // MARK: UI
    func makeUI() {}
}
