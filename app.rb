require 'sinatra'

# get '/test' do
# 	'ww'
# end


get '/random-cat' do 
	@name = %w(Amigo Viking Oscar).sample
	erb(:index)
end

get '/named-cat' do	
	p params
	@name = params[:name]
	erb(:index)
end
