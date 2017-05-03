class Alouette
  ALOUETTE_PARTS = [
    "le dos",
    "la queue",
    "les pattes",
    "les ailes",
    "le cou",
    "les yeux",
    "le bec",
    "la tête",
  ]
  REFRAIN = "Alouette, gentille alouette,\nAlouette, je te plumerai."

  def self.part_for_verse(verse_number)
    return -(verse_number+1)
  end

  def self.lines_for_verse(verse_number)
    data = ALOUETTE_PARTS[part_for_verse(verse_number)..-1]
    lines = []
    data.each do |part|
      lines << "Et #{part}!"
    end
    return lines
  end

  def self.verse(verse_number)
    lines = lines_for_verse(verse_number)

    start_part = ALOUETTE_PARTS[part_for_verse(verse_number)]
    lyrics = "Je te plumerai #{start_part}.\n"
    lyrics += "Je te plumerai #{start_part}.\n"

    lines.each do |line|
      lyrics += line + "\n"
      lyrics += line + "\n"
    end

    lyrics += "Alouette!\nAlouette!\nA-a-a-ah"
    return lyrics
  end

  def self.sing
    lyrics = REFRAIN

    ALOUETTE_PARTS.length.times do |verse_number|
      lyrics += "\n\n"
      lyrics += verse(verse_number)
      lyrics += "\n\n"
      lyrics += REFRAIN
    end

    return lyrics
  end
end
