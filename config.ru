# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

set :app_file, __FILE__

# Sass
require 'sass/plugin/rack'
use Sass::Plugin::Rack

run Sinatra::Application
