require 'peek/views/view'
require 'rblineprof'

module Peek
  module Views
    class Rblineprof < View
      class << self
        attr_accessor :profile
      end

      def results
        {}
      end

      def context
        {:profile => self.class.profile}
      end

      def setup_subscribers
        # Reset each counter when a new request starts
        before_request do
          ::Peek::Views::Rblineprof.profile = nil
        end
      end
    end
  end
end
