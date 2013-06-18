class Crypto

  attr_reader :message

  def initialize(message)
    @message = message
  end

  def normalize_plaintext
    message.scan(/\w+/).join('').downcase
  end

  def size
    if Math.sqrt(normalize_plaintext.length).to_s.split('.').last 
      normalize_plaintext.length / 3
    else
      Math.sqrt(normalize_plaintext.length)
    end
  end

end
