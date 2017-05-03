

class Alouette

  REFRAIN = "Alouette, gentille alouette,\nAlouette, je te plumerai."
  SONG_START = "Je te plumerai"
  SONG_END = "Alouette!\nAlouette!\nA-a-a-ah"
  SONG_PHRASES = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]


  def self.lines_for_verse(verse_num)
    lines_for_verse_array = []
    (0..verse_num).each do |num|
      lines_for_verse_array << "Et #{SONG_PHRASES[verse_num-num]}!"
    end
    lines_for_verse_array
  end


  def self.verse(verse_num)

    middle_section = ""

    lines_for_verse(verse_num).each do |line|
      middle_section += (line + "\n")*2
    end

    verse_string = (SONG_START + " " + SONG_PHRASES[verse_num] + ".\n")*2 +   middle_section + SONG_END

    return verse_string
  end


  def self.sing
    lyrics = REFRAIN

    SONG_PHRASES.length.times do |verse_number|
      lyrics += "\n\n"
      lyrics += verse(verse_number)
      lyrics += "\n\n"
      lyrics += REFRAIN
    end
    return lyrics
  end

end


print Alouette.sing
