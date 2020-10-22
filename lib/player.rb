class Player
    attr_reader :name, :symbol
    attr_accessor :current


    def initialize(name, symbol)
        @name = name
        @symbol = symbol
        @current = nil
    end

    def who_is_first
        if @current == true
            puts "#{self.name} starts first"
        end
    end
end