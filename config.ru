require 'rubygems'
require 'bundler'

Bundler.require

require './src/web.rb'

run Sinatra::Application
