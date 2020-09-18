# Enter your object-oriented solution here!
class LargestPrimeFactor
    attr_accessor :limit

    def initialize(limit)
        @limit = limit
    end

    def number
        n = @limit
        test = 1
        while test % 2 == 0 do
            test = n / 2
        end
        if test == 2
            return 2
        end

        i = 3
        while i < ((n**0.5).round()) do
            while n % i == 0 do
                test = i
                n = n / i 
            end
            i = i + 2
        end
        if n > 2
            test = n 
        end
        return test
    end

end