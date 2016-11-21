require('sinatra')
require('sinatra/reloader')
require('./lib/transcribe')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/input') do

  @option = params.fetch('option')
  @result = params.fetch('sequence').transcribe(@option)
  erb(:index)
end
