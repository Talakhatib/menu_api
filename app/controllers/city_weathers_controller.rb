class CityWeathersController < ApplicationController

    def create
        city_weather = CityWeather.create(country: params[:country], name: params[:name], temperature: params[:temperature].to_i, weather_description: params[:weather_description],wind_speed: params[:wind_speed].to_i,wind_degree: params[:wind_degree].to_i)
        if city_weather.save
           render json: city_weather
        else
            render json: {error:"Error of creating city_weather!"}
        end
    end

    def searches 
        searches = CityWeather.arrange_desc.first(params[:number_of_searches].to_i) # i did params because i need in the search method 10 seraches and in the api_data method 11 searches
        render json: searches
    end
end
