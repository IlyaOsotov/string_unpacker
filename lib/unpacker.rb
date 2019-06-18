require "string_unpacker/version"

class Unpacker
  def initialize
    @letters = []
    @is_backslash_last = false
  end

  def call(string)
    string.split('').each do |letter|
      if letter.to_i.to_s == letter
        check_number(letter)
      elsif letter == '\\'
        check_slash
      else
        letters.push(letter)
      end
    end
    letters.join
  end

  private

  attr_accessor :letters

  def check_number(number)
    if backslash_last?
      letters.push(number)
      @is_backslash_last = false
    else
      letters.push(letters.pop * number.to_i)
    end
  end

  def check_slash
    if backslash_last?
      @is_backslash_last = false
      letters.push("\\")
    else
      @is_backslash_last = true
    end
  end

  def backslash_last?
    @is_backslash_last
  end
end
