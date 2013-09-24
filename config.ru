require 'statsmix'

StatsMix.api_key = ENV['STATS_MIX_API_KEY']

class Redirector
  def initialize app
    @app = app
  end

  def call env
    req = Rack::Request.new(env)
    StatsMix.track('hit', 1, url: req.url) if StatsMix.api_key
    req.path_info = '/index.html' if req.path_info == '/'
    @app.call env
  end
end

use Redirector
use Rack::Static, :urls => ['/'], :root => 'public'

run lambda { |env| [404, {'Content-Type' => 'text/plain'}, []] }
