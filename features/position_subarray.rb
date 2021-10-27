# frozen_string_literal: true

class PositionSubarray
  attr_accessor :arr, :best_sum, :best_start, :best_end, :current_sum

  def initialize(arr = [])
    @arr = arr
    @best_sum = @best_start = @best_end = @current_sum = 0
  end

  def call
    positions_on_subarray
  end

  private

  def positions_on_subarray
    arr.each_with_index do |number, index|
      condition_current_sum(number, index)
      next unless @current_sum > @best_sum

      @best_sum = @current_sum
      @best_start = @current_start if @current_start
      @best_end = index
    end
    "#{@best_start},#{@best_end}"
  end

  def condition_current_sum(number, index)
    if @current_sum <= 0
      @current_start = index
      @current_sum = number
    else
      @current_sum += number
    end
  end
end
