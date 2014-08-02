require_relative '../simple_struct'

class Number < SimpleStruct.new(:value)
  def to_s
    value.to_s
  end
end
