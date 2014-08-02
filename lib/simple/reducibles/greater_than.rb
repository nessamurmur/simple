require_relative '../simple_struct'

class GreaterThan < SimpleStruct.new(:left, :right)
  def to_s
    "#{left} > #{right}"
  end

  def reduce
    if left.reducible?
      GreaterThan.new(left.reduce, right)
    elsif right.reducible?
      GreaterThan.new(left, right.reduce)
    else
      Boolean.new(left.value > right.value)
    end
  end
end
