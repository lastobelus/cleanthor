module Cleanthor
  module Thor
    class Task < ::Thor
      class << self
        def inherited(base) #:nodoc:
          base.send :extend,  ClassMethods
        end
      end
    
      module ClassMethods
        def namespace(name=nil)
          case name
          when nil
            constant = self.to_s.gsub(/^Thor::Sandbox::/, "")
            strip = $cleanthor_runner ? /^Cleanthor::Thor::Tasks::/ : /(?<=Cleanthor::)Thor::Tasks::/
            constant = constant.gsub(strip, "")
            constant =  ::Thor::Util.snake_case(constant).squeeze(":")          
            @namespace ||= constant
          else
            super
          end
        end
      end
    end  
  end
end