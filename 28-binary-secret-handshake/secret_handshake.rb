class SecretHandshake

  def initialize(action)
    @action = action.split("")
  end

  def commands
    array = ["wink", "double blink", "close your eyes", "jump"]
    @action.each do |digit|
      if digit.length == 1 && digit == "1"
        ["wink"]
      end

    end
  end
end
