require 'sinatra/base'
require 'mustache/sinatra'
require 'rdiscount'
require 'json'
require 'app'

use Rack::ShowExceptions
run App.new
