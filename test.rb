require 'pry'


def case_id    #print X O or nothing according to case value
  @cases_array = []
  @cases_array.each do |v|
    if v.values.to_s == "[1]" #if player 1 play, diplay X
      @cases_array << "X"
    elsif v.values.to_s == "[2]" #if player 2 play, diplay O
      @cases_array << "O"
    else
      @cases_array << " " #if value = 0, blank space
    end
    end
    return @cases_array
  end

puts @cases_array


binding.pry