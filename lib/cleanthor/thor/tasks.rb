require 'cleanthor/thor/task'

Dir.glob(File.join(File.dirname(__FILE__), 'tasks', '**/*.rb')) do |file|
  puts "loading file: #{file.inspect}"
  Thor::Util.load_thorfile(file) if File.file?(file)
end
