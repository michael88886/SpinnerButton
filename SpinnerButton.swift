class SpinnerButton: UIControl {
	
	lazy var titleLabel = UILabel()
	
	lazy var spinner = UIActivityIndicatorView(style: .whiteLarge)
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setup()
		spinner.startAnimating()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError()
	}
	
	private func setup() {
		// Spinner
		spinner.translatesAutoresizingMaskIntoConstraints = false
		addSubview(spinner)
		spinner.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
		spinner.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
		spinner.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8).isActive = true
		spinner.widthAnchor.constraint(equalTo: spinner.heightAnchor).isActive = true
		
		
		
		// Title label
		titleLabel.translatesAutoresizingMaskIntoConstraints = false
		addSubview(titleLabel)
		titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
		titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
		titleLabel.rightAnchor.constraint(lessThanOrEqualTo: spinner.leftAnchor, constant: -20).isActive = true
	}
	
	func setTitle(text: String) {
		titleLabel.text = text
	}
}
