require 'json'
require 'open-uri'
require "faker"

# Fetch data from the API
url = 'http://api.citybik.es/v2/networks'
response = URI.open(url)
data = JSON.parse(response.read)

# Seed the data
data['networks'].each do |network|
  country_name = network['location']['country']
  city_bike_name = network['name']
  company = network['company'].first

  # Find or create the country
  country = Country.find_or_create_by(name: country_name)

  # Create the city bike under the country
  country.city_bikes.create(
    name: city_bike_name,
    company: company,
    city: network['location']['city']
  )
end
