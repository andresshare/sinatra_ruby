require "sinatra"

get'/' do
    unless params[:nombre]
        "Hello"    
    else
        "Hola #{params[:nombre]}"
    end
<<-HTML
<h1>formulario</h1>
<form action="nuevo/objeto" method="post">
<input type="text" name="verbo"></input>
<input type="submit" value=" valid * POST"> </input>   

</form>

HTML

end

get '/:nombre' do
"hello!  #{params[:nombre]}"
end

post'/nuevo/objeto' do
  "I'm create a new object with verbo #{params[:verbo]}"
end


