#write your code here

def findVowel(word)
  index = 0
  word.each_char do |c|
    case c
    when 'a', 'e', 'i', 'o', 'u'
      if c == 'u' && index != 0 && word[index-1] == 'q'
        print ""
      else
        return index
      end
    end
    index = index + 1
  end
  return 0
end

def translate(sentence)
  words = sentence.split(" ")
  ans = ""
  words.each do |word|
    index = findVowel(word)
    ans = ans + " " +  word.slice(index...word.length) + word.slice(0...index) + "ay"
  end
  return ans.slice(1...ans.length)
end
