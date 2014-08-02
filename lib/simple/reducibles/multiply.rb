require_relative '../simple_struct'

class Multiply < SimpleStruct.new(:left, :right)
  def to_s
    "#{left} * #{right}"
  end

  def reduce
    if left.reducible?
      Multiply.new(left.reduce, right)
    elsif right.reducible?
      Multiply.new(left, right.reduce)
    else
      Number.new(left.value + right.value)
    end
  end
end
