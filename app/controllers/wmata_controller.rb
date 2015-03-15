class WmataController < ApplicationController
	def show
		response = HTTParty.get("https://api.wmata.com/Incidents.svc/json/Incidents?api_key=7b5b6c51dc614a6c98452406fdb838f4")
  		@results = JSON.parse(response.body)
	end
end