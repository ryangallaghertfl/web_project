require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
    
    #GET /
    # Root path (homepage, index page)
    get '/' do
        return "Hello World!"
      end
  # This allows the app code to refresh
  # without having to restart the server.
#   configure :development do
#     register Sinatra::Reloader
#   end
get '/hello' do
    name = params[:name]

    return "Hello #{name}"
end

get '/posts' do
    name = params[:name]
    age = params[:age]
    p name
    p age
# GET http://localhost:9292/posts?name=Ryan&age=40

    return "Hello #{name}, you are #{age} years old"
end

post '/posts' do

    title = params[:title]
    return "Post was created with title: #{title}"
end

post '/submit' do
    name = params[:name]
    message = params[:message]

    return "Thanks #{name}, you sent this message: \"" + message + "\""

end

end
# Incoming request: GET /todos/1
# routes:
# GET / => execute some code
# GET /todos/1 => execute some other code (this matches!!!)
# POST /todos => execute other code

# Incoming request: GET /posts
# routes:
# GET / => execute some code
# GET /todos/1 => execute some other code 
# POST /todos => execute other code
# this would return 404 not found as nothing matches!!!