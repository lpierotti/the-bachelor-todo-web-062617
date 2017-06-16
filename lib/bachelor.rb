require "pry"
def get_first_name_of_season_winner(data, season)
  data.each do |seasons, array|
    if season == seasons
      array.each do |person|
        person.each do |key, value|
          #  binding.pry
          if key == "status"
            if value == "Winner"
              return person["name"].split(" ")[0]
            end
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, array|
    array.each do |person|
      person.each do |key, value|
        if key == "occupation"
          if value == occupation
            return person["name"]
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |person|
      person.each do |key, value|
        if key == "hometown"
          if value == hometown
            count +=1
          end
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |person|
      person.each do |key, value|
        if key == "hometown"
          if value == hometown
            return person["occupation"]
          end
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = 0
  numberOfContestants = 0
  data.each do |seasons, array|
    if seasons == season
      array.each do |person|
        person.each do |key, value|
          if key == "age"
            ages += value.to_f
            numberOfContestants += 1
            #binding.pry
          end
        end
      end
    end
  end
  (ages / numberOfContestants.to_f).round
end
