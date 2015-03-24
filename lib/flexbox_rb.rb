require "flexbox_rb/version"

module FlexboxRb
  class Engine < ::Rails::Engine
  	initializer "my_gem.include_view_helpers" do |app|
      ActiveSupport.on_load :action_view do
        include MyFlexBoxHelper
      end
    end
  end
end
