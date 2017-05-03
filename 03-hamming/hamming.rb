class Hamming

  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length

    count = 0
    (0..(str1.length-1)).each do |i|
      if str1[i] != str2[i]
        count += 1
      end
    end
    return count
  end

end
