class Deck
    attr_accessor :cards
    def initialize
        @rank_array = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @suit_array = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @cards = []
        @rank_array.each do |rank|
            @suit_array.each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        @cards.delete_at(rand(@cards.length))
    end

end

class Card
    attr_accessor :rank, :suit

    def initialize suit, rank
        @rank = rank
        @suit = suit
    end
end
