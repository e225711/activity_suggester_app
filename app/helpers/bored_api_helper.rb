require 'net/http'
require 'uri'
require 'json'

module BoredApiHelper
  BASE_URL = 'https://bored-api.appbrewery.com/'

  def self.get_random_activity
    uri = URI(BASE_URL + 'random')
    JSON.parse(Net::HTTP.get(uri))
  end

  def self.filter_activities(type)
    uri = URI(BASE_URL + 'filter?type=' + type)
    response = Net::HTTP.get(uri)
    activities = JSON.parse(response)
    random_activity = activities.sample
    random_activity.to_json
  end
end
