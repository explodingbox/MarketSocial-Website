class App < Sinatra::Base
  register Mustache::Sinatra
  require 'views/layout'
  
  set :mustache, {
    :views => 'views/',
    :templates => 'templates'
  }
  
  set :public, File.dirname(__FILE__) + '/public'
  
  get '/' do
    mustache :index
  end
  
end
