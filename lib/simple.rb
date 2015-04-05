Dir[File.absolute_path(".") + "/lib/simple/**/*.rb"].each do |file|
  require file
end

module Simple
  RubyVM::InstructionSequence.compile_option = {
    tailcall_optimization: true,
    trace_instruction: false
  }
end
