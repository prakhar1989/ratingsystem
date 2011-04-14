['rubygems', 'sinatra', 'slim', 'CSV'].each{|r| require r}

set :slim, :pretty => true


mystring = "12,35,27,21,78"

get '/' do
  slim :index
end

post '/rate' do
    myLine = File.open('stored_ratings.txt','r').readline
    myArray = myLine.split(/,/)
    index = params[:rating].to_i-1
    myArray[index] = (myArray[index].to_i + 1).to_s
    myLine = myArray.join(',')
    File.open('stored_ratings.txt','w') do |f2|
      f2.puts myLine
    end  
    
    myLine
end

