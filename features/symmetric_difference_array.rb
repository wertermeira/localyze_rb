# frozen_string_literal: true

class SymmetricDifferenceArray
  attr_accessor :arr_n, :arr_m

  def initialize(arr_n, arr_m)
    @arr_n = arr_n
    @arr_m = arr_m
  end

  def call
    error_message = 'Integer in array cannot be greater than 100'
    raise error_message unless constraints

    result = arr_n - arr_m | arr_m - arr_n
    result.uniq
  end

  private

  def constraints
    (arr_n + arr_m).max <= 100
  end
end
