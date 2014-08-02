require_relative '../simple_struct'

class Add < SimpleStruct.new(:left, :right)
  def to_s
    "#{left} + #{right}"
  end

  def reduce(environment)
    if left.reducible?
      Add.new(left.reduce(environment), right)
    elsif right.reducible?
      Add.new(left, right.reduce(environment))
    else
      Number.new(left.value + right.value)
    end
  end
end
