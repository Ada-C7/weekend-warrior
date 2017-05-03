class Hamming
  def self.compute(a,b)
    i = 1
    counter = 0

    if (a.length-b.length) != 0 
      raise ArgumentError.new("First strand cannot be longer than second")
    end
    until (i > a.length || i > b.length)
      if a[i-1] != b[i-1]
        counter += 1
      end
      i += 1
    end
    return counter
  end
end
