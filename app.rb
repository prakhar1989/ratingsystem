['rubygems', 'sinatra', 'slim'].each{|r| require r}

set :slim, :pretty => true

get '/' do
  slim :index
end

get '/rate' do
  "registered"
end
