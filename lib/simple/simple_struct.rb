class SimpleStruct < Struct
  def inspect
    "<#{self}>"
  end

  def reducible?
    self.respond_to?(:reduce)
  end
end
