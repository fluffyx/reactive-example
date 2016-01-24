# app/react/components.rb
require 'opal'
require 'reactive-ruby'
if React::IsomorphicHelpers.on_opal_client?
  require 'opal-jquery'
  require 'browser'
  require 'browser/interval'
  require 'browser/delay'
  # add any requires that can ONLY run on client here
end
require 'reactive-router'
require 'reactive-record'
require 'models'
require_tree './components'
