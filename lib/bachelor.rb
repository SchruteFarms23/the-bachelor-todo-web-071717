require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |k1,v1|
  	if v1 = "Winner"
  		return k1["name"].split.first
  	end
  end
end

def get_contestant_name(data, occupation)
	data.each do |k1,v1| #season number and contestants
		v1.each do |k2,v2| #key and values of each contestant
			if k2["occupation"] == occupation
				return k2["name"]
			end
		end
	end
			
  # code here
end

def count_contestants_by_hometown(data, hometown)
	count = 0
	data.each do |season,contestants|
		contestants.each do |k,v|
			if k["hometown"] == hometown
				count += 1
			end
		end
	end
  count
end

def get_occupation(data, hometown)
	data.each do |season,contestants|
		contestants.each do |k,v| 
			if k["hometown"] == hometown
				return k["occupation"]
			end
		end
	end
  # code here
end


def get_average_age_for_season(data, season)
	avg_age = []
	data[season].each do |k,v|
		avg_age << k["age"].to_f
end


((avg_age.reduce(:+)) / avg_age.length).round
  # code here
end
