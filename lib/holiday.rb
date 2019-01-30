require 'pry'

# holiday_hash :
#   {
#     :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }
  
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  holiday_hash.each do |name, value_hash|
    value_hash.each do |holiday, supply|
      supply << "Balloons"
      end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
 holiday_hash.each do |holiday, supply_hash|
      if holiday == :winter
        supply_hash.each do |events, items|
        items
      end
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, supply_hash|
    season = season.to_s.capitalize!
    "#{season}"
        supply_hash.each do |events, supplies|
          array = events.to_s.split(" ")
           array.each do |word|
             word.capitalize!
                array = word.join
          binding.pry
              puts  "#{event} : #{supplies}"
        end
      end
  end
end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, supply_hash|
    supply_hash.collect do |events, items|
      if  items == :BBQ
          events
      end    
    end
  end
end







