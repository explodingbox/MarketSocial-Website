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
  
  get '/about' do
    mustache :index
  end
  
  get '/apps/blue' do
    mustache :blue_about
  end
  
  
  get '/contact' do
    mustache :contact
  end
  
end
