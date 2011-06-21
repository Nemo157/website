guard 'sass', :output => 'public' do
  watch %r{^src/.+\.s[ac]ss}
end

guard 'coffeescript',
    :input =>  'src',
    :output => 'public'

guard 'haml', :output => 'public' do
  watch %r{^src/.+(\.html\.haml)}
end

guard 'livereload' do
  watch %r{public/.+\.(css|js|html)}
end
