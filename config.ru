run lambda { |env|
  if env['REQUEST_PATH'] == '/'
    env['REQUEST_PATH'] = '/index.html'
  end

  code = 200
  headers = {
    'Content-Type'  => 'text/html',
    'Cache-Control' => 'public, max-age=86400'
  }
  res = File.open File.join('public', env['REQUEST_PATH']), File::RDONLY

  [code, headers, res]
}
