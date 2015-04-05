require_relative '../simple_struct'

class Multiply < SimpleStruct.new(:left, :right)
  def to_s
    "#{left} * #{right}"
  end

  def reduce(environment)
    if left.reducible?
      Multiply.new(left.reduce(environment), right)
    elsif right.reducible?
      Multiply.new(left, right.reduce(environment))
    else
      Number.new(left.value + right.value)
    end
  end

  def evaluate(environment)
    Number.new(left.evaluate(environment).value * right.evaluate(environment).value)
  end
end
