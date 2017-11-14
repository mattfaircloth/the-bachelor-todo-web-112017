#require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |number, attributes|
    attributes.each do |description|
      description.each do |characteristic, value|
        if number == season && value == "Winner"
          return description["name"].split(" ").first
        end
    end
   end
  end
 end

def get_contestant_name(data, occupation)
  data.each do |number, attributes|
    attributes.each do |description|
      description.each do |characteristic, value|
        if value == occupation
          return description["name"]
        end
    end
   end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |number, attributes|
    attributes.each do |description|
      description.each do |characteristic, value|
        if value == hometown
          counter += 1
        end
    end
   end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
