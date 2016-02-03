require 'sinatra'

# get '/named-cat' do	
# 	p params
# 	@name = params[:name]
# 	erb(:index)
# end

get '/cat-form' do
	erb(:cat_form)
end

post '/named-cat' do
	p params
	@name = params[:name]
	erb(:index)
end
