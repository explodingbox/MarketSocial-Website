require 'sinatra/base'
require 'mustache/sinatra'
require 'rdiscount'
require 'json'
require 'app'

config = YAML::load(File.open('config.yml'))


use Rack::ShowExceptions
run App.new
