require 'cleanthor/thor/task'

module Cleanthor
  module Thor
    module Tasks
      def self.load
        Dir.glob(File.join(File.dirname(__FILE__), 'tasks', '**/*.rb')) do |file|
          ::Thor::Util.load_thorfile(file) if File.file?(file)
        end
      end
    end
  end
end
Cleanthor::Thor::Tasks.load