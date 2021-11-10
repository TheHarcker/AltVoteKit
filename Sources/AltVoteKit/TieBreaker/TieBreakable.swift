public protocol TieBreakable{
	
	/// The name of the TieBreaker
	var name: String {get}
	
	/// The id of the TieBreaker
	var id: String {get}
}

extension TieBreakable{
	public static func ==(lhs: TieBreakable, rhs: TieBreakable) -> Bool{
		return lhs.id == rhs.id
	}
}

public protocol normalTieBreakable: TieBreakable{
	func breakTie(votes: [SingleVote], options: [Option], optionsLeft: Int) -> [Option : TieBreak]
}

public enum TieBreak{
	case remove, keep
}
