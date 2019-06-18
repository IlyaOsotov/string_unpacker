require "string_unpacker/version"

class Unpacker
  def initialize
    @letters = []
    @numbers = []
    @result = ''
  end

  def call(string)
    string.split('').each do |letter|
      if letter.to_i == letter
        check_number(letter)
      elsif letter == '\\'
        check_slash
      else
        check_letter(letter)
      end
    end
  end

  private

  attr_accessor :letters, :numbers, :result

  def check_number(number)
  end

  def check_slash
  end

  def check_letter(letter)
  end
end
