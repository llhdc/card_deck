class Card
  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end

  def greater_than?(card)
    value(card)
    if @rank > card[@rank]
      true
    end
  end

  def value(rank)
    if rank == :A
      rank = 1

    elsif rank == :J
      rank = 11

    elsif rank == :Q
      rank = 12

    elsif rank == :K
      rank = 13

    else
      rank = self[@rank]
    end
  end

end
