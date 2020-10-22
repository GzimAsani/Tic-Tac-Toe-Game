class Begin
  def flip_the_coin
    toss = rand(2)
    if toss == 1
      puts 'It flipped heads'
      true
    else
      puts 'It flipped tail'
      false
    end
  end
end
