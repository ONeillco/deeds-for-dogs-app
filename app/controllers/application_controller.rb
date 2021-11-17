require './config/environment'
require 'json'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :default_content_type, 'application/json'
  end



  
  # Add your routes here
  get "/" do
    "hello World!"
    # { message: "Good luck with your project!" }.to_json
  end

end




# class ApplicationController < Sinatra::Base
#   set :default_content_type, 'application/json'
  
#   # Add your routes here
#   get "/" do
#     { message: "Good luck with your project!" }.to_json
#   end

# end