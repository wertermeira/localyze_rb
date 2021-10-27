# frozen_string_literal: true

class LongestString
  attr_accessor :str

  def initialize(str = '')
    @str = str
  end

  def call
    arr = string_chars.chunk { |e| e }.map { |e| e[1].join if e[1].size > 1 }.compact
    return string_chars.first if arr.empty?

    arr.max_by(&:length)
  end

  private

  def string_chars
    str.chars
  end
end
