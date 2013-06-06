require 'peek/views/view'
require 'rblineprof'

module Peek
  module Views
    class Rblineprof < View
      class << self
        attr_accessor :current
      end

      attr_accessor :profile

      def initialize(*args)
        super
        self.class.current = self
      end

      def results
        {}
      end

      def context
        {
          :profile => self.profile
        }
      end
    end
  end
end
