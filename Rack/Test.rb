require 'rack'
require 'rack/server'

# class HelloWorld
# 	def response
# 		[200, {}, 'Hello Rebecca']
# 	end
# end

# class HelloWorldApp
# 	def self.call(env)
# 		[200, {}, "Hello Rebecca. You said: #{env['QUERY_STRING']}"]
# 	end
# end



class HelloWorldApp
	def self.call(env)
		request = Rack::Request.new env
		request.params # contains the union of GET and POST params
		request.xhr? #requested with AJAX
		require.body #the incoming request IO stream

		if request.params['message']
			[200, {}, request.params['message']]
		else
			[200, {}, 'Say something to me!']
		end
	end
end

Rack::Server.start :app => HelloWorldApp


