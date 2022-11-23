def range(min, max)
    return [] if max <= min
    range(min, max-1) + [max-1]  
end

# p "range"
# p range(1,5)
# p range(2,15)

def range_itr(min, max)
    (min...max).map {|ele| ele}
end

# p "range_itr"
# p range_itr(1,5)
# p range_itr(2,15)

def exponentiation1(base, power)
    return base if power == 1
    return 1 if power == 0
    return 0 if base == 0
    base * exponentiation1(base, power-1)
end

# p "exponentiation1"
# p exponentiation1(2, 3)
# p exponentiation1(2, 7)


def exponentiation2(base, power)
    return base if power == 1 
    return (exponentiation2(base, power/2) ** 2) * base if power.even?
    return (exponentiation2(base, (power-1)/2) ** 2) * base if power.odd?
end 

# p "exponentiation2"
# p exponentiation2(2, 3)
# p exponentiation2(2, 7)


def deep_dup(arr)
    new_array = []
    arr.each do |ele| 
        if ele.is_a?(Array)
            if ele.length == 1
                new_array.push(ele)
            else
               new_array.push(deep_dup(ele))
            end 
        else
            new_array.push(ele)
        end
    end
    new_array
end

# array = [1, [2], [3, [4]]]
# p deep_dup(array)

def fibonacci(n)
    return 0 if n <= 1
    return 1 if n == 2
    
end