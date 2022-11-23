def range(min, max)
    return [] if max <= min
    range(min, max-1) + [max-1]  
end

p "range"
p range(1,5)
p range(2,15)

def range_itr(min, max)
    (min...max).map {|ele| ele}
end

p "range_itr"
p range_itr(1,5)
p range_itr(2,15)

def exponentiation1(base, power)
    return base if power == 1
    return 1 if power == 0
    return 0 if base == 0
    base * exponentiation1(base, power-1)
end

p "exponentiation1"
p exponentiation1(2, 3)
p exponentiation1(2, 7)