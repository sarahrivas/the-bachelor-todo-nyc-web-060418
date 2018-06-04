require 'pry'
def get_first_name_of_season_winner(data, season)
  winner = nil
  data[season].each do |person|
    if person["status"] == "Winner"
     winner = person["name"]
    end
  end
  winner.split(" ")[0]
end  

def get_contestant_name(data, occupation)
  matching_person = nil
  data.each do |season_name, season_array|
    season_array.each do |person|
      if person["occupation"] == occupation
        matching_person = person["name"]
      end
    end 
  end
  matching_person
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season_name, season_array|
    season_array.each do |person|
      if person["hometown"] == hometown
        hometown_count += 1
      end
    end 
  end
  hometown_count
end

def get_occupation(data, hometown)
  matching_person = nil
  data.each do |season_name, season_array|
    season_array.each do |person|
      if person["hometown"] == hometown
        matching_person = person
        break
      end
    end 
  end
  matching_person["occupation"]
end

def get_average_age_for_season(data, season)
  total_ages = 0
  total_people = 0
  data[season].each do |person|
    total_people += 1
    total_ages += person["age"].to_f
  end
  (total_ages/total_people).round
end  