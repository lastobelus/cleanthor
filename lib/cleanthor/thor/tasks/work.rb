module Cleanthor::Thor::Tasks
  class Work < Cleanthor::Thor::Task
  
    desc "shovel", "shovels stuff"
    method_option :with, 
      :type => :string, 
      :desc => "what to shovel with", 
      :default => "spade"
    def shovel(what="dirt")
      say "shovel #{what} with a #{options[:with]}"
    end
  end
end