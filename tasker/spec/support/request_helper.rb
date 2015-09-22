module Requests
	module JSONHelpers
		def json
			@json ||= MultiJson.load(response.body, symbolize_keys: true)
		end
	end
end