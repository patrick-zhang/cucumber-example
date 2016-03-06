require 'sinatra'

get '/' do
  '<h1>Home page</h1>'
end

get '/login' do
  erb :login
end

get '/overview' do
  erb :overview
end

post '/login' do
  if(params[:email] == 'admin' && params[:password] == "123")
    erb :overview
  else
    erb :error
  end
  
end