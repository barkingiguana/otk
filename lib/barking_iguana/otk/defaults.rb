module BarkingIguana
  module Otk
    module Defaults
      def self.included into
        into.extend ClassMethods
      end

      module ClassMethods
        def defaults defaults = {}
          singleton_class.send :attr_accessor, *defaults.keys
          defaults.each_pair do |k,v|
            send "#{k}=", v
          end
        end
      end
    end
  end
end
