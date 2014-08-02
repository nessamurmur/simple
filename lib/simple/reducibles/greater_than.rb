require_relative '../simple_struct'

class GreaterThan < SimpleStruct.new(:left, :right)
  def to_s
    "#{left} > #{right}"
  end

  def reduce(environment)
    if left.reducible?
      GreaterThan.new(left.reduce(environment), right)
    elsif right.reducible?
      GreaterThan.new(left, right.reduce(environment))
    else
      Boolean.new(left.value > right.value)
    end
  end
end
