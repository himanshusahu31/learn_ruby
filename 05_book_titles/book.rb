def titleize(sentence)
  words = sentence.split(" ")
  sentence = words[0].capitalize
  for index in 1...words.length
    sentence += " "
    case words[index]
      when "and", "over", "the", "in", "of", "a", "an"
        sentence += words[index]
      else
        sentence += words[index].capitalize
    end
  end
  return sentence
end

class Book
# write your code here
  attr_reader :title
  def title=(t)
    @title = titleize(t)
  end
end
