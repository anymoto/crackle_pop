require "crackle_pop/version"

module CracklePop
  def run
    100.times do |num|
      puts cracklepop num+1
    end
  end

  def cracklepop(number)
    case
    when number % 3 == 0 then "Crackle"
    when number % 5 == 0 then "Pop"
    when number % 15 == 0 then "CracklePop"
    else number
    end
  end
end
