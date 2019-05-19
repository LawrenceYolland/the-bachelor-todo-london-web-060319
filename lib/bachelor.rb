require "pry"


def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestants|
    if contestants["status"].downcase == "winner"
      return contestants["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |seasons, contestants|
    contestants.each do |contestant_info|
      # binding.pry
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end
    end
  end
end
# get_contestant_name

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_counter = 0
  data.each do |seasons, contestants|
    contestants.each do |contestant_info|
      # binding.pry
      if contestant_info["hometown"] == hometown
        hometown_counter += 1
      end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  # code here
  occupation_list = []
  data.each do |seasons, contestants|
    contestants.each do |contestant_info|
      # binding.pry
      if contestant_info["hometown"] == hometown
        occupation_list << contestant_info["occupation"]
      end
    end
  end
  occupation_list[0]
end

def get_average_age_for_season(data, season)
  # code here
  age_list = []
  data[season].each do |contestants|
    age_list << contestants["age"].to_f
  end
  (age_list.sum/age_list.length).round(0)
end
