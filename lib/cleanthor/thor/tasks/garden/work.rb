module Cleanthor
  module Thor
    module Tasks
      module Garden
        class Work < ::Cleanthor::Thor::Task

          desc "weed", "weed the garden"
          def weed()
            say "weeding the garden"
          end
        end
      end
    end
  end
end