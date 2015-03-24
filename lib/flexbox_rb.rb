require "flexbox_rb/version"
require "flexbox_rb/my_flexbox_helper"

module FlexboxRb
  class Engine < ::Rails::Engine
  	initializer "my_gem.include_view_helpers" do |app|
      ActiveSupport.on_load :action_view do
        include MyFlexboxHelper
      end
    end
  end
end
