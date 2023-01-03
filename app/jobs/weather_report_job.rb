class WeatherReportJob < ApplicationJob
  queue_as :default

  def perform(*args)
    user = User.last 
    WeatherReportMailer.daily_weather_report(user).deliver_now
  end
end
