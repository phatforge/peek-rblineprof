require 'peek/rblineprof/controller_helpers'

module Peek
  module Rblineprof
    class Railtie < ::Rails::Engine
      initializer 'peek.rblineprof.include_controller_helpers' do
        config.to_prepare do
          ApplicationController.send(:include, Peek::Rblineprof::ControllerHelpers)
        end
      end
    end
  end
end
