trait Censor {
	def replaceBadWord(word: String) {
		if (word == "Shoot" || word == "Darn") {
			println(words(word))
		} else {
			println(word)
		}
	}

	val words = Map("Shoot" -> "Pucky", "Darn" -> "Beans")
}

class WordReplacer extends Censor 

val myReplacer = new WordReplacer
myReplacer.replaceBadWord("Shouldn't change")
myReplacer.replaceBadWord("Shoot")
myReplacer.replaceBadWord("Darn")