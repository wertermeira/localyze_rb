# frozen_string_literal: true

class StringLengthLastWord
  attr_accessor :str

  def initialize(str = '')
    @str = str
  end

  def call
    error_message = 'String cannot be less than 1 or greater than 104 characters'
    raise error_message unless constraints

    strip_str.split.last.length
  end

  private

  def strip_str
    str.gsub(/([^a-zA-Z])\s+/, ' ')
  end

  def constraints
    strip_str.length >= 1 && strip_str.length <= 104
  end
end
