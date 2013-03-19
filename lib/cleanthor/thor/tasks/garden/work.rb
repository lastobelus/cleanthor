module Cleanthor
  module Thor
    module Tasks
      module Garden
        class Work < ::Cleanthor::Thor::Task

          desc "weed", "weed the garden"
          def weed()
            say "weeding the garden"
            say "."
            say "."
            say "invoking cleanthor:work:shovel -- must always use our top-level namespace when calling invoke"
            invoke "cleanthor:work:shovel", ['compost'], with: 'fork' # this works in Thor but not in bin/cleanthor without patching invoke
            # say "."
            # say "."
            # say "invoking work:shovel"
            # invoke "work:shovel", ['compost'], with: 'fork' # this works in bin/cleanthor but not Thor without patching invoke
          end
        end
      end
    end
  end
end