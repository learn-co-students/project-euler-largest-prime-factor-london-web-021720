# Enter your procedural solution here!
# const problemThree = (num) => {
#     let n = num
#     let test = 1
#     while (test % 2 === 0) {
#         test = n / 2
#     }
#     if (test === 2) {
#         return 2
#     }

#     for (let index = 3; index < (Math.round(n**0.5) + 1); index = index + 2) {
#         while( n % index === 0) {
#             test = index
#             n = n / index
#         }
#     }
#     if (n > 2) {
#         test = n
#     }
#     return test

def largest_prime_factor(n)
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