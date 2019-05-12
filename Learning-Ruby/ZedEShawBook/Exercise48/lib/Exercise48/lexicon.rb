class Lexicon
  @@dictionary = {
    'direction' => ['north', 'south', 'east', 'west'],
    'verb' => ['go', 'eat', 'kill', 'jump', 'run',
      'walk'],
    'stop' => ['the', 'in', 'of', 'to', 'a', 'is'],
    'noun' => ['bear', 'princess', 'nose', 'castle', 'cake'],
    }

  def self.scan(text)
    elements = text.split(' ')
    result = []

   elements.each do |text_element|
      categorized = []

      number = Lexicon.integer?(text_element)
      if (number)
        categorized = ['number', number]
        result.push(categorized)
        next
      end

      @@dictionary.each do |type, list|
        if list.include?(text_element.downcase)
          categorized = [type, text_element]
          result.push(categorized)
          break
        end
      end

      if (categorized.empty?)
        categorized = ['error', text_element]
        result.push(categorized)
      end

    end

    return result
  end

  def self.integer?(object)

    object.sub!(/^0+/, "")

    begin
      return Integer(object)
    rescue
      return false
    end
  end

end
