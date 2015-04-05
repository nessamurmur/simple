class Machine < Struct.new(:statement, :environment)
  def step
    self.statement, self.environment = statement.reduce(environment)
  end

  def run
    while statement.reducible?
      log
      step
    end
    log
  end

  def log
    puts "#{statement}, #{environment}"
  end
end
