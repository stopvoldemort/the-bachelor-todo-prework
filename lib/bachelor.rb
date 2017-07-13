require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner_name = contestant["name"]
    end
  end
  winner_first_name = winner_name.split(" ")[0]
end


def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        name = contestant["name"]
      end
    end
  end
  name
end


def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      count+=1 if contestant["hometown"] == hometown
    end
  end
  count
end


def get_occupation(data, hometown)
  occupation = ""
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        occupation = contestant["occupation"]
        return occupation
      end
    end
  end
end


def get_average_age_for_season(data, season)
  total_years = 0
  num_contestants = 0
  data[season].each do |contestant|
    total_years = total_years + contestant["age"].to_f
    num_contestants+=1
  end
  (total_years / num_contestants).round
end
