require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter].each {|key, supplies| supplies << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[:season][:holiday_name] << supply_array

holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(supplies_hash)
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_hash.map do 
end
