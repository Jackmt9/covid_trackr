require 'rest-client'

# destroying all previous data
Country.destroy_all
User.destroy_all

# populating Country model with external data
countries_fetch = RestClient.get "https://covid19-api.org/api/countries"
countries = JSON.parse(countries_fetch)

countries.each do |country|
    Country.create(
        name: country["name"],
        code: country["alpha2"],
        latitude: country["latitude"],
        longitude: country["longitude"]
    )
end

# generating User data
user1 = User.create(
    first_name: "John",
    last_name: "Doe",
    username: "user1",
    email: "email@gmail.com",
    subscribed?: true,
    password: "chocolate"
)

# generate Bookmarks for user
Bookmark.create(
    user: user1,
    country_id: 1
)