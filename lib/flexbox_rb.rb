require "flexbox_rb/version"
require "flexbox_rb/my_flexbox_helper"
require 'active_support/dependencies'
module FlexboxRb
  ActiveSupport.on_load :action_view do
    include MyFlexboxHelper
  end
end
