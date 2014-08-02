class Machine < Struct.new(:expression)
  def step!
    self.expression = expression.reduce
  end

  def run!
    while self.expression.reducible?
      puts self.expression
      step!
    end
    p self.expression
  end
end
