require "sinatra"

get'/' do
    unless params[:nombre]
        "Hello"    
    else
        "Hola #{params[:nombre]}"
    end

    @nombre="ander"
    erb: index

end

get '/:nombre' do
"hello!  #{params[:nombre]}"
end

post'/nuevo/objeto' do
  "I'm create a new object with verbo #{params[:verbo]}"
end


