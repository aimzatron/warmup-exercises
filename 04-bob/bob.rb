class Bob

  def response_for(type_of_request)
    if type_of_request == ''
      'Fine, be that way.'
    elsif type_of_request.upcase == type_of_request
      "Woah, chill out!"
    elsif type_of_request.include? '?'
      'Sure.'
    else
      'Whatever.'
    end
  end

  def question?(question)
    if question.include? '?'
      true
    else
      false
    end
  end

  def statement?(statement)
    if statement.length > 0
      true
    else
      false
    end
  end

  def shouting?(statement)
    if statement.upcase == statement
      true
    else
      false
    end
  end
end
