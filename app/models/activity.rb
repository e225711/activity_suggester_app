# app/models/activity.rb

class Activity
    attr_accessor :key, :title, :type, :participants, :cost

    def initialize(key, title, type, participants, cost)
      @key = key
      @title = title
      @type = type
      @participants = participants
      @cost = cost
    end
  end
