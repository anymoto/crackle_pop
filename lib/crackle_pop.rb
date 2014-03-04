require "crackle_pop/version"

module CracklePop
  def get_list
    list = []
    100.times { |num| list << cracklepop(num+1) }
    list
  end

  def cracklepop(number)
    case
    when number % 15 == 0 then "CracklePop"
    when number % 3 == 0 then "Crackle"
    when number % 5 == 0 then "Pop"
    else number
    end
  end
end
