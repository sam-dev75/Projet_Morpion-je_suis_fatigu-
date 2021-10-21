require 'pry'

class BoardCase
  attr_accessor  :cases_array , :case_id


 def initialize #create 9 cases initialize position 0 to 8 and values to x
    @cases_array = []
    9.times do |i|
      @cases_array << {i => "X"}
    end
    return @cases_array
 end

 def case_id    #print X O or nothing according to case value
  case_id = @cases_array
  @cases_array.each do |v|
    if v.values.to_s == "[1]" #if player 1 play, diplay X
      @cases_array << "X"
    elsif v.values.to_s == "[2]" #if player 2 play, diplay O
      @cases_array << "O"
    else
      @cases_array << " " #if value = 0, blank space
    end
    end
    return case_id
  end
end

binding.pry