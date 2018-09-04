#write your code here
def echo(sentence)
 return sentence
end

def shout(sentence)
  return sentence.upcase
end

def repeat(sentence, num = 2)
  ans = sentence
  for i in 2..num 
    ans = ans + " " + sentence
  end
  return ans
end

def start_of_word(word, to_index)
  return word[0, to_index]
end

def first_word(word)
  return word[0...word.index(" ")]
end

def titleize(sentence)
  words = sentence.split(" ")
  sentence = words[0].capitalize
  for index in 1...words.length
    sentence += " "    
    case words[index]
      when "and", "over", "the"
        sentence += words[index]
      else
        sentence += words[index].capitalize
    end
  end
  return sentence
end

