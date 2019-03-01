ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
#Removed because it gives errors and i don't understand it
#require 'bootsnap/setup' # Speed up boot time by caching expensive operations.
