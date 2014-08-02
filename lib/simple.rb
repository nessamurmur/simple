Dir[File.absolute_path(".") + "/lib/simple/*.rb"].each do |file|
  require file
end

module Simple
  # Your code goes here...
end
