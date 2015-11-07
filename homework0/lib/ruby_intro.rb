# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    if arr.length != 0 then arr.inject(0) { |sum, elem| sum + elem }
    else 0 end 
end

def max_2_sum arr
    if arr.length == 1 then arr[0]
    elsif arr.length == 0 then 0
    else arr.delete_at(arr.index(arr.max)) + arr.delete_at(arr.index(arr.max))
    end
end

def sum_to_n? arr, n
    (0..arr.length-1).each do |i|
        (i+1..arr.length-1).each do |j|
            return true if arr[i] + arr[j] == n
        end
    end
    return false
end

# Part 2

def hello(name)
    "Hello, " + name.to_s
end

def starts_with_consonant? s
    "bcdfghjklmnpqrstvxz".each_char{ |letter|
        return true if s[0] == letter or s[0] == letter.upcase}
    return false
end

def binary_multiple_of_4? s
    return false if s.empty?
    s.each_char{ |c|
        return false if c != "1" and c != "0"}
    return true if s.to_i(2) % 4 == 0
    false # false in any other case
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price

    def initialize isbn, price
        if isbn.empty? then raise ArgumentError end
        @isbn = isbn
        if price <= 0 then raise ArgumentError end
        @price = price
    end

    def price_as_string
        "$#{format("%.2f", @price)}"
    end
end
