class CityWeathersController < ApplicationController

    def create
        city_weather = CityWeather.create(country: params[:country], name: params[:name], temperature: params[:temperature], weather_description: params[:weather_description],wind_speed: params[:wind_speed],wind_degree: params[:wind_degree])
        if city_weather.save
           render json: city_weather
        else
            render json: {error:"Error of creating city_weather!"}
        end
    end

    def last_10_searches 
        searches = CityWeather.arrange_desc.first(11)
        render json: searches
    end
end
